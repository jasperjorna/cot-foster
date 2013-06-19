<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.Log}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
        <!-- FOR {K}, {V} IN {PHP.log_groups} -->
          <a class="btn btn-small<!-- IF {K} == {PHP.n} --> active<!-- ENDIF -->" href="{K|cot_url('admin', 'm=log&n=$this')}">{V}</a>
        <!-- ENDFOR -->
        <!-- IF {PHP.usr.isadmin} -->
        <div class="pull-right">
          <a class="btn btn-small" href="{PHP.n|cot_url('admin', 'm=log&n=$this')}"><i class="icon-refresh iconspaced"></i>
            <span class="hidden-phone">{PHP.L.Refresh}</span>
          </a>
          <a class="btn btn-danger btn-small" href="{ADMIN_LOG_URL_PRUNE}"><i class="icon-trash icon-white iconspaced"></i>
            <span class="hidden-phone">{PHP.L.adm_purgeall}</span>
          </a>
        </div>
        <!-- ENDIF -->

        <table class="table table-striped footable">
          <thead>
            <th data-class="expand">#</th>
            <th>{PHP.L.Date}</th>
            <th date-hide="phone">{PHP.L.Ip}</th>
            <th date-hide="phone">{PHP.L.User}</th>
            <th date-hide="phone">{PHP.L.Group}</th>
            <th date-hide="phone">{PHP.L.Log}</th>
          </thead>
          <tbody>
            <!-- BEGIN: LOG_ROW -->
            <tr>
              <td>{ADMIN_LOG_ROW_LOG_ID}</td>
              <td>{ADMIN_LOG_ROW_DATE_STAMP|cot_date('datetime_text', $this, false)}</td>
              <td>{ADMIN_LOG_ROW_LOG_IP|cot_build_ipsearch($this)}</td>
              <td>{ADMIN_LOG_ROW_LOG_NAME}&nbsp;</td>
              <td><a href="{ADMIN_LOG_ROW_URL_LOG_GROUP}">{ADMIN_LOG_ROW_LOG_GROUP}</a></td>
              <td>{ADMIN_LOG_ROW_LOG_TEXT}</td>
            </tr>
            <!-- END: LOG_ROW -->
          </tbody>
        </table>

        <div class="pagination"><ul>{ADMIN_LOG_PAGINATION_PREV} {ADMIN_LOG_PAGNAV} {ADMIN_LOG_PAGINATION_NEXT}</ul></div>>
        <span>{PHP.L.Total}: {ADMIN_LOG_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_LOG_ON_PAGE}</span>

      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->