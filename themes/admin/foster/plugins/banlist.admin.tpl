<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.banlist_title}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
        <h3 class="topheading">{PHP.L.editdeleteentries}:</h3>
        <table class="table table-striped footable">
          <thead>
            <th data-hide="phone,tablet">{PHP.L.banlist_ipmask}</th>
            <th data-hide="phone,tablet">{PHP.L.banlist_emailmask}</th>
            <th data-class="expand">{PHP.L.banlist_reason}</th>
            <th data-hide="phone">{PHP.L.banlist_duration}</th>
            <th data-hide="phone">{PHP.L.Action}</th>
          </thead>
          <!-- BEGIN: ADMIN_BANLIST_ROW -->
          <form name="savebanlist_{ADMIN_BANLIST_ROW_ID}" id="savebanlist_{ADMIN_BANLIST_ROW_ID}" action="{ADMIN_BANLIST_ROW_URL}" method="post">
            <tr>
              <td>{ADMIN_BANLIST_ROW_IP}</td>
              <td>{ADMIN_BANLIST_ROW_EMAIL}</td>
              <td>{ADMIN_BANLIST_ROW_REASON}</td>
              <td>{ADMIN_BANLIST_ROW_EXPIRE}</td>
              <td>
                <br class="visible-phone">
                <button type="submit" class="btn btn-small"><i class="icon-refresh iconspaced"></i> <span class="hidden-phone">{PHP.L.Update}</span></button>
                <button type="submit" class="btn btn-small btn-danger" onclick="parent.location='{ADMIN_BANLIST_ROW_DELURL}'"><i class="icon-remove icon-white"></i></button>
              </td>
            </tr>
          </form>
          <!-- END: ADMIN_BANLIST_ROW -->
        </table>
        <div class="pagination"><ul>{ADMIN_BANLIST_PAGINATION_PREV}{ADMIN_BANLIST_PAGNAV}{ADMIN_BANLIST_PAGINATION_NEXT}</ul></div>
        <span>{PHP.L.Total}: {ADMIN_BANLIST_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_BANLIST_COUNTER_ROW}</span>
        <h3>{PHP.L.Add}:</h3>

        <form name="addbanlist" id="addbanlist" action="{ADMIN_BANLIST_URLFORMADD}" method="post" class="ajax">
          <div class="control-group">
            <label class="control-label">{PHP.L.banlist_ipmask}</label>
            <div class="controls">
              {ADMIN_BANLIST_IP}
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">{PHP.L.banlist_emailmask}</label>
            <div class="controls">
              {ADMIN_BANLIST_EMAIL}
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">{PHP.L.banlist_reason}</label>
            <div class="controls">
              {ADMIN_BANLIST_REASON}
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">{PHP.L.banlist_duration}</label>
            <div class="controls">
              {ADMIN_BANLIST_EXPIRE}
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <button type="submit" class="btn btn-primary">{PHP.L.Add}</button>
            </div>
          </div>
        </form>
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->