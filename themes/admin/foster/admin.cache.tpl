<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>Internal Cache</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">

        <div class="pull-right">
          <a href="{ADMIN_CACHE_URL_REFRESH}" class="btn btn-small"><i class="icon-refresh iconspaced"></i> <span class="hidden-phone">{PHP.L.Refresh}</span></a>
          <!-- IF {PHP.a} == 'showall' -->
          <a href="{ADMIN_CACHE_URL_REFRESH}" class="btn btn-small"><i class="icon-zoom-out iconspaced"></i> <span class="hidden-phone">{PHP.L.ShowLess}</span></a>
          <!-- ELSE -->
          <a href="{ADMIN_CACHE_URL_SHOWALL}" class="btn btn-small"><i class="icon-zoom-in iconspaced"></i> <span class="hidden-phone">{PHP.L.ShowMore}</span></a>
          <!-- ENDIF -->
          <a href="{ADMIN_CACHE_URL_PURGE}" class="btn btn-small btn-danger"><i class="icon-trash icon-white iconspaced"></i> <span class="hidden-phone">{PHP.L.adm_purgeall}</span></a>
        </div>

        <!-- BEGIN: ADMIN_CACHE_MEMORY -->
        <hr>
        <h3>{ADMIN_CACHE_MEMORY_DRIVER}</h3>
        <div class="progress">
          <div class="bar" style="width:{ADMIN_CACHE_MEMORY_PERCENTBAR}%;"></div>
        </div>
        {PHP.L.Available}: {ADMIN_CACHE_MEMORY_AVAILABLE} / {ADMIN_CACHE_MEMORY_MAX} {PHP.L.bytes}
        <hr>
        <!-- END: ADMIN_CACHE_MEMORY -->

        <h3 class="topheading">{PHP.L.Database}</h3>
        <table class="table table-condensed table-striped footable">
          <thead>
            <tr>
              <th data-class="expand" style="width:25%;">{PHP.L.Item}</th>
              <th data-hide="phone" style="width:100px;">{PHP.L.Expire}</th>
              <th data-hide="phone" style="width:100px;">{PHP.L.Size}</th>
              <!-- IF {PHP.a} != 'showall' --><th data-hide="phone">{PHP.L.Value}</th><!-- ENDIF -->
              <th style="width:65px;">{PHP.L.Delete}</th>
            </tr>
          </thead>
          <tbody>
            <!-- BEGIN: ADMIN_CACHE_ROW -->
            <tr>
              <td><b>{ADMIN_CACHE_ITEM_NAME}</b></td>
              <td>{ADMIN_CACHE_EXPIRE}</td>
              <td>{ADMIN_CACHE_SIZE}</td>
            <!-- IF {PHP.a} != 'showall' -->
              <td class="cachevalue wordbreak">{ADMIN_CACHE_VALUE}</td>
              <td class="alignright"><a title="{PHP.L.Delete}" href="{ADMIN_CACHE_ITEM_DEL_URL}" class="btn btn-mini btn-danger"><i class="icon-remove icon-white"></i></a></td>
            </tr>
            <!-- ELSE -->
            <td class="alignright"><a title="{PHP.L.Delete}" href="{ADMIN_CACHE_ITEM_DEL_URL}" class="btn btn-mini btn-danger"><i class="icon-remove icon-white"></i></a></td>
          </tr>
          <tr>
            <td colspan="4">
              <div class="cachevalue wordbreak">{ADMIN_CACHE_VALUE}</div>
            </td>
          </tr>
          <!-- ENDIF -->
          <!-- END: ADMIN_CACHE_ROW -->
            <tr>
              <td colspan="2">{PHP.L.Total}:</td>
              <td><b>{ADMIN_CACHE_CACHESIZE} {PHP.L.bytes}</b></td>
              <td colspan="2"></td>
            </tr>
            </tbody>
        </table>

      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->