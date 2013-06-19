<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.ipsearch_title}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
        <h3 class="topheading">{PHP.L.ipsearch_searchthisuser}:</h3>
        <div class="input-append">
          <form id="search" action="{IPSEARCH_FORM_URL}" method="post">
            <input type="text" class="text" name="id" id="appendedInputButton" value="{IPSEARCH_ID}" size="16" maxlength="16" />
            <button type="submit" class="btn btn-primary">{PHP.L.Search}</button>
          </form>
        </div>
        <!-- BEGIN: IPSEARCH_RESULTS -->
        <h3>{PHP.L.ipsearch_dnsrecord}: {IPSEARCH_RES_DNS}</h3>
        <p>{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES1} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK1}:</p>
        <ul>
          <!-- BEGIN: IPSEARCH_IPMASK1 -->
          <li>{IPSEARCH_USER_IPMASK1}: {IPSEARCH_USER_LASTIP_IPMASK1}</li>
          <!-- END: IPSEARCH_IPMASK1 -->
        </ul>
        <p>{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES2} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK2}.*:</p>
        <ul>
          <!-- BEGIN: IPSEARCH_IPMASK2 -->
          <li>{IPSEARCH_USER_IPMASK2}: {IPSEARCH_USER_LASTIP_IPMASK2}</li>
          <!-- END: IPSEARCH_IPMASK2 -->
        </ul>
        <p>{PHP.L.ipsearch_found1} {IPSEARCH_TOTALMATCHES3} {PHP.L.ipsearch_found2} {IPSEARCH_IPMASK3}.*.*:</p>
        <ul>
          <!-- BEGIN: IPSEARCH_IPMASK3 -->
          <li>{IPSEARCH_USER_IPMASK3}: {IPSEARCH_USER_LASTIP_IPMASK3}</li>
          <!-- END: IPSEARCH_IPMASK3 -->
        </ul>
        <!-- END: IPSEARCH_RESULTS -->
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->