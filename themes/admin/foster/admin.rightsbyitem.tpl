<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.Rights}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
				<form name="saverightsbyitem" id="saverightsbyitem" action="{ADMIN_RIGHTSBYITEM_FORM_URL}" method="post" class="ajax">
					<table class="table">
						<thead>
							<tr>
								<th rowspan="2"></th>
								<th rowspan="2">{PHP.L.Groups}</th>
								<th colspan="{ADMIN_RIGHTSBYITEM_ADV_COLUMNS}">{PHP.L.Rights}</th>
								<th rowspan="2">{PHP.L.Open}</th>
								<th rowspan="2">{PHP.L.adm_setby}</th>
							</tr>
							<tr>
								<th>{PHP.R.admin_icon_auth_r}</th>
								<th>{PHP.R.admin_icon_auth_w}</th>
								<!-- IF {PHP.advanced} OR {PHP.ic} == 'page' --><th>{PHP.R.admin_icon_auth_1}</th><!-- ENDIF -->
								<!-- IF {PHP.advanced} --><th>{PHP.R.admin_icon_auth_2}</th>
								<th>{PHP.R.admin_icon_auth_3}</th>
								<th>{PHP.R.admin_icon_auth_4}</th>
								<th>{PHP.R.admin_icon_auth_5}</th><!-- ENDIF -->
								<th>{PHP.R.admin_icon_auth_a}</th>
							</tr>
						</thead>
						<!-- BEGIN: RIGHTSBYITEM_ROW -->
						<tr>
							<td><img src="{PHP.cfg.system_dir}/admin/img/users.png"/></td>
							<td><a href="{ADMIN_RIGHTSBYITEM_ROW_LINK}">{ADMIN_RIGHTSBYITEM_ROW_TITLE}</a></td>
							<!-- BEGIN: ROW_ITEMS -->
							<td>
								<!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} --><input type="hidden" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}" value="1" />
								{PHP.R.admin_icon_discheck1}<!-- ENDIF -->
								<!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->{PHP.R.admin_icon_discheck0}<!-- ENDIF -->
								<!-- IF !{PHP.out.tpl_rights_parseline_locked} --><input type="checkbox" class="checkbox" name="{ADMIN_RIGHTSBYITEM_ROW_ITEMS_NAME}"{ADMIN_RIGHTSBYITEM_ROW_ITEMS_CHECKED}{ADMIN_RIGHTSBYITEM_ROW_ITEMS_DISABLED} /><!-- ENDIF -->
							</td>
							<!-- END: ROW_ITEMS -->
							<td>
								<a title="{PHP.L.Open}" href="{ADMIN_RIGHTSBYITEM_ROW_JUMPTO}" class="btn btn-small spacedicon">{PHP.L.Open}</a>
								<a title="{PHP.L.Open}" href="{ADMIN_RIGHTSBYITEM_ROW_LINK}" class="btn btn-small">{PHP.L.Rights}</a>
							</td>
							<td>{ADMIN_RIGHTSBYITEM_ROW_USER}{ADMIN_RIGHTSBYITEM_ROW_PRESERVE}</td>
						</tr>
						<!-- END: RIGHTSBYITEM_ROW -->
					</table>
					<ul class="inline">
						<li><input type="submit" class="btn btn-small btn-primary" value="{PHP.L.Update}" /></li>
						<li><a href="{ADMIN_RIGHTSBYITEM_ADVANCED_URL}" class="btn btn-small">{PHP.L.More}</a></li>
					</ul>
				</form>
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->

<!-- BEGIN: RIGHTSBYITEM_HELP -->
<p>{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}</p>
<p>{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}</p>
<!-- IF {PHP.advanced} OR {PHP.ic} == 'page' --><p>{PHP.R.admin_icon_auth_1}&nbsp; {PHP.l_custom1}</p><!-- ENDIF -->
<!-- IF {PHP.advanced} --><p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2</p>
<p>{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3</p>
<p>{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4</p>
<p>{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5</p><!-- ENDIF -->
<p>{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}</p>
<!-- END: RIGHTSBYITEM_HELP -->