<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.Referers}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
        <!-- IF {PHP.usr.isadmin} -->
        <div class="block button-toolbar">
          <a href="{ADMIN_REFERERS_URL_PRUNE}" class="btn btn-small">{PHP.L.adm_purgeall}</a>
          <a href="{ADMIN_REFERERS_URL_PRUNELOWHITS}" class="btn btn-small">{PHP.L.adm_ref_prunelow}</a>
        </div>
        <!-- ENDIF -->
        <!-- IF {PHP.is_ref_empty} -->
        <table class="table table-striped">
          <thead>
            <th>{PHP.L.Referer}</th>
            <th>{PHP.L.Hits}</th>
          </thead>
        <!-- ENDIF -->
        <!-- BEGIN: REFERERS_ROW -->
          <tr>
            <td colspan="2"><a href="http://{ADMIN_REFERERS_REFERER}">{ADMIN_REFERERS_REFERER}</a></td>
          </tr>
          <!-- BEGIN: REFERERS_URI -->
          <tr>
            <td>&nbsp; &nbsp; <a href="{ADMIN_REFERERS_URI}">{ADMIN_REFERERS_URI}</a></td>
            <td class="textright">{ADMIN_REFERERS_COUNT}</td>
          </tr>
          <!-- END: REFERERS_URI -->
        <!-- END: REFERERS_ROW -->
        <!-- IF {PHP.is_ref_empty} -->
        </table>
        <div class="pagination"><ul>{ADMIN_REFERERS_PAGINATION_PREV}{ADMIN_REFERERS_PAGNAV}{ADMIN_REFERERS_PAGINATION_NEXT}</ul></div>
        <span>{PHP.L.Total} : {ADMIN_REFERERS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_REFERERS_ON_PAGE}</span>
        <!-- ELSE -->
        <table class="table table-striped">
          <thead>
            <th>{PHP.L.Referer}</th>
            <th>{PHP.L.Hits}</th>
          </thead>
          <tr>
            <td colspan="2">{PHP.L.None}</td>
          </tr>
        </table>
        <!-- ENDIF -->
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->