<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="span4">
      <div class="widget">
        <div class="widget-header">
          <h3>{PHP.L.Core}</h3>
        </div><!-- /.widget-header -->
        <div class="widget-content">
          <ul id="main-nav" class="nav nav-tabs nav-stacked">
            <li>
              <a href="{ADMIN_OTHER_URL_CACHE}">
                <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" class="iconspaced">
                {PHP.L.adm_internalcache}
              </a>
            </li>
            <li>
              <a href="{ADMIN_OTHER_URL_DISKCACHE}">
                <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" class="iconspaced">
                {PHP.L.adm_diskcache}
              </a>
            </li>
            <li>
              <a href="{ADMIN_OTHER_URL_EXFLDS}">
                <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" class="iconspaced">
                {PHP.L.adm_extrafields}
              </a>
            </li>
            <li>
              <a href="{ADMIN_OTHER_URL_LOG}">
                <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" class="iconspaced">
                {PHP.L.adm_log}
              </a>
            </li>
            <li>
              <a href="{ADMIN_OTHER_URL_INFOS}">
                <img src="{PHP.cfg.system_dir}/admin/img/cfg_info.png" class="iconspaced">
                {PHP.L.adm_infos}
              </a>
            </li>
          </ul>
        </div><!-- /.widget-content -->
      </div><!-- /.widget -->
    </div><!-- /.span4 -->

    <!-- BEGIN: SECTION -->
    <div class="span4">
      <div class="widget">
        <div class="widget-header">
          <h3>{ADMIN_OTHER_SECTION}</h3>
        </div><!-- /.widget-header -->
        <div class="widget-content">
          <ul id="main-nav" class="nav nav-tabs nav-stacked">
            <!-- BEGIN: ROW -->
            <li>
              <a href="{ADMIN_OTHER_EXT_URL}">
                <!-- IF {ADMIN_OTHER_EXT_ICO} -->
                <img src="{ADMIN_OTHER_EXT_ICO}" class="iconspaced">
                <!-- ELSE -->
                <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" class="iconspaced">
                <!-- ENDIF -->
                {ADMIN_OTHER_EXT_NAME}
              </a>
            </li>
            <!-- END: ROW -->
            <!-- BEGIN: EMPTY -->
            <li>
              {PHP.L.adm_listisempty}
            </li>
            <!-- END: EMPTY -->
          </ul>
        </div><!-- /.widget-content -->
      </div><!-- /.widget -->
    </div><!-- /.span4 -->
    <!-- END: SECTION -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->