<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>BBCodes</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
        <div class="row-fluid">
				  <h3 class="topheading">{PHP.L.editdeleteentries}:</h3>
        </div><!-- /.row-fluid -->
        <div class="row-fluid">
          <div class="span6">
            <div class="accordion" id="fields">
            	<!-- BEGIN: ADMIN_BBCODE_ROW -->
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#fields" href="#{ADMIN_BBCODE_ROW_ID}">
                    {ADMIN_BBCODE_ROW_TITLE}
                  </a>
                </div>
                <div id="{ADMIN_BBCODE_ROW_ID}" class="accordion-body collapse">
                  <div class="accordion-inner">
  								  <form action="{ADMIN_BBCODE_UPDATE_URL}" method="post" class="form-inline">
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.Name}</strong></label>
                        <div class="controls">
                          {ADMIN_BBCODE_ROW_NAME}
                        </div>
                      </div>
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.adm_bbcodes_mode}</strong></label>
                        <div class="controls">
                          {ADMIN_BBCODE_ROW_MODE}
                        </div>
                      </div>
                      <div class="control-group">
                        <div class="controls">
                          <label class="checkbox">
                            {ADMIN_BBCODE_ROW_ENABLED} <strong>{PHP.L.Enabled}</strong>
                          </label>
                        </div>
                      </div>
                     <div class="control-group">
                        <div class="controls">
                          <label class="checkbox">
                            {ADMIN_BBCODE_ROW_CONTAINER} <strong>{PHP.L.adm_bbcodes_container}</strong>
                          </label>
                        </div>
                      </div>
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.adm_bbcodes_pattern}</strong></label>
                        <div class="controls">
                          {ADMIN_BBCODE_ROW_PATTERN}
                        </div>
                      </div>
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.adm_bbcodes_replacement}</strong></label>
                        <div class="controls">
                          {ADMIN_BBCODE_ROW_REPLACEMENT}
                        </div>
                      </div>
                      <!-- IF {ADMIN_BBCODE_ROW_PLUG} -->
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.Plugin}</strong></label>
                        <div class="controls">
                          {ADMIN_BBCODE_ROW_PLUG}
                        </div>
                      </div>
                      <!-- ENDIF -->
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.adm_bbcodes_priority}</strong></label>
                        <div class="controls">
                          {ADMIN_BBCODE_ROW_PRIO}
                        </div>
                      </div>
                      <div class="control-group">
                        <div class="controls">
                          <label class="checkbox">
                            {ADMIN_BBCODE_ROW_POSTRENDER} <strong>{PHP.L.adm_bbcodes_postrender}</strong>
                          </label>
                        </div>
                      </div>
                      <div class="control-group">
                        <div class="controls">
                          <input onclick="" type="submit" class="btn btn-small btn-primary" value="{PHP.L.Update}" />
                          <input type="button" class="btn btn-small btn-danger" value="{PHP.L.Delete}" onclick="if(confirm('{PHP.L.adm_bbcodes_confirm}')) location.href='{ADMIN_BBCODE_ROW_DELETE_URL}'" />
                        </div>
                      </div>
    								</form>
                  </div><!-- /.accordion-inner -->
                </div><!-- /.{ADMIN_BBCODE_ROW_ID} -->
              </div><!-- /.accordion-group -->
              <!-- END: ADMIN_BBCODE_ROW -->
            </div><!-- /.accordion #fields -->
    				<div class="pagination"><ul>{ADMIN_BBCODE_PAGINATION_PREV} {ADMIN_BBCODE_PAGNAV} {ADMIN_BBCODE_PAGINATION_NEXT}</ul></div>
    				<span>{PHP.L.Total}: {ADMIN_BBCODE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_BBCODE_COUNTER_ROW}</span>
          </div><!-- /.span6 -->

          <div class="span6">
    				<h3>{PHP.L.adm_bbcodes_new}:</h3>
    				<form action="{ADMIN_BBCODE_FORM_ACTION}" method="post" class="form-inline">
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.Name}</strong></label>
                <div class="controls">
                  {ADMIN_BBCODE_NAME}
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.adm_bbcodes_mode}</strong></label>
                <div class="controls">
                  {ADMIN_BBCODE_MODE}
                </div>
              </div>
              <div class="control-group">
                <div class="controls">
                  <label class="checkbox">
                    {ADMIN_BBCODE_CONTAINER} <strong>{PHP.L.adm_bbcodes_container}</strong>
                  </label>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.adm_bbcodes_pattern}</strong></label>
                <div class="controls">
                  {ADMIN_BBCODE_PATTERN}
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.adm_bbcodes_priority}</strong></label>
                <div class="controls">
                  {ADMIN_BBCODE_REPLACEMENT}
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.adm_bbcodes_replacement}</strong></label>
                <div class="controls">
                  {ADMIN_BBCODE_PRIO}
                </div>
              </div>
              <div class="control-group">
                <div class="controls">
                  <label class="checkbox">
                    {ADMIN_BBCODE_POSTRENDER} <strong>{PHP.L.adm_bbcodes_postrender}</strong>
                  </label>
                </div>
              </div>
              <div class="control-group">
                <div class="controls">
                  <input type="submit" class="btn btn-small btn-primary" value="{PHP.L.Add}" />
                </div>
              </div>
    				</form>
          </div><!-- /.span6 -->

        </div><!-- /.row-fluid -->

        <div class="row-fluid">
  				<h3>{PHP.L.adm_bbcodes_other}:</h3>
  				<ul class="inline">
  					<li><a href="{ADMIN_BBCODE_URL_CLEAR_CACHE}" class="btn btn-small" onclick="return confirm('{PHP.L.adm_bbcodes_clearcache_confirm}')">{PHP.L.adm_bbcodes_clearcache}</a></li>
  					<!-- BEGIN: ADMIN_BBCODE_CONVERT -->
  					<li><a href="{ADMIN_BBCODE_CONVERT_URL}" class="btn btn-small" onclick="return confirm('{PHP.L.adm_bbcodes_convert_confirm}')">{ADMIN_BBCODE_CONVERT_TITLE}</a></li>
  					<!-- END: ADMIN_BBCODE_CONVERT -->
  				</ul>
        </div><!-- /.row-fluid -->
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<script>
$(function(){
	$(".accordion").collapse();
});
</script>
<!-- END: MAIN -->