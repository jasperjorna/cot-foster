<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.Users}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">

        <!-- IF !{PHP.g} -->
        <div class="pull-right">
          <a class="btn btn-small" href="{PHP|cot_url('users')}" title="{PHP.L.ListAllUsers}">
            <i class="icon-share-alt iconspaced"></i> <span class="hidden-phone">{PHP.L.ListAllUsers}</span>
          </a>
          <a class="btn btn-small" href="{ADMIN_USERS_EXTRAFIELDS_URL}" title="{PHP.L.ExtraFields}">
            <i class="icon-list-alt iconspaced"></i> <span class="hidden-phone">{PHP.L.ExtraFields}</span>
          </a>
          <a class="btn btn-small" href="{ADMIN_USERS_URL}" title="{PHP.L.Configuration}">
            <i class="icon-wrench iconspaced"></i> <span class="hidden-phone">{PHP.L.Configuration}</span>
          </a>
        </div>
        <!-- ENDIF -->

        <!-- BEGIN: ADMIN_USERS_DEFAULT -->
        <h3 class="topheading">{PHP.L.Usergroups}</h3>

        <table class="table table-striped table-condensed footable">
          <thead>
            <tr>
              <th data-class="expand">{PHP.L.Group}</th>
              <th>{PHP.L.Members}</th>
              <th data-hide="phone">{PHP.L.Enabled}</th>
              <!-- IF {PHP.hidden_groups} -->
              <th data-hide="phone">{PHP.L.Hidden}</th>
              <!-- ENDIF -->
              <th data-hide="phone">{PHP.L.Level}</th>
              <th data-hide="phone" class="alignright">{PHP.L.Action}</th>
            </tr>
          </thead>
          <tbody>
            <!-- BEGIN: USERS_ROW -->
            <tr>
              <td>
                <a href="{ADMIN_USERS_ROW_GRP_JUMPTO_URL}" title="{PHP.L.ListMaingroup}">
                  #{ADMIN_USERS_ROW_GRP_ID}: {ADMIN_USERS_ROW_GRP_NAME}
                </a>
              </td>
              <td>{ADMIN_USERS_ROW_GRP_COUNT_MEMBERS}</td>
              <td>{ADMIN_USERS_ROW_GRP_DISABLED}</td>
              <!-- IF {PHP.hidden_groups} -->
              <td>{ADMIN_USERS_ROW_GRP_HIDDEN}</td>
              <!-- ENDIF -->
              <td>{PHP.row.grp_level}</td>
              <td class="alignright">
                <br class="visible-phone">
                <a class="btn btn-small" title="{PHP.L.ListMaingroup}" href="{ADMIN_USERS_ROW_GRP_JUMPTO_URL}"><i class="icon-share-alt iconspaced"></i> <span class="hidden-phone">{PHP.L.Open}</span></a>
                <a class="btn btn-small" title="{PHP.L.ListGroup}" href="{ADMIN_USERS_ROW_GRP_ID|cot_url('users', 'gm=$this')}"><i class="icon-list"></i></a>
                <a class="btn btn-small" title="{PHP.L.Edit}" href="{ADMIN_USERS_ROW_GRP_TITLE_URL}"><i class="icon-pencil iconspaced"></i><span class="hidden-phone">{PHP.L.Edit}</span></a>

                <!-- IF {ADMIN_USERS_ROW_GRP_SKIPRIGHTS} -->
                <a class="btn btn-small disabled"><i class="icon-eye-open iconspaced"></i> {PHP.L.short_rights}</a>
                <!-- ELSE -->
                <a class="btn btn-small" title="{PHP.L.Rights}" href="{ADMIN_USERS_ROW_GRP_RIGHTS_URL}"><i class="icon-eye-open iconspaced"></i> {PHP.L.short_rights}</a>
                <!-- ENDIF -->

                <!-- IF {ADMIN_USERS_ROW_GRP_ID} > 5 AND {ADMIN_USERS_ROW_GRP_COUNT_MEMBERS} == 0 -->
                <a class="btn btn-small btn-danger" title="{PHP.L.Remove}" href="{ADMIN_USERS_ROW_GRP_ID|cot_url('admin', 'm=users&n=edit&a=delete&g=$this')}&x={PHP.sys.xk}"><i class="icon-remove icon-white"></i></a>
                <!-- ELSE -->
                <a class="btn btn-small btn-danger disabled"><i class="icon-remove icon-white"></i></a>
                <!-- ENDIF -->
              </td>
            </tr>
            <!-- END: USERS_ROW -->
          </tbody>
        </table>
        <hr>
        <h3>{PHP.L.AddGroup}</h3>
        <form action="{ADMIN_USERS_FORM_URL}" method="post" class="form-inline">
          <div class="row-fluid">
            <div class="span2">
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.GroupName}</strong></label>
                <div class="controls">
                  <input type="text" name="rname" value="{PHP.rgroups.grp_name}" maxlength="64">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.Title}</strong></label>
                <div class="controls">
                  <input type="text" name="rtitle" value="{PHP.rgroups.grp_title}" maxlength="64">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.Level}</strong></label>
                <div class="controls">
                  <select name="rlevel">
                    <!-- FOR {I} IN {PHP|range(0,99)} -->
                    <option value="{I}"<!-- IF {I} == 1 --> selected="selected"<!-- ENDIF -->>{I}</option>
                    <!-- ENDFOR -->
                  </select>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.Description}</strong></label>
                <div class="controls">
                  <input type="text" name="rdesc" value="{PHP.rgroups.grp_desc}" maxlength="64">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.Icon}</strong></label>
                <div class="controls">
                  <input type="text" name="ricon" value="{PHP.rgroups.grp_icon}" maxlength="128">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.Alias}</strong></label>
                <div class="controls">
                  <input type="text" name="ralias" value="{PHP.rgroups.grp_alias}" maxlength="24">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.adm_copyrightsfrom}</strong></label>
                <div class="controls">
                  {ADMIN_USERS_FORM_SELECTBOX_GROUPS}
                </div>
              </div>
            </div><!-- /.span2 -->
            <div class="span5">
              <label class="checkbox">
                <h5>{PHP.L.DisableGroup}:</h5>
                <label class="radio"><input type="radio" name="rdisabled" value="1"> {PHP.L.Yes}</label>
                <label class="radio"><input type="radio" name="rdisabled" value="0" checked="checked"> {PHP.L.No}</label>
                <br>{PHP.L.DisableGroupInfo}
              </label>
              <hr>
              <label class="checkbox">
                <h5>{PHP.L.MaintenanceAccess}:</h5>
                <label class="radio"><input type="radio" name="rmtmode" value="1"> {PHP.L.Yes}</label>
                <label class="radio"><input type="radio" name="rmtmode" value="0" checked="checked"> {PHP.L.No}</label>
                <br>{PHP.L.MaintenanceAccessInfo}
              </label>
              <hr>
              <!-- IF {PHP.hidden_groups} -->
              <label class="checkbox">
                <h5>{PHP.L.HideGroup}:</h5>
                <label class="radio"><input type="radio" name="rhidden" value="1"> {PHP.L.Yes}</label>
                <label class="radio"><input type="radio" name="rhidden" value="0" checked="checked"> {PHP.L.No}</label>
                <br>{PHP.L.HideGroupInfo}
              </label>
              <hr>
              <!-- ENDIF -->
            </div><!-- /.span5 -->
            <div class="span5">
              <label class="checkbox">
                <h5>{PHP.L.DisableRights}:</h5>
                <label class="radio"><input type="radio" name="rskiprights" value="1"> {PHP.L.Yes}</label>
                <label class="radio"><input type="radio" name="rskiprights" value="0" checked="checked"> {PHP.L.No}</label>
                <br>{PHP.L.DisableRightsInfo}
              </label>
              <!-- IF {PHP.pfs_is_active} -->
              <hr>
              <h5>{PHP.L.PFS}</h5>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.MaxFileSize}</strong></label>
                <div class="controls">
                  <div class="input-append">
                    <input type="text" name="rmaxfile" value="1000" maxlength="16"><span class="add-on">kb</span>
                  </div>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.FileSpace}</strong></label>
                <div class="controls">
                  <div class="input-append">
                    <input type="text" name="rmaxtotal" value="1000" maxlength="16"><span class="add-on">kb</span>
                  </div>
                </div>
              </div>
              {PHP.L.FileSpaceInfo}
              <!-- ENDIF -->
            </div><!-- /.span5 -->
          </div><!-- /.row-fluid -->
          <div class="row-fluid">
            <br>
            <div class="control-group">
              <div class="controls">
                <button type="submit" class="btn btn-primary">{PHP.L.Add}</button>
                <button type="reset" class="btn">{PHP.L.Reset}</button>
              </div>
            </div>
          </div><!-- /.row-fluid -->
        </form>
        <script type="text/javascript">
        $(function(){
          $('input[name=rname]').keyup(function(){
            $('input[name=ralias]').val($(this).val().toLowerCase());
          });
        });
        </script>
        <!-- END: ADMIN_USERS_DEFAULT -->

        <!-- BEGIN: ADMIN_USERS_EDIT -->
        <div class="pull-right">
          <a href="{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT_URL}" class="btn btn-small"><i class="icon-share-alt iconspaced"></i> {PHP.L.Open}</a>
          <!-- IF !{ADMIN_USERS_EDITFORM_SKIPRIGHTS} -->
          <a href="{ADMIN_USERS_EDITFORM_RIGHT_URL}" class="btn btn-small"><i class="icon-eye-open iconspaced"></i> {PHP.L.Rights}</a>
          <!-- ENDIF -->
          <!-- IF {PHP.g} > 5 -->
          <a href="{ADMIN_USERS_EDITFORM_DEL_URL}" class="btn btn-small btn-danger"><i class="icon-remove icon-white iconspaced"></i> {PHP.L.RemoveGroup}</a>
          <!-- ENDIF -->
        </div>

        <h3 class="topheading">{PHP.L.Group}: {PHP.row.grp_name}</h3>
        <p>{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT|cot_declension($this, 'Users')} {PHP.L.InThisGroup}</p>

        <form action="{ADMIN_USERS_EDITFORM_URL}" method="post" class="form-inline">
          <div class="row-fluid">
            <div class="span2">
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.GroupName}</strong></label>
                <div class="controls">
                  <input type="text" name="rname" value="{PHP.row.grp_name}" maxlength="64">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.Title}</strong></label>
                <div class="controls">
                  <input type="text" name="rtitle" value="{PHP.row.grp_title}" maxlength="64">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.Level}</strong></label>
                <div class="controls">
                  <select name="rlevel">
                    <!-- FOR {I} IN {PHP|range(0,99)} -->
                    <option value="{I}"<!-- IF {I} == {PHP.row.grp_level} --> selected="selected"<!-- ENDIF -->>{I}</option>
                    <!-- ENDFOR -->
                  </select>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.Description}</strong></label>
                <div class="controls">
                  <input type="text" name="rdesc" value="{PHP.row.grp_desc}" maxlength="64">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.Icon}</strong></label>
                <div class="controls">
                  <input type="text" name="ricon" value="{PHP.row.grp_icon}" maxlength="128">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.Alias}</strong></label>
                <div class="controls">
                  <input type="text" name="ralias" value="{PHP.row.grp_alias}" maxlength="24">
                </div>
              </div>
            </div><!-- /.span2 -->
            <div class="span5">
              <label class="checkbox">
                <h5>{PHP.L.DisableRights}:</h5>
                <input type="radio" name="rskiprights" value="1"<!-- IF {PHP.row.grp_skiprights} --> checked="checked"<!-- ENDIF -->> {PHP.L.Yes}
                <input type="radio" name="rskiprights" value="0"<!-- IF !{PHP.row.grp_skiprights} --> checked="checked"<!-- ENDIF -->> {PHP.L.No}
                <br>{PHP.L.DisableRightsInfo}
              </label>
              <hr>
              <label class="checkbox">
                <h5>{PHP.L.DisableGroup}:</h5>
                <input type="radio" name="rdisabled" value="1"<!-- IF {PHP.row.grp_disabled} --> checked="checked"<!-- ENDIF -->> {PHP.L.Yes}
                <input type="radio" name="rdisabled" value="0"<!-- IF !{PHP.row.grp_disabled} --> checked="checked"<!-- ENDIF -->> {PHP.L.No}
                <br>{PHP.L.DisableGroupInfo}
              </label>
              <hr>
              <label class="checkbox">
                <h5>{PHP.L.MaintenanceAccess}:</h5>
                <input type="radio" name="rmtmode" value="1"<!-- IF {PHP.row.grp_maintenance} --> checked="checked"<!-- ENDIF -->> {PHP.L.Yes}
                <input type="radio" name="rmtmode" value="0"<!-- IF !{PHP.row.grp_maintenance} --> checked="checked"<!-- ENDIF -->> {PHP.L.No}
                <br>{PHP.L.MaintenanceAccessInfo}
              </label>
              <hr>
            </div><!-- /.span5 -->
            <div class="span5">
              <!-- IF {PHP.hidden_groups} -->
              <label class="checkbox">
                <h5>{PHP.L.HideGroup}:</h5>
                <input type="radio" name="rhidden" value="1"<!-- IF {PHP.row.grp_hidden} --> checked="checked"<!-- ENDIF -->> {PHP.L.Yes}
                <input type="radio" name="rhidden" value="0"<!-- IF !{PHP.row.grp_hidden} --> checked="checked"<!-- ENDIF -->> {PHP.L.No}
                <br>{PHP.L.HideGroupInfo}
              </label>
              <!-- ENDIF -->
              <!-- IF {PHP.pfs_is_active} -->
              <hr>
              <h4>{PHP.L.PFS}</h4>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.MaxFileSize}</strong></label>
                <div class="controls">
                  <div class="input-append">
                    <input type="text" name="rmaxfile" value="{PHP.row.grp_pfs_maxfile}" maxlength="16"><span class="add-on">kb</span>
                  </div>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.FileSpace}</strong></label>
                <div class="controls">
                  <div class="input-append">
                    <input type="text" name="rmaxtotal" value="{PHP.row.grp_pfs_maxtotal}" maxlength="16"><span class="add-on">kb</span>
                  </div>
                </div>
              </div>
              {PHP.L.FileSpaceInfo}
              <!-- ENDIF -->
            </div><!-- /.span5 -->
          </div><!-- /.row-fluid -->
          <div class="row-fluid">
            <div class="control-group">
              <div class="controls">
                <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
                <button type="reset" class="btn">{PHP.L.Reset}</button>
              </div>
            </div>
          </div>
        </form>
        <!-- END: ADMIN_USERS_EDIT -->
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<script type="text/javascript">
$(function(){
  $('input[name=rname]').keyup(function(){
    $('input[name=ralias]').val($(this).val().toLowerCase());
  });
  $('input[name=rskiprights]').click(function(){
    if ($(this).val() == 1){
      $('select[name=rcopyrightsfrom]').attr('disabled', 'disabled');
    } else {
      $('select[name=rcopyrightsfrom]').removeAttr('disabled');
    }
  });
});
</script>
<!-- END: MAIN -->