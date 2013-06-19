<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.Polls}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
      	<div class="row-fluid">
					<a title="{PHP.L.Configuration}" href="{ADMIN_POLLS_CONF_URL}" class="btn btn-small"><i class="icon-wrench iconspaced"></i>{PHP.L.Configuration}</a>
				</div>
				<h3 class="pull-left">{PHP.L.poll}:</h3>
				<select name="jumpbox" size="1" onchange="redirect(this)" class="pull-right">
						<!-- BEGIN: POLLS_ROW_FILTER -->
						<option value="{ADMIN_POLLS_ROW_FILTER_VALUE}"{ADMIN_POLLS_ROW_FILTER_CHECKED}>{ADMIN_POLLS_ROW_FILTER_NAME}</option>
						<!-- END: POLLS_ROW_FILTER -->
				</select>
				<table class="table">
					<thead>
						<th>{PHP.L.Date}</th>
						<th>{PHP.L.Type}</th>
						<th>{PHP.L.Poll} {PHP.L.adm_clicktoedit}</th>
						<td>{PHP.L.Votes}</th>
						<th class="alignright">{PHP.L.Action}</th>
					</thead>
					<!-- BEGIN: POLLS_ROW -->
					<tr>
						<td>{ADMIN_POLLS_ROW_POLL_CREATIONDATE}</td>
						<td>{ADMIN_POLLS_ROW_POLL_TYPE}</td>
						<td>{ADMIN_POLLS_ROW_POLL_LOCKED}<a href="{ADMIN_POLLS_ROW_POLL_URL}">{ADMIN_POLLS_ROW_POLL_TEXT}</a></td>
						<td>{ADMIN_POLLS_ROW_POLL_TOTALVOTES}</td>
						<td class="action alignright">
							<!-- IF !{ADMIN_POLLS_ROW_POLL_LOCKED} -->
							<a title="{PHP.L.Lock}" href="{ADMIN_POLLS_ROW_POLL_URL_LCK}" class="btn btn-small"><i class="icon-lock iconspaced"></i>{PHP.L.Lock}</a>
							<!-- ELSE -->
							<a title="{PHP.L.Unlock}" href="{ADMIN_POLLS_ROW_POLL_URL_LCK}" class="btn btn-small"><i class="icon-unlock iconspaced"></i>{PHP.L.Unlock}</a>
							<!-- ENDIF -->
							<a title="{PHP.L.Reset}" href="{ADMIN_POLLS_ROW_POLL_URL_RES}" class="btn btn-small"><i class="icon-refresh iconspaced"></i>{PHP.L.Reset}</a>
							<a title="{PHP.L.adm_polls_bump}" href="{ADMIN_POLLS_ROW_POLL_URL_BMP}" class="btn btn-small"><i class="icon-circle-arrow-up iconspaced"></i>{PHP.L.adm_polls_bump}</a>
							<a title="{PHP.L.Open}" href="{ADMIN_POLLS_ROW_POLL_URL_OPN}" class="btn btn-small btn-success"><i class="icon-volume-up iconspaced"></i>{PHP.L.Open}</a>
							<a title="{PHP.L.Delete}" href="{ADMIN_POLLS_ROW_POLL_URL_DEL}" class="btn btn-small btn-danger"><i class="icon-remove iconspaced"></i>{PHP.L.Delete}</a>
						</td>
					</tr>
					<!-- END: POLLS_ROW -->
					<!-- BEGIN: POLLS_ROW_EMPTY -->
					<tr>
						<td colspan="5" class="aligncenter">{PHP.L.adm_polls_nopolls}</td>
					</tr>
					<!-- END: POLLS_ROW_EMPTY -->
				</table>
				<div class="pagination"><ul>{ADMIN_POLLS_PAGINATION_PREV}{ADMIN_POLLS_PAGNAV}{ADMIN_POLLS_PAGINATION_NEXT}</ul></div>
				<span>{PHP.L.Total}: {ADMIN_POLLS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_POLLS_ON_PAGE}</span>
				<hr>
				<h3>{ADMIN_POLLS_FORMNAME}:</h3>
				<form id="addpoll" action="{ADMIN_POLLS_FORM_URL}" method="post">
					<!-- IF {PHP.cfg.jquery} -->
					<script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
					<script type="text/javascript">
						var ansMax = {PHP.cfg.polls.max_options_polls};
					</script>
					<!-- ENDIF -->
					<div class="control-group">
					  <label class="control-label"><strong>{PHP.L.poll}</strong></label>
					  <div class="controls">
					    {EDIT_POLL_IDFIELD}{EDIT_POLL_TEXT}
					  </div>
					</div>
					<div class="control-group">
					  <label class="control-label"><strong>{PHP.L.Options}</strong></label>
					  <!-- BEGIN: OPTIONS -->
					  <div class="controls">
							<div class="polloptiondiv">
								{EDIT_POLL_OPTION_TEXT}
								<input name="deloption" value="x" type="button" class="btn btn-small" style="display:none;" />
							</div>
					  </div>
					  <!-- END: OPTIONS -->
					  <input id="addoption" name="addoption" value="{PHP.L.Add}" class="btn btn-small" type="button" style="display:none;" /></td>
					</div>
					<div class="control-group">
					  <label class="control-label"><strong>{PHP.L.Settings}</strong></label>
					  <div class="controls">
					    {EDIT_POLL_MULTIPLE}
					  </div>
					  <!-- BEGIN: EDIT -->
					  <div class="controls">
					    {EDIT_POLL_LOCKED}
					  </div>
					  <div class="controls">
					    {EDIT_POLL_RESET}
					  </div>
					  <div class="controls">
					    {EDIT_POLL_DELETE}
					  </div>
					  <!-- END: EDIT -->
					</div>
					<div class="control-group">
					  <div class="controls">
					    <button type="submit" class="btn btn-small btn-primary">{ADMIN_POLLS_SEND_BUTTON}</button>
					  </div>
					</div>
				</form>
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->