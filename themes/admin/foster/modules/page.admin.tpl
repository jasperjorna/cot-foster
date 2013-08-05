<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.Pages} ({ADMIN_PAGE_TOTALDBPAGES})</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
        <script>
          $(document).ready(function()
          {
            $('.moreinfo').hide();
            $(".mor_info_on_off").click(function()
            {
              var kk = $(this).attr('id');
              $('#'+kk).children('.moreinfo').slideToggle(100);
            });
          });
        </script>
        <div class="row-fluid">
          <a title="{PHP.L.Configuration}" href="{ADMIN_PAGE_URL_CONFIG}" class="btn btn-small"><i class="icon-wrench iconspaced"></i>{PHP.L.Configuration}</a>
          <a href="{ADMIN_PAGE_URL_EXTRAFIELDS}" class="btn btn-small"><i class="icon-list-alt iconspaced"></i>{PHP.L.adm_extrafields_desc}</a>
          <a href="{ADMIN_PAGE_URL_STRUCTURE}" class="btn btn-small"><i class="icon-folder-open iconspaced"></i>{PHP.L.Categories}</a>
          <a href="{ADMIN_PAGE_URL_ADD}" class="btn btn-small btn-primary">{PHP.L.page_addtitle}</a>
        </div>
        <h3 class="pull-left">{PHP.L.Pages}:</h3>
        <form id="form_valqueue" name="form_valqueue" method="post" action="{ADMIN_PAGE_FORM_URL}">
          <div class="input-append pull-right">
            <input type="hidden" name="paction" value="" id="appendedInputButton" />
            <!-- IF {ADMIN_PAGE_TOTALITEMS} > 1 -->{PHP.L.adm_sort} {ADMIN_PAGE_ORDER} {ADMIN_PAGE_WAY};<!-- ENDIF -->{ADMIN_PAGE_FILTER}
            <input name="paction" type="submit" value="{PHP.L.Filter}" class="btn" onclick="this.form.paction.value=this.value" />
          </div>
          <table class="table table-striped">
            <thead>
              <th>
                <!-- IF {PHP.cfg.jquery} -->
                <input name="allchek" class="checkbox" type="checkbox" value="" onclick="$('.checkbox').attr('checked', this.checked);" />
                <!-- ENDIF -->
              </th>
              <th>{PHP.L.Id}</th>
              <th>{PHP.L.Title}</thd>
              <th>{PHP.L.Action}</th>
            </thead>
            <!-- BEGIN: PAGE_ROW -->
            <tr>
              <td>
                <input name="s[{ADMIN_PAGE_ID}]" type="checkbox" class="checkbox" />
              </td>
              <td>
                {ADMIN_PAGE_ID}
              </td>
              <td>
                <div id="mor_{PHP.ii}" class='mor_info_on_off'>
                  <span class="strong" style="cursor:hand;">{ADMIN_PAGE_SHORTTITLE}</span>
                  <div class="moreinfo">
                    <table class="table table-condensed">
                      <tr>
                        <td>{PHP.L.Category}:</td>
                        <td>{ADMIN_PAGE_CATPATH_SHORT}</td>
                      </tr>
                      <tr>
                        <td>{PHP.L.Description}:</td>
                        <td>{ADMIN_PAGE_DESC}</td>
                      </tr>
                      <tr>
                        <td>{PHP.L.Text}:</td>
                        <td>{ADMIN_PAGE_TEXT}</td>
                      </tr>
                    </table>
                  </div>
                </div>
              </td>
              <td>
                <!-- IF {PHP.row.page_state} == 1 --><a title="{PHP.L.Validate}" href="{ADMIN_PAGE_URL_FOR_VALIDATED}" class="confirmLink btn btn-small btn-success">{PHP.L.Validate}</a><!-- ENDIF -->
                <a title="{PHP.L.Open}" href="{ADMIN_PAGE_ID_URL}" target="_blank" class="btn btn-small btn-primary">{PHP.L.short_open}</a>
                <a title="{PHP.L.Edit}" href="{ADMIN_PAGE_URL_FOR_EDIT}" target="_blank" class="btn btn-small">{PHP.L.Edit}</a>
                <a title="{PHP.L.Delete}" href="{ADMIN_PAGE_URL_FOR_DELETED}" class="confirmLink btn btn-small btn-danger">{PHP.L.short_delete}</a>
              </td>
            </tr>
            <!-- END: PAGE_ROW -->
            <!-- IF {PHP.is_row_empty} -->
            <tr>
              <td colspan="4">{PHP.L.None}</td>
            </tr>
            <!-- ENDIF -->
          </table>
          <!-- IF {PHP.filter} != {PHP.L.adm_validated} --><input name="paction" type="submit" value="{PHP.L.Validate}" onclick="this.form.paction.value=this.value" class="btn btn-small btn-success" /><!-- ENDIF -->
          <input name="paction" type="submit" value="{PHP.L.Delete}" onclick="this.form.paction.value=this.value" class="btn btn-small btn-danger" />
          <div class="pagination"><ul>{ADMIN_PAGE_PAGINATION_PREV}{ADMIN_PAGE_PAGNAV}{ADMIN_PAGE_PAGINATION_NEXT}</ul></div>
          <span>{PHP.L.Total}: {ADMIN_PAGE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_PAGE_ON_PAGE}</span>
        </form>
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->