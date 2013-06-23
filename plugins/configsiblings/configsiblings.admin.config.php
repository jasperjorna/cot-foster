<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.config.edit.tags
[END_COT_EXT]
==================== */

defined('COT_CODE') or die('Wrong URL');

$siblings = $db->query("
	SELECT DISTINCT config_cat, pl_title FROM $db_config
	LEFT JOIN $db_plugins ON config_cat = pl_code
	WHERE config_owner = ? AND config_type != ?
	ORDER BY config_cat ASC
	", array($o, COT_CONFIG_TYPE_HIDDEN))->fetchAll();

if ($siblings)
{
	foreach ($siblings as $sibling)
	{
        switch ($o)
        {
            case 'core';
                $name = $L["core_{$sibling['config_cat']}"];
                $icofile = $cfg['system_dir'] . '/admin/img/cfg_' . $sibling['config_cat'] . '.png';
                $sibling_ext['icon'] = (file_exists($icofile)) ? $icofile : '';
                break;
            case 'module':
				$name = $sibling['pl_title'];
				$sibling_ext = cot_get_extensionparams($sibling['config_cat'], true);
                break;
            case 'plug':
				$name = $sibling['pl_title'];
				$sibling_ext = cot_get_extensionparams($sibling['config_cat'], false);
                break;
        }
		$t->assign(array(
			'ADMIN_CONFIG_SIBLING_URL'    => cot_url('admin', "m=config&n=edit&o=$o&p={$sibling['config_cat']}"),
			'ADMIN_CONFIG_SIBLING_NAME'   => $name,
			'ADMIN_CONFIG_SIBLINGS_ICO'   => $sibling_ext['icon'],
			'ADMIN_CONFIG_SIBLING_ACTIVE' => ($sibling['config_cat'] == $p)
		));
		$t->parse('MAIN.EDIT.ADMIN_CONFIG_SIBLINGS.ADMIN_CONFIG_SIBLINGS_ROW');
	}
	$owners = array('core' => $L['Core'], 'module' => $L['Modules'], 'plug' => $L['Plugins']);
	$t->assign('ADMIN_CONFIG_OWNER', $owners[$o]);
	$t->parse('MAIN.EDIT.ADMIN_CONFIG_SIBLINGS');
}
