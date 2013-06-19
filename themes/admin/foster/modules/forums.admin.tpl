<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.Forums}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
				<a title="{PHP.L.Configuration}" href="{ADMIN_FORUMS_URL_CONFIG}" class="btn btn-small"><i class="icon-wrench iconspaced"></i>{PHP.L.Configuration}</a>
				<a href="{ADMIN_FORUMS_URL_STRUCTURE}" class="btn btn-small"><i class="icon-folder-open iconspaced"></i>{PHP.L.Categories}</a>
				<div class="row-fluid">
					<div class="span2">
						<h3>{PHP.L.Statistics}</h3>
						<table class="table">
							<tr>
								<td>{PHP.L.forums_topics}:</td>
								<td class="alignright">{ADMIN_FORUMS_TOTALTOPICS}</td>
							</tr>
							<tr>
								<td>{PHP.L.forums_posts}:</td>
								<td class="alignright">{ADMIN_FORUMS_TOTALPOSTS}</td>
							</tr>
							<tr>
								<td>{PHP.L.Views}:</td>
								<td class="alignright">{ADMIN_FORUMS_TOTALVIEWS}</td>
							</tr>
						</table>
					</div><!-- /.span6 -->
					<div class="span10">
						<h3>{PHP.L.home_newtopics}</h3>
						<table class="table">
							<thead>
								<th>#</th>
								<th>{PHP.L.Title}</th>
								<th class="alignright">{PHP.L.Posts}</th>
							</thead>
							<!-- BEGIN: ADMIN_FORUMS_ROW_USER -->
							<tr>
								<td>{ADMIN_FORUMS_ROW_II}.</td>
								<td>{ADMIN_FORUMS_ROW_FORUMS} {PHP.cfg.separator} <a href="{ADMIN_FORUMS_ROW_URL}">{ADMIN_FORUMS_ROW_TITLE}</a></td>
								<td class="alignright">{ADMIN_FORUMS_ROW_POSTCOUNT}</td>
							</tr>
							<!-- END: ADMIN_FORUMS_ROW_USER -->
						</table>
					</div><!-- /.span6 -->
				</div><!-- /.row-fluid -->
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->