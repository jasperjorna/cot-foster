<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.Rights}</h3>
      </div><!-- /widget-header -->
      <div class="widget-content">
				<form name="saverights" id="saverights" action="{ADMIN_RIGHTS_FORM_URL}" method="post" class="ajax">
					<!-- IF {PHP.g} > 5 -->
					<table class="table">
						<tr>
							<td><input type="checkbox" class="checkbox" name="ncopyrightsconf" />{PHP.L.adm_copyrightsfrom}: {ADMIN_RIGHTS_SELECTBOX_GROUPS} &nbsp;
								<input type="submit" class="submit" value="{PHP.L.Update}" />
							</td>
						</tr>
					</table>
					<!-- ENDIF -->
					<!-- BEGIN: RIGHTS_SECTION -->
					<h3 class="topheading">{RIGHTS_SECTION_TITLE}:</h3>
					<table class="table table-striped">
						<thead>
							<tr>
								<th rowspan="2"></th>
								<th rowspan="2">{PHP.L.Section}</th>
								<th colspan="{ADMIN_RIGHTS_ADV_COLUMNS}">{PHP.L.Rights}</th>
								<th rowspan="2">{PHP.L.adm_rightspergroup}</th>
								<th rowspan="2">{PHP.L.adm_setby}</th>
							</tr>
							<tr>
								<th rowspan="1">{PHP.R.admin_icon_auth_r}</th>
								<th rowspan="1">{PHP.R.admin_icon_auth_w}</th>
								<th rowspan="1">{PHP.R.admin_icon_auth_1}</th>
								<!-- IF {PHP.advanced} -->
								<th rowspan="1">{PHP.R.admin_icon_auth_2}</th>
								<th rowspan="1">{PHP.R.admin_icon_auth_3}</th>
								<th rowspan="1">{PHP.R.admin_icon_auth_4}</th>
								<th rowspan="1">{PHP.R.admin_icon_auth_5}</th>
								<!-- ENDIF -->
								<th rowspan="1">{PHP.R.admin_icon_auth_a}</th>
							</tr>
						</thead>
						<!-- BEGIN: RIGHTS_ROW -->
						<tr>
							<td>
								<!-- IF {ADMIN_RIGHTS_ROW_ICO} -->
								<img src="{ADMIN_RIGHTS_ROW_ICO}"/>
								<!-- ELSE -->
								<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
								<!-- ENDIF -->
							</td>
							<td>
								<a href="{ADMIN_RIGHTS_ROW_LINK}">{ADMIN_RIGHTS_ROW_TITLE}</a>
							</td>
							<!-- BEGIN: RIGHTS_ROW_ITEMS -->
							<td>
								<!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} -->
								<input type="hidden" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}" value="1" />
								{PHP.R.admin_icon_discheck1}
								<!-- ENDIF -->
								<!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->
								{PHP.R.admin_icon_discheck0}
								<!-- ENDIF -->
								<!-- IF !{PHP.out.tpl_rights_parseline_locked} -->
								<input type="checkbox" class="checkbox" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}"{ADMIN_RIGHTS_ROW_ITEMS_CHECKED}{ADMIN_RIGHTS_ROW_ITEMS_DISABLED} />
								<!-- ENDIF -->
							</td>
							<!-- END: RIGHTS_ROW_ITEMS -->
							<td>
								<a title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_RIGHTSBYITEM}" class="btn btn-small spacedicon">{PHP.L.Rights}</a>
								<a title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_LINK}" class="btn btn-small">{PHP.L.Open}</a>
							</td>
							<td class="textcenter">{ADMIN_RIGHTS_ROW_USER}{ADMIN_RIGHTS_ROW_PRESERVE}</td>
						</tr>
						<!-- END: RIGHTS_ROW -->
					</table>
					<hr>
					<!-- END: RIGHTS_SECTION -->
					<ul class="inline aligncenter">
						<li><input type="submit" class="btn btn-small btn-primary" value="{PHP.L.Update}" /></li>
						<li><a href="{ADMIN_RIGHTS_ADVANCED_URL}" class="btn btn-small">{PHP.L.More}</a></li>
					</ul>
				</form>
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->

<!-- BEGIN: RIGHTS_HELP -->
<p>{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}</p>
<p>{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}</p>
<p>{PHP.R.admin_icon_auth_1}&nbsp; {PHP.L.Custom} #1</p>
<!-- IF {PHP.advanced} --><p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2</p>
<p>{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3</p>
<p>{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4</p>
<p>{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5</p><!-- ENDIF -->
<p>{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}</p>
<!-- END: RIGHTS_HELP -->