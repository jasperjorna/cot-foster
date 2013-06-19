<!-- BEGIN: MAIN -->
<div class="row-fluid<!-- IF {PHP.m} == '' --> animated fadeIn<!-- ENDIF -->">
  <div class="container-fluid">
    <div class="span3">
      <div class="widget">
        <div class="widget-header">
          <h3>{PHP.L.home_ql_b1_title}</h3>
        </div><!-- /.widget-header -->
        <div class="widget-content">
          <ul id="main-nav" class="nav nav-tabs nav-stacked">
            <li><a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=core&amp;p=main')}">{PHP.L.home_ql_b1_1}</a></li>
            <li><a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=core&amp;p=title')}">{PHP.L.home_ql_b1_2}</a></li>
            <li><a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=core&amp;p=theme')}">{PHP.L.home_ql_b1_3}</a></li>
            <li><a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=core&amp;p=menus')}">{PHP.L.home_ql_b1_4}</a></li>
            <li><a href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=core&amp;p=locale')}">{PHP.L.Locale}</a></li>
            <li><a href="{PHP|cot_url('admin','m=extrafields')}">{PHP.L.adm_extrafields}</a></li>
            <!-- BEGIN: SIDEPANEL -->
            {ADMIN_HOME_SIDEPANEL}
            <!-- END: SIDEPANEL -->
          </ul>
        </div><!-- /.widget-content -->
      </div><!-- /.widget -->
    </div><!-- /.span3 -->

    <div class="span9">
      <!-- BEGIN: UPDATE -->
      <div class="alert alert-info">
        <h4 class="alert-heading">{PHP.L.adminqv_update_notice}:</h4>
        <p>{ADMIN_HOME_UPDATE_REVISION} {ADMIN_HOME_UPDATE_MESSAGE}</p>
      </div><!-- /.alert alert-info -->
      <!-- END: UPDATE -->

      {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

      <div class="widget">
        <div class="widget-header">
          <h3>Cotonti</h3>
        </div><!-- /.widget-header -->
        <div class="widget-content">
          <table class="table">
            <thead>
              <tr>
                <th colspan="2">Cotonti</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td style="width: 80%;">{PHP.L.Version}:</td>
                <td class="alignright">{ADMIN_HOME_VERSION}</td>
              </tr>
              <tr>
                <td>{PHP.L.Plugins}:</td>
                <td class="alignright">{ADMIN_HOME_TOTALPLUGINS}</td>
              </tr>
              <tr>
                <td>{PHP.L.Hooks}:</td>
                <td class="alignright">{ADMIN_HOME_TOTALHOOKS}</td>
              </tr>
            </tbody>
          </table>
          <table class="table table-condensed">
            <thead>
              <tr>
                <th colspan="2">{PHP.L.Database}</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td style="width: 65%;">{PHP.L.Version}:</td>
                <td class="alignright">{ADMIN_HOME_DB_VERSION}</td>
              </tr>
              <tr>
                <td>{PHP.L.home_db_rows}:</td>
                <td class="alignright">{ADMIN_HOME_DB_TOTAL_ROWS}</td>
              </tr>
              <tr>
                <td>{PHP.L.home_db_indexsize}:</td>
                <td class="alignright">{ADMIN_HOME_DB_INDEXSIZE}</td>
              </tr>
              <tr>
                <td>{PHP.L.home_db_datassize}:</td>
                <td class="alignright">{ADMIN_HOME_DB_DATASSIZE}</td>
              </tr>
              <tr>
                <td>{PHP.L.home_db_totalsize}:</td>
                <td class="alignright">{ADMIN_HOME_DB_TOTALSIZE}</td>
              </tr>
            </tbody>
          </table>
        </div> <!-- /.widget-content -->
      </div> <!-- /.widget -->
    </div><!-- /.span9 -->

    <div class="span9">
      <div class="widget">
        <div class="widget-header">
          <h3>{PHP.L.Activity}</h3>
        </div><!-- /.widget-header -->
        <div class="widget-content">
          <!-- BEGIN: MAINPANEL -->
          {ADMIN_HOME_MAINPANEL}
          <!-- END: MAINPANEL -->
        </div> <!-- /.widget-content -->
      </div> <!-- /.widget -->
    </div><!-- /.span9 -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->