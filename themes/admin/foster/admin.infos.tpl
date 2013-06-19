<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">

    <div class="span6">
      <div class="widget">
        <div class="widget-header">
          <h3>{PHP.L.Webserver}</h3>
        </div><!-- /.widget-header -->
        <div class="widget-content">
          <table class="table table-bordered table-striped">
            <tr>
              <th>{PHP.L.adm_phpver}</th>
              <td>{ADMIN_INFOS_PHPVER}</td>
            </tr>
            <tr>
              <th>{PHP.L.adm_zendver}</th>
              <td>{ADMIN_INFOS_ZENDVER}</td>
            </tr>
            <tr>
              <th>{PHP.L.adm_interface}</th>
              <td>{ADMIN_INFOS_INTERFACE}</td>
            </tr>
            <tr>
              <th>{PHP.L.adm_os}</th>
              <td>{ADMIN_INFOS_OS}</td>
            </tr>
              <tr>
              <th>{PHP.L.adm_cachedrivers}</th>
              <td>
              <!-- IF {ADMIN_INFOS_CACHEDRIVERS} -->
              {ADMIN_INFOS_CACHEDRIVERS}
              <!-- ELSE -->{PHP.L.None}<!-- ENDIF -->
              </td>
            </tr>
          </table>
        </div><!-- /.widget-content -->
      </div><!-- /.widget -->
    </div><!-- /.span6 -->

    <div class="span6">
      <div class="widget">
        <div class="widget-header">
          <h3>{PHP.L.ClockConfig}</h3>
        </div><!-- /.widget-header -->
        <div class="widget-content">
          <table class="table table-bordered table-striped">
            <tr>
              <th>{PHP.L.RawTime}</th>
              <td>{PHP.sys.now|gmdate('c', $this)}</td>
            </tr>
            <tr>
              <th>{PHP.L.GMTTime}</th>
              <td>{ADMIN_INFOS_GMTTIME}</td>
            </tr>
            <tr>
              <th>{PHP.L.LocalTime}</th>
              <td>{ADMIN_INFOS_USRTIME} {ADMIN_INFOS_TIMETEXT}</td>
            </tr>
          </table>
          <div class="alert alert-info">{PHP.L.TimeHelp}</div>
        </div><!-- /.widget-content -->
      </div><!-- /.widget -->
    </div><!-- /.span6 -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->

<!-- IF {PHP.usr.isadmin} -->
<div class="row-fluid">
  <div class="container-fluid">
    <div class="span12">
      <div class="widget">
        <div class="widget-header">
          <h3><a name="servervars"></a>{PHP.L.ServerVars}</h3>
        </div><!-- /.widget-header -->
        <div class="widget-content">
          <table class="table table-bordered table-striped">
            <!-- FOR {KEY},{VALUE} IN {PHP._SERVER} -->
            <tr>
              <th>{KEY}</th>
              <td class="wordbreak">{VALUE}</td>
            </tr>
            <!-- ENDFOR -->
          </table>
        </div><!-- /.widget-content -->
      </div><!-- /.widget -->
    </div><!-- /.span12 -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- ENDIF -->
<!-- END: MAIN -->