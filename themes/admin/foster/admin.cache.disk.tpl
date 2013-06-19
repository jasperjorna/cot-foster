<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>Disk Cache</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
        <div class="pull-right">
          <a href="{ADMIN_DISKCACHE_URL_REFRESH}" class="btn btn-small"><i class="icon-refresh iconspaced"></i> <span class="hidden-phone">{PHP.L.Refresh}</span></a>
          <a href="{ADMIN_DISKCACHE_URL_PURGE}" class="btn btn-small btn-danger"><i class="icon-trash icon-white iconspaced"></i> <span class="hidden-phone">{PHP.L.adm_purgeall}</span></a>
        </div>
        <table class="table table-striped table-condensed footable">
          <thead>
            <tr>
              <th data-class="expand">{PHP.L.Item}</th>
              <th date-hide="phone" style="width:20%;">{PHP.L.Files}</th>
              <th style="width:20%;">{PHP.L.Size}</th>
              <th style="width:65px;">{PHP.L.Delete}</th>
            </tr>
          </thead>
          <tbody>
            <!-- BEGIN: ADMIN_DISKCACHE_ROW -->
            <tr>
              <td><b>{ADMIN_DISKCACHE_ITEM_NAME}</b></td>
              <td>{ADMIN_DISKCACHE_FILES}</td>
              <td>{ADMIN_DISKCACHE_SIZE}</td>
              <td class="alignright"><a title="{PHP.L.Delete}" href="{ADMIN_DISKCACHE_ITEM_DEL_URL}" class="btn btn-mini btn-danger"><i class="icon-remove icon-white"></i></a></td>
            </tr>
            <!-- END: ADMIN_DISKCACHE_ROW -->
          </tbody>
          <tfoot>
            <tr class="strong">
              <td>{PHP.L.Total}:</td>
              <td><b>{ADMIN_DISKCACHE_CACHEFILES|cot_declension($this, 'Files')}</b></td>
              <td><b>{ADMIN_DISKCACHE_CACHESIZE} {PHP.L.bytes}</b></td>
              <td></td>
            </tr>
          </tfoot>
        </table>
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->