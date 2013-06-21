<!-- BEGIN: MAIN -->
  <div id="ajaxBlock">
  <!-- BEGIN: BODY -->
    <div class="belownav">
      <div class="container-fluid">
        <div class="animated fadeInDown">{ADMIN_TITLE}</div>
      </div><!-- /.container-fluid -->
    </div><!-- /.belownav -->
    <!-- IF !{PHP|cot_plugin_active('configsiblings')} -->
    <div class="container-fluid">
      <div class="alert alert-error alert-block">
        {PHP.L.RequireConfigSiblings}
      </div>
    </div>
    <!-- ENDIF -->
    {ADMIN_MAIN}
    <!-- IF {ADMIN_HELP} -->
    <div class="container-fluid">
      <div class="help">
        <h4>{PHP.L.Help}:</h4>
        <p>{ADMIN_HELP}</p>
      </div><!--/.help -->
    </div>
    <!-- ENDIF -->
  <!-- END: BODY -->
  </div><!-- /#ajaxBlock -->
<!-- END: MAIN -->