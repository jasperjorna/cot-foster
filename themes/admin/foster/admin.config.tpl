<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <!-- BEGIN: EDIT -->
    <!-- IF {PHP|cot_plugin_active('configsiblings')} -->
    <div class="span3">
      <!-- BEGIN: ADMIN_CONFIG_SIBLINGS -->
      <div class="widget">
        <div class="widget-header">
          <h3>{ADMIN_CONFIG_OWNER}</h3>
        </div><!-- /.widget-header -->
        <div class="widget-content">
          <ul id="main-nav" class="nav nav-tabs nav-stacked">
            <!-- BEGIN: ADMIN_CONFIG_SIBLINGS_ROW -->
            <li<!-- IF {ADMIN_CONFIG_SIBLING_ACTIVE} --> class="active"<!-- ENDIF -->>
                <a href="{ADMIN_CONFIG_SIBLING_URL}">
                  <!-- IF {ADMIN_CONFIG_SIBLINGS_ICO} -->
                  <img src="{ADMIN_CONFIG_SIBLINGS_ICO}" width="20" height="20" class="iconspaced">
                  <!-- ELSE -->
                  <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" width="20" height="20" class="iconspaced">
                  <!-- ENDIF -->
                  {ADMIN_CONFIG_SIBLING_NAME}
                </a>
            </li>
            <!-- END: ADMIN_CONFIG_SIBLINGS_ROW -->
          </ul>
        </div><!-- /.widget-content -->
      </div><!-- /.widget -->
      <!-- END: ADMIN_CONFIG_SIBLINGS -->
    </div><!-- /.span3 -->
    <!-- ENDIF -->
    <!-- IF {PHP|cot_plugin_active('configsiblings')} -->
    <div class="span9">
    <!-- ELSE -->
    <div class="span12">
    <!-- ENDIF -->
      <div class="widget">
        <div class="widget-header">
          <h3>{PHP.L.Configuration}</h3>
        </div><!-- /.widget-header -->
        <div class="widget-content">
          <form action="{ADMIN_CONFIG_FORM_URL}" method="post">
            <table class="table table-bordered table-striped footable">
              <thead>
                <tr>
                  <th data-class="expand" style="width:25%;">{PHP.L.Key}</th>
                  <th data-hide="phone">{PHP.L.Value}</th>
                  <th data-hide="phone" style="width:5%;">{PHP.L.Reset}</th>
                </tr>
              </thead>
              <tbody>
                <!-- BEGIN: ADMIN_CONFIG_ROW -->
                <!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
                <tr>
                  <th colspan="3" style="text-align:center;">
                    <big>{ADMIN_CONFIG_FIELDSET_TITLE}</big>
                  </th>
                </tr>
                <!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
                <!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
                <tr>
                  <td>{ADMIN_CONFIG_ROW_CONFIG_TITLE}:
                    <!-- IF {ADMIN_CONFIG_ROW_CONFIG_MORE} -->
                    <div style="font-size: 0.85em; opacity: 0.6;">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
                    <!-- ENDIF -->
                  </td>
                  <td>
                    {ADMIN_CONFIG_ROW_CONFIG}
                  </td>
                  <td>
                    <br class="visible-phone">
                    <a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="btn btn-mini">
                      {PHP.L.Reset}
                    </a>
                  </td>
                </tr>
                <!-- END: ADMIN_CONFIG_ROW_OPTION -->
                <!-- BEGIN: ADMIN_CONFIG_FIELDSET_END -->
                <!-- END: ADMIN_CONFIG_FIELDSET_END -->
                <!-- END: ADMIN_CONFIG_ROW -->
              </tbody>
              <tfoot>
                <tr>
                  <td colspan="3">
                    <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
                  </td>
                </tr>
              </tfoot>
            </table>
          </form>
        </div><!-- /.widget-content -->
      </div><!-- /.widget -->
    </div><!-- /.span9 -->
    <!-- END: EDIT -->

    <!-- BEGIN: DEFAULT -->
    <!-- BEGIN: ADMIN_CONFIG_COL -->
    <div class="span4">
      <div class="widget">
        <div class="widget-header">
          <h3>{ADMIN_CONFIG_COL_CAPTION}</h3>
        </div><!-- /.widget-header -->
        <div class="widget-content">
          <ul id="main-nav" class="nav nav-tabs nav-stacked">
            <!-- BEGIN: ADMIN_CONFIG_ROW -->
            <li>
              <a href="{ADMIN_CONFIG_ROW_URL}">
              <!-- IF {ADMIN_CONFIG_ROW_ICO} -->
              <img src="{ADMIN_CONFIG_ROW_ICO}" width="20" height="20" class="iconspaced">
              <!-- ELSE -->
              <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" width="20" height="20" class="iconspaced">
              <!-- ENDIF -->
              {ADMIN_CONFIG_ROW_NAME}
              </a>
            </li>
            <!-- END: ADMIN_CONFIG_ROW -->
          </ul>
        </div> <!-- /.widget-content -->
      </div> <!-- /.widget -->
    </div><!-- /.span4 -->
    <!-- END: ADMIN_CONFIG_COL -->
    <!-- END: DEFAULT -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->