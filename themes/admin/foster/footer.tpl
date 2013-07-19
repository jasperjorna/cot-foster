<!-- BEGIN: FOOTER -->
</div><!-- /#wrap -->
<footer<!-- IF {PHP.m} == '' --> class="animated fadeIn"<!-- ENDIF -->>
  <div class="container-fluid">
    <ul class="inline pull-left hidden-phone">
      <li><a href="{PHP|cot_url('admin')}">{PHP.L.Home}</a></li>
      <li><a href="{PHP|cot_url('admin','m=config')}">{PHP.L.Configuration}</a></li>
      <li><a href="{PHP|cot_url('admin','m=structure')}">{PHP.L.Structure}</a></li>
      <li><a href="{PHP|cot_url('admin','m=extensions')}">{PHP.L.Extensions}</a></li>
      <li><a href="{PHP|cot_url('admin','m=users')}">{PHP.L.Users}</a></li>
      <li><a href="{PHP|cot_url('admin','m=other')}">{PHP.L.Other}</a></li>
      <!-- IF {PHP.cfg.debug_mode} == 1 -->
      <div class="debug hidden-phone" title="{PHP.L.DebugActiveTip}">{PHP.L.DebugActive}</div>
      <!-- ENDIF -->
    </ul>
    <ul class="unstyled alignright pull-right">
      <li>{PHP.L.Version}: {PHP.cfg.version}</li>
      <li>{PHP.out.copyright}</li>
    </ul>
  </div>
</footer>
<script src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/js/bootstrap.js" type="text/javascript"></script>
<script src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/js/footable.js" type="text/javascript"></script>
<script src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/js/jquery.uniform.min.js" type="text/javascript"></script>
<script src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/js/jquery.cookie.js" type="text/javascript"></script>
<script src="{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/js/js.js" type="text/javascript"></script>

</body>
</html>
<!-- END: FOOTER -->