<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.Ratings}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
        <a title="{PHP.L.Configuration}" href="{ADMIN_RATINGS_URL_CONFIG}" class="btn btn-small"><i class="icon-wrench iconspaced"></i> {PHP.L.Configuration}</a>
        <table class="table table-striped">
          <thead>
            <th>{PHP.L.adm_area}</th>
            <th>{PHP.L.Code}</th>
            <th>{PHP.L.Date} (GMT)</th>
            <th>{PHP.L.Votes}</th>
            <th>{PHP.L.Rating}</th>
            <th>{PHP.L.Action}</th>
          </thead>
          <!-- BEGIN: RATINGS_ROW -->
          <tr>
            <td>{ADMIN_RATINGS_ROW_RATING_AREA}</td>
            <td>{ADMIN_RATINGS_ROW_RATING_CODE}</td>
            <td>{ADMIN_RATINGS_ROW_CREATIONDATE}</td>
            <td>{ADMIN_RATINGS_ROW_VOTES}</td>
            <td>{ADMIN_RATINGS_ROW_RATING_AVERAGE}</td>
            <td>
              <a title="{PHP.L.Delete}" href="{ADMIN_RATINGS_ROW_URL_DEL}" class="btn btn-small btn-danger">{PHP.L.Delete}</a>
              <a title="{PHP.L.Open}" href="{ADMIN_RATINGS_ROW_RAT_URL}" class="btn btn-small">{PHP.L.Open}</a>
            </td>
          </tr>
          <!-- END: RATINGS_ROW -->
        </table>
        <div class="pagination">{ADMIN_RATINGS_PAGINATION_PREV}{ADMIN_RATINGS_PAGNAV}{ADMIN_RATINGS_PAGINATION_NEXT}</ul></div>
        <span>{PHP.L.adm_ratings_totalitems}: {ADMIN_RATINGS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_RATINGS_ON_PAGE}</span> <span>{PHP.L.adm_ratings_totalvotes}: {ADMIN_RATINGS_TOTALVOTES}</span>
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->