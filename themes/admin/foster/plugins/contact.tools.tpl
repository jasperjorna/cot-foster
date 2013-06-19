<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.contact_title}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
        <table class="table table-striped footable">
          <thead>
            <th>{PHP.L.Date}</th>
            <th data-class="expand">{PHP.L.User}</th>
            <th data-hide="phone">{PHP.L.Message}</th>
            <th data-hide="phone">{PHP.L.Action}</th>
          </thead>
          <!-- BEGIN: DATA -->
          <tr>
            <td>{CONTACT_DATE}<!-- IF {CONTACT_VAL} == val --><br><span class="label label-info">{PHP.L.contact_shortnew}</span><!-- ENDIF --></td>
            <td>{CONTACT_USER}<br>{CONTACT_EMAIL}</td>
            <td>{CONTACT_TEXTSHORT}<br class="visible-phone"><br class="visible-phone"></td>
            <td>
              <br class="visible-phone">
              <a href="{CONTACT_VIEWLINK}" title="{PHP.L.View}" class="btn btn-small">{PHP.L.short_open}</a>
              <!-- IF {CONTACT_VAL} == val -->
              <a href="{CONTACT_READLINK}" title="{PHP.L.contact_markread}" class="btn btn-small btn-success">{PHP.L.contact_read}</a>
              <!-- ELSE -->
              <a href="{CONTACT_UNREADLINK}" title="{PHP.L.contact_markunread}" class="btn btn-small btn-warning">{PHP.L.contact_unread}</a>
              <!-- ENDIF -->
              <a href="{CONTACT_DELLINK}" title="{PHP.L.Delete}" class="btn btn-small btn-danger">{PHP.L.Delete}</a>
            </td>
          </tr>
          <!-- END: DATA -->
        </table>
        <div class="pagination"><ul>{CONTACT_PREV}{CONTACT_PAGINATION}{CONTACT_NEXT}</ul></div>

        <!-- BEGIN: VIEW -->
        <h3>{PHP.L.contact_view} #{CONTACT_ID} (<!-- IF {CONTACT_SUBJECT} -->{CONTACT_SUBJECT}<!-- ELSE -->{PHP.L.contact_nosubject}<!-- ENDIF -->)</h3>
        <form action="{CONTACT_FORM_SEND}" method="post" name="contact_form" class="form-inline">
          <div class="control-group">
            <label class="control-label"><strong>{PHP.L.Username}</strong></label>
            <div class="controls">
              {CONTACT_USER}
            </div>
          </div>
          <div class="control-group">
            <label class="control-label"><strong>{PHP.L.Date}</strong></label>
            <div class="controls">
              {CONTACT_DATE}
            </div>
          </div>
          <div class="control-group">
            <label class="control-label"><strong>{PHP.L.Email}</strong></label>
            <div class="controls">
              {CONTACT_EMAIL}
            </div>
          </div>
          <div class="control-group">
            <label class="control-label"><strong>{PHP.L.Subject}</strong></label>
            <div class="controls">
              <!-- IF {CONTACT_SUBJECT} -->{CONTACT_SUBJECT}<!-- ELSE -->{PHP.L.contact_nosubject}<!-- ENDIF -->
            </div>
          </div>
          <div class="control-group">
            <label class="control-label"><strong>{PHP.L.Message}</strong></label>
            <div class="controls">
              {CONTACT_TEXT}
            </div>
          </div>
          <!-- BEGIN: EXTRAFLD -->
          <div class="control-group">
            <label class="control-label"><strong>{CONTACT_EXTRAFLD_TITLE}</strong></label>
            <div class="controls">
              {CONTACT_EXTRAFLD}
            </div>
          </div>
          <!-- END: EXTRAFLD -->
          <!-- IF {CONTACT_REPLY} -->
          <div class="control-group">
            <label class="control-label"><strong>{PHP.L.contact_sent}</strong></label>
            <div class="controls">
              {CONTACT_REPLY}
            </div>
          </div>
          <!-- ENDIF -->
          <div class="control-group">
            <label class="control-label"><strong>{PHP.L.Reply}</strong></label>
            <div class="controls">
              {CONTACT_FORM_TEXT}
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <button type="submit" class="btn btn-small btn-primary">{PHP.L.Submit}</button>
            </div>
          </div>
         </form>
         <!-- END: VIEW -->
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->