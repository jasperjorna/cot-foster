<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.Trashcan}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
				<a title="{PHP.L.Configuration}" href="{ADMIN_TRASHCAN_CONF_URL}" class="btn btn-small"><i class="icon-wrench iconspaced"></i> {PHP.L.Configuration}</a>
				<a title="{PHP.L.Wipeall}" href="{ADMIN_TRASHCAN_WIPEALL_URL}" class="btn btn-small"><i class="icon-trash iconspaced"></i>{PHP.L.Wipeall}</a>
				<table class="table table-striped footable">
					<thead>
						<th data-hide="phone">{PHP.L.Type}</th>
						<th data-hide="phone">{PHP.L.Date}</th>
						<th data-class="expand">{PHP.L.Title}</th>
						<th data-hide="phone">{PHP.L.adm_setby}</th>
						<th data-hide="phone">{PHP.L.Action}</th>
					</thead>
					<!-- BEGIN: TRASHCAN_ROW -->
					<tr>
						<td>{ADMIN_TRASHCAN_TYPESTR_ICON}</td>
						<td>{ADMIN_TRASHCAN_DATE}</td>
						<td><a href="{ADMIN_TRASHCAN_ROW_INFO_URL}">{ADMIN_TRASHCAN_TITLE}</a></td>
						<td>{ADMIN_TRASHCAN_TRASHEDBY}</td>
						<td>
							<br class="visible-phone">
							<!-- IF {ADMIN_TRASHCAN_ROW_RESTORE_ENABLED} --><a title="{PHP.L.Restore}" href="{ADMIN_TRASHCAN_ROW_RESTORE_URL}" class="btn btn-small btn-success"><i class="icon-ok iconspaced"></i>{PHP.L.Restore}</a><!-- ENDIF -->
							<a title="{PHP.L.Wipe}" href="{ADMIN_TRASHCAN_ROW_WIPE_URL}" class="btn btn-small"><i class="icon-trash iconspaced"></i>{PHP.L.Wipe}</a>
						</td>
					</tr>
					<!-- END: TRASHCAN_ROW -->
				</table>
				<div class="pagination"><ul>{ADMIN_TRASHCAN_PAGINATION_PREV}{ADMIN_TRASHCAN_PAGNAV}{ADMIN_TRASHCAN_PAGINATION_NEXT}</ul></div>
        <span>{PHP.L.Total}: {ADMIN_TRASHCAN_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_TRASHCAN_COUNTER_ROW}</span>
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->