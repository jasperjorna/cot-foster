<?php
/* ====================
[BEGIN_COT_THEME]
Name=Foster v1.0
Schemes=default:Default
[END_COT_THEME]
==================== */

/**
 * Foster
 *
 * @package Cotonti
 * @version 0.9.x
 * @author Twiebie
 * @copyright Copyright (c) 2013 Cotonti Team, Twiebie
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');

$R['admin_code_missing']      = '<span class="label label-important">'.$L['adm_missing'].'</span>';
$R['admin_code_notinstalled'] = '<span class="label">'.$L['adm_notinstalled'].'</span>';
$R['admin_code_partrunning']  = '<span class="label label-success">'.$L['adm_partrunning'].'</span>';
$R['admin_code_paused']       = '<span class="label label-warning">'.$L['adm_paused'].'</span>';
$R['admin_code_present']      = '<span class="label label-info">'.$L['adm_present'].'</span>';
$R['admin_code_running']      = '<span class="label label-success">'.$L['adm_running'].'</span>';

$R['admin_icon_admin']        = '<img src="system/admin/img/admin.png">';
$R['admin_icon_allow']        = '<img src="system/admin/img/allow.png">';
$R['admin_icon_allow_locked'] = '<img src="system/admin/img/allow_locked.png">';

$R['admin_icon_auth_1'] = '<img src="system/admin/img/auth_1.png" alt="1" title="'.$L['Custom'].' 1">';
$R['admin_icon_auth_2'] = '<img src="system/admin/img/auth_2.png" alt="2" title="'.$L['Custom'].' 2">';
$R['admin_icon_auth_3'] = '<img src="system/admin/img/auth_3.png" alt="3" title="'.$L['Custom'].' 3">';
$R['admin_icon_auth_4'] = '<img src="system/admin/img/auth_4.png" alt="4" title="'.$L['Custom'].' 4">';
$R['admin_icon_auth_5'] = '<img src="system/admin/img/auth_5.png" alt="5" title="'.$L['Custom'].' 5">';
$R['admin_icon_auth_a'] = '<img src="system/admin/img/auth_a.png" alt="A" title="'.$L['Admin'].'">';
$R['admin_icon_auth_r'] = '<img src="system/admin/img/auth_r.png" alt="R" title="'.$L['Read'].'">';
$R['admin_icon_auth_w'] = '<img src="system/admin/img/auth_w.png" alt="W" title="'.$L['Write'].'">';

$R['link_pagenav_current'] = '<li class="active"><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_first']   = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_first'].'</a></li>';
$R['link_pagenav_gap']     = '<li>...</li>';
$R['link_pagenav_last']    = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_last'].'</a></li>';
$R['link_pagenav_main']    = '<li><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_next']    = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_next'].'</a></li>';
$R['link_pagenav_prev']    = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_prev'].'</a></li>';