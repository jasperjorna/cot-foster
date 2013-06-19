<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.AllPFS}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
				<table class="table">
					<thead>
						<th>{PHP.L.User}</th>
						<th>{PHP.L.Files}</th>
						<th>{PHP.L.Edit}</th>
					</thead>
					<!-- BEGIN: ALLPFS_ROW -->
					<tr>
						<td>{ADMIN_ALLPFS_ROW_USER}</td>
				 		<td>{ADMIN_ALLPFS_ROW_COUNT}</td>
						<td><a title="{PHP.L.Edit}" class="btn btn-small" href="{ADMIN_ALLPFS_ROW_URL}">{PHP.R.icon_prefs}</a></td>
					</tr>
					<!-- END: ALLPFS_ROW -->
				</table>
				<div class="pagination"><ul>{ADMIN_ALLPFS_PAGINATION_PREV}{ADMIN_ALLPFS_PAGNAV}{ADMIN_ALLPFS_PAGINATION_NEXT}</ul></div>
        <span>{PHP.L.Total}: {ADMIN_ALLPFS_TOTALITEMS}, {PHP.L.comm_on_page}: {ADMIN_ALLPFS_ON_PAGE}</span>
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->