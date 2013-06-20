<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.comments_comments}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
				<a title="{PHP.L.Configuration}" href="{ADMIN_COMMENTS_CONFIG_URL}" class="btn btn-small"><i class="icon-wrench iconspaced"></i>{PHP.L.Configuration}</a>
				<h3>{PHP.L.viewdeleteentries}:</h3>
				<table class="table table-striped footable">
					<thead>
						<th data-hide="phone,tablet">#</th>
						<th data-hide="phone,tablet">{PHP.L.adm_area}</th>
						<th data-hide="phone,tablet">{PHP.L.Code}</th>
						<th data-class="expand">{PHP.L.Author}</th>
						<th data-hide="phone">{PHP.L.Date}</th>
						<th data-hide="phone">{PHP.L.comments_comment}</th>
						<th data-hide="phone" class="alignright">{PHP.L.Action}</th>
					</thead>
					<!-- BEGIN: ADMIN_COMMENTS_ROW -->
					<tr>
						<td>{ADMIN_COMMENTS_ITEM_ID}</td>
						<td>{ADMIN_COMMENTS_AREA}</td>
						<td>{ADMIN_COMMENTS_CODE}</td>
						<td>{ADMIN_COMMENTS_AUTHOR}</td>
						<td>{ADMIN_COMMENTS_DATE}</td>
						<td>{ADMIN_COMMENTS_TEXT}</td>
						<td class="alignright">
              <br class="visible-phone">
							<a title="{PHP.L.Open}" href="{ADMIN_COMMENTS_URL}" class="btn btn-small">{PHP.L.Open}</a>
							<a title="{PHP.L.Delete}" href="{ADMIN_COMMENTS_ITEM_DEL_URL}" class="btn btn-small btn-danger"><i class="icon-remove hidden-desktop"></i><span class="visible-desktop">{PHP.L.Delete}</span></a>
						</td>
					</tr>
					<!-- END: ADMIN_COMMENTS_ROW -->
				</table>
				<div class="pagination"><ul>{ADMIN_COMMENTS_PAGINATION_PREV}{ADMIN_COMMENTS_PAGNAV}{ADMIN_COMMENTS_PAGINATION_NEXT}</ul></div>
        <span>{PHP.L.Total}: {ADMIN_COMMENTS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_COMMENTS_COUNTER_ROW}</span>
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->