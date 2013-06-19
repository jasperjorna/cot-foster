<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.userimages_title}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
        <table class="table table-condensed table-striped footable">
          <thead>
            <tr>
              <th data-class="expand">{PHP.L.Code}</th>
              <th data-hide="phone">{PHP.L.userimages_width} (px)</th>
              <th data-hide="phone">{PHP.L.userimages_height} (px)</th>
              <th data-hide="phone">{PHP.L.userimages_cropratio}</th>
              <th data-hide="phone"></th>
            </tr>
          </thead>
          <tbody>
            <!-- BEGIN: USERIMG_LIST -->
            <form action="{EDIT_URL}" method="post">
              <tr>
                <td>{CODE}</td>
                <td><input type="text" name="userimg_width" size="10" value="{WIDTH}" /></td>
                <td><input type="text" name="userimg_height" size="10" value="{HEIGHT}" /></td>
                <td>
                  <select name="userimg_crop">
                    <option value="">{PHP.L.userimages_cropnone}</option>
                    <option<!-- IF {CROP} == 'fit' --> selected="selected"<!-- ENDIF --> value="fit">{PHP.L.userimages_cropfit}</option>
                    <option<!-- IF {CROP} == '1:1' --> selected="selected"<!-- ENDIF --> value="1:1">1:1</option>
                    <option<!-- IF {CROP} == '1:2' --> selected="selected"<!-- ENDIF --> value="1:2">1:2</option>
                    <option<!-- IF {CROP} == '2:3' --> selected="selected"<!-- ENDIF --> value="2:3">2:3</option>
                    <option<!-- IF {CROP} == '3:4' --> selected="selected"<!-- ENDIF --> value="3:4">3:4</option>
                    <option<!-- IF {CROP} == '4:5' --> selected="selected"<!-- ENDIF --> value="4:5">4:5</option>
                    <option<!-- IF {CROP} == '5:6' --> selected="selected"<!-- ENDIF --> value="5:6">5:6</option>
                    <option<!-- IF {CROP} == '2:1' --> selected="selected"<!-- ENDIF --> value="2:1">2:1</option>
                    <option<!-- IF {CROP} == '3:2' --> selected="selected"<!-- ENDIF --> value="3:2">3:2</option>
                    <option<!-- IF {CROP} == '4:3' --> selected="selected"<!-- ENDIF --> value="4:3">4:3</option>
                    <option<!-- IF {CROP} == '5:4' --> selected="selected"<!-- ENDIF --> value="5:4">5:4</option>
                    <option<!-- IF {CROP} == '6:5' --> selected="selected"<!-- ENDIF --> value="6:5">6:5</option>
                    <option<!-- IF {CROP} == '16:9' --> selected="selected"<!-- ENDIF --> value="16:9">16:9</option>
                    <option<!-- IF {CROP} == '16:10' --> selected="selected"<!-- ENDIF --> value="16:10">16:10</option>
                  </select>
                </td>
                <td>
                  <button type="submit" class="btn btn-small"><i class="icon-refresh iconspaced"></i> <span class="hidden-phone">{PHP.L.Update}</span></button>
                  <a href="{CODE|cot_url('admin', 'm=other&amp;p=userimages&amp;a=remove&amp;code=$this')}" class="btn btn-small btn-danger" title="{PHP.L.Delete}"><i class="icon-remove icon-white"></i></a>
                </td>
              </tr>
            </form>
            <!-- END: USERIMG_LIST -->
          </tbody>
        </table>
        <h3>{PHP.L.userimages_addnew}:</h3>
        <form action="{PHP|cot_url('admin','m=other&p=userimages&a=add')}" method="post">
          <div class="control-group">
            <label class="control-label">{PHP.L.Code}</label>
            <div class="controls">
              <input type="text" name="userimg_code" size="30">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">{PHP.L.userimages_width}</label>
            <div class="input-append">
              <input type="text" class="input-small" name="userimg_width" size="10">
              <span class="add-on">px</span>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">{PHP.L.userimages_height}</label>
            <div class="input-append">
              <input type="text" class="input-small" name="userimg_height" size="10">
              <span class="add-on">px</span>
            </div>
          </div>

          <div class="control-group">
            <label class="control-label">{PHP.L.userimages_cropratio}</label>
            <div class="controls">
              <select name="userimg_crop">
                <option value="">{PHP.L.userimages_cropnone}</option>
                <option value="fit">{PHP.L.userimages_cropfit}</option>
                <option value="1:1">1:1</option>
                <option value="1:2">1:2</option>
                <option value="2:3">2:3</option>
                <option value="3:4">3:4</option>
                <option value="4:5">4:5</option>
                <option value="5:6">5:6</option>
                <option value="2:1">2:1</option>
                <option value="3:2">3:2</option>
                <option value="4:3">4:3</option>
                <option value="5:4">5:4</option>
                <option value="6:5">6:5</option>
                <option value="16:9">16:9</option>
                <option value="16:10">16:10</option>
              </select>
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <button type="submit" class="btn btn-small"><i class="icon-ok iconspaced"></i> {PHP.L.Add}</button>
            </div>
          </div>
        </form>
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->