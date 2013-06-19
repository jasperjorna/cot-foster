<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.Hits}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
        <!-- IF {ADMIN_HITS_MAXHITS} --><p>{ADMIN_HITS_MAXHITS}</p><!-- ENDIF -->
        <!-- BEGIN: YEAR_OR_MONTH -->
        <h3 class="topheading">{PHP.v}</h3>
        <table class="table table-striped">
          <!-- BEGIN: ROW -->
          <tr>
            <td>{ADMIN_HITS_ROW_DAY}</td>
            <td>{PHP.L.Hits}: {ADMIN_HITS_ROW_HITS}</td>
            <td>{ADMIN_HITS_ROW_PERCENTBAR}%</td>
            <td>
              <div class="bar_back">
                <div class="bar_front" style="width:{ADMIN_HITS_ROW_PERCENTBAR}%;"></div>
              </div>
            </td>
          </tr>
          <!-- END: ROW -->
        </table>
        <!-- END: YEAR_OR_MONTH -->

        <!-- BEGIN: DEFAULT -->
        <div class="row-fluid">
          <div class="span4">
            <h3>{PHP.L.hits_byweek}</h3>
            <table class="table">
              <!-- BEGIN: ROW_WEEK -->
              <tr>
                <td>{ADMIN_HITS_ROW_WEEK}</td>
                <td>{PHP.L.Hits}: {ADMIN_HITS_ROW_WEEK_HITS}</td>
                <td>{ADMIN_HITS_ROW_WEEK_PERCENTBAR}%</td>
                <td>
                  <div class="bar_back">
                    <div class="bar_front" style="width:{ADMIN_HITS_ROW_WEEK_PERCENTBAR}%;"></div>
                  </div>
                </td>
              </tr>
              <!-- END: ROW_WEEK -->
            </table>
          </div><!-- /.span4 -->
          <div class="span4">
            <h3>{PHP.L.hits_bymonth}</h3>
            <table class="table">
              <!-- BEGIN: ROW_MONTH -->
              <tr>
                <td><a href="{ADMIN_HITS_ROW_MONTH_URL}">{ADMIN_HITS_ROW_MONTH}</a></td>
                <td>{PHP.L.Hits}: {ADMIN_HITS_ROW_MONTH_HITS}</td>
                <td>{ADMIN_HITS_ROW_MONTH_PERCENTBAR}%</td>
                <td>
                  <div class="bar_back">
                    <div class="bar_front" style="width:{ADMIN_HITS_ROW_MONTH_PERCENTBAR}%;"></div>
                  </div>
                </td>
              </tr>
              <!-- END: ROW_MONTH -->
            </table>
          </div><!-- /.span4 -->
          <div class="span4">
            <h3>{PHP.L.hits_byyear}</h3>
            <table class="table">
              <!-- BEGIN: ROW_YEAR -->
              <tr>
                <td><a href="{ADMIN_HITS_ROW_YEAR_URL}">{ADMIN_HITS_ROW_YEAR}</a></td>
                <td>{PHP.L.Hits}: {ADMIN_HITS_ROW_YEAR_HITS}</td>
                <td>{ADMIN_HITS_ROW_YEAR_PERCENTBAR}%</td>
                <td>
                  <div class="bar_back">
                    <div class="bar_front" style="width:{ADMIN_HITS_ROW_YEAR_PERCENTBAR}%;"></div>
                  </div>
                </td>
              </tr>
              <!-- END: ROW_YEAR -->
            </table>
          </div><!-- /.span4 -->
        </div><!-- /.row-fluid -->
        <!-- END: DEFAULT -->
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->