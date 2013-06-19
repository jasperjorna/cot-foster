<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{MESSAGE_TITLE}</h3>
      </div><!-- /widget-header -->
      <div class="widget-content">
        {MESSAGE_BODY}
        <!-- BEGIN: MESSAGE_CONFIRM -->
        <div class="form-actions">
          <a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="btn btn-primary"><i class="icon-ok icon-white iconspaced"></i> {PHP.L.Yes}</a>
          <a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="btn"><i class="icon-remove iconspaced"></i> {PHP.L.No}</a>
        </div>
        <!-- END: MESSAGE_CONFIRM -->
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->