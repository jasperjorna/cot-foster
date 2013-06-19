<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.PFS}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
				<!-- IF {PHP.is_adminwarnings} -->
				<div class="error">
					<h4>{PHP.L.Message}</h4>
					<p>{PHP.L.adm_nogd}</p>
				</div>
				<!-- ENDIF -->
				<a title="{PHP.L.Configuration}" href="{ADMIN_PFS_URL_CONFIG}" class="btn btn-small"><i class="icon-wrench iconspaced"></i>{PHP.L.Configuration}</a>
				<a href="{ADMIN_PFS_URL_ALLPFS}" class="btn btn-small">{PHP.L.adm_allpfs}</a>
				<a href="{ADMIN_PFS_URL_SFS}" class="btn btn-small">{PHP.L.SFS}</a>
				<h3>{PHP.L.adm_gd}:</h3>
				<ul>
					<!-- BEGIN: PFS_ROW -->
					<li>{ADMIN_PFS_DATAS_NAME}: <span class="strong">{ADMIN_PFS_DATAS_ENABLE_OR_DISABLE}</span></li>
					<!-- END: PFS_ROW -->
				</ul>
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->