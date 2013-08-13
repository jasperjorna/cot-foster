<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.ExtraFields}</h3>
      </div><!-- /.widget-header -->
      <div class="widget-content">
        <div class="row-fluid">
          <!-- BEGIN: TABLELIST -->
          <!-- IF {PHP._GET.alltables} -->
          <a class="btn btn-small pull-right" href="{PHP|cot_url('admin', 'm=extrafields')}"><i class="icon-zoom-out iconspaced"></i> {PHP.L.ShowRelatedTables}</a>
          <!-- ELSE -->
          <a class="btn btn-small pull-right" href="{ADMIN_EXTRAFIELDS_ALLTABLES}"><i class="icon-zoom-in iconspaced"></i> {PHP.L.ShowAllTables}</a>
          <!-- ENDIF -->
          <table class="table">
            <thead>
              <th>{PHP.L.TableName}</th>
              <th>{PHP.L.BelongsTo}</th>
            </thead>
            <!-- BEGIN: ROW -->
            <tr>
              <td><a href="{ADMIN_EXTRAFIELDS_ROW_TABLEURL}">{ADMIN_EXTRAFIELDS_ROW_TABLE}</a></td>
              <td>{ADMIN_EXTRAFIELDS_ROW_ITEMNAME}<!-- IF {ADMIN_EXTRAFIELDS_ROW_TYPE} --> ({ADMIN_EXTRAFIELDS_ROW_TYPE})<!-- ENDIF --></td>
            </tr>
            <!-- END: ROW -->
          </table>
          <!-- END: TABLELIST -->

          <!-- BEGIN: TABLE -->
          <h3 class="topheading">{PHP.L.ExtraFields}:
          <!-- FOR {K}, {V} IN {PHP.extra_whitelist} -->
          <!-- IF {K} == {PHP.n} AND {V.caption} -->{V.caption}<!-- ENDIF -->
          <!-- ENDFOR -->
          </h3>
          <p>{PHP.L.adm_extrafields_table}: <strong>{PHP.n}</strong></p>
        </div><!-- /.row-fluid -->
        <div class="row-fluid">
          <div class="span6">
            <!-- IF {PHP.totalitems} > 0 -->
            <div class="accordion" id="fields">
              <!-- BEGIN: EXTRAFIELDS_ROW -->
              <div class="accordion-group">
                <div class="accordion-heading">
                  <a class="accordion-toggle" data-toggle="collapse" data-parent="#fields" href="#extf_{ADMIN_EXTRAFIELDS_ROW_ID}">
                    <!-- IF {PHP.row.field_description} -->{PHP.row.field_description}<!-- ELSE -->{ADMIN_EXTRAFIELDS_ROW_ID}<!-- ENDIF -->
                  </a>
                </div>
                <div id="extf_{ADMIN_EXTRAFIELDS_ROW_ID}" class="accordion-body collapse<!-- IF {ADMIN_EXTRAFIELDS_ROW_COUNTER_ROW} == 1 --> in<!-- ENDIF -->">
                  <div class="accordion-inner">
                    <form action="{PHP.n|cot_url('admin', 'm=extrafields&amp;n=$this&amp;a=upd')}" method="post" class="form-inline">
                      <input type="hidden" name="field_enabled[{ADMIN_EXTRAFIELDS_ROW_ID}]" value="1">
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.ExtfTitle}</strong></label>
                        <div class="controls">
                          <input type="text" name="field_description[{ADMIN_EXTRAFIELDS_ROW_ID}]" id="extf_{ADMIN_EXTRAFIELDS_ROW_ID}_description" value="{PHP.row.field_description}">
                        </div>
                        <span class="help-block">{PHP.L.ExtfTitleInfo}</span>
                      </div>
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.ExtfCode}</strong></label>
                        <div class="controls">
                          <input type="text" name="field_name[{ADMIN_EXTRAFIELDS_ROW_ID}]" id="extf_{ADMIN_EXTRAFIELDS_ROW_ID}_name" value="{PHP.row.field_name}">
                        </div>
                        <span class="help-block">{PHP.L.ExtfCodeInfo}</span>
                      </div>
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.ExtfType}</strong></label>
                        <div class="controls">
                          <select name="field_type[{ADMIN_EXTRAFIELDS_ROW_ID}]" id="extf_{ADMIN_EXTRAFIELDS_ROW_ID}_type">
                            <optgroup label="{PHP.L.ExtfTypeText}">
                              <option value="input"<!-- IF {PHP.row.field_type} == 'input' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeString}</option>
                              <option value="textarea"<!-- IF {PHP.row.field_type} == 'textarea' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeTextarea}</option>
                            </optgroup>
                            <optgroup label="{PHP.L.ExtfTypeNumber}">
                              <option value="inputint"<!-- IF {PHP.row.field_type} == 'inputint' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeInteger}</option>
                              <option value="double"<!-- IF {PHP.row.field_type} == 'double' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeDouble}</option>
                              <option value="currency"<!-- IF {PHP.row.field_type} == 'currency' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeCurrency}</option>
                              <option value="range"<!-- IF {PHP.row.field_type} == 'range' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeRange}</option>
                            </optgroup>
                            <optgroup label="{PHP.L.ExtfTypeSelection}">
                              <option value="select"<!-- IF {PHP.row.field_type} == 'select' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeSelect}</option>
                              <option value="checkbox"<!-- IF {PHP.row.field_type} == 'checkbox' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeCheckbox}</option>
                              <option value="checklistbox"<!-- IF {PHP.row.field_type} == 'checklistbox' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeChecklistbox}</option>
                              <option value="radio"<!-- IF {PHP.row.field_type} == 'radio' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeRadio}</option>
                              <option value="country"<!-- IF {PHP.row.field_type} == 'country' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeCountry}</option>
                            </optgroup>
                            <optgroup label="{PHP.L.ExtfTypeOther}">
                              <option value="datetime"<!-- IF {PHP.row.field_type} == 'datetime' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeDatetime}</option>
                              <option value="file"<!-- IF {PHP.row.field_type} == 'file' --> selected="selected"<!-- ENDIF -->>{PHP.L.ExtfTypeFile}</option>
                            </optgroup>
                          </select>
                        </div>
                      </div>
                      <label class="checkbox">
                       <input type="checkbox" name="field_required[{ADMIN_EXTRAFIELDS_ROW_ID}]"<!-- IF {PHP.row.field_required} --> checked="checked"<!-- ENDIF -->>  {PHP.L.adm_extrafield_required}
                      </label>
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.ExtfDefault}</strong></label>
                        <div class="controls">
                          <input type="text" name="field_default[{ADMIN_EXTRAFIELDS_ROW_ID}]" id="extf_{ADMIN_EXTRAFIELDS_ROW_ID}_default" value="{PHP.row.field_default}">
                        </div>
                      </div>
                      <!-- IF {PHP.row.field_type} != 'textarea' AND {PHP.row.field_type} != 'select' AND {PHP.row.field_type} != 'checkbox' AND {PHP.row.field_type} != 'radio' AND {PHP.row.field_type} != 'country' -->
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.ExtfParameters}</strong></label>
                        <div class="controls">
                          <textarea name="field_params[{ADMIN_EXTRAFIELDS_ROW_ID}]" rows="2">{PHP.row.field_params}</textarea>
                        </div>
                      </div>
                      <!-- ENDIF -->
                      <!-- IF {PHP.row.field_type} == 'input' OR {PHP.row.field_type} == 'textarea' -->
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.ExtfParser}</strong></label>
                        <div class="controls">
                          <select name="field_parse[{ADMIN_EXTRAFIELDS_ROW_ID}]">
                          <!-- FOR {TYPE} IN {PHP.parse_type} -->
                          <option value="{TYPE}"<!-- IF {PHP.row.field_parse} == {TYPE} --> selected="selected"<!-- ENDIF -->><!-- IF {TYPE} == 'Text' -->{PHP.L.None}<!-- ELSE -->{TYPE}<!-- ENDIF --></option>
                          <!-- ENDFOR -->
                          </select>
                        </div>
                      </div>
                      <!-- ENDIF -->
                      <!-- IF {PHP.row.field_type} == 'select' OR {PHP.row.field_type} == 'checklistbox' OR {PHP.row.field_type} == 'radio' -->
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.ExtfOptions}</strong></label>
                        <div class="controls">
                          <textarea name="field_variants[{ADMIN_EXTRAFIELDS_ROW_ID}]" rows="2">{PHP.row.field_variants}</textarea>
                        </div>
                      </div>
                      <!-- ENDIF -->
                      <div class="control-group">
                        <label class="control-label"><strong>{PHP.L.ExtfHTML}</strong></label>
                        <div class="controls">
                          {ADMIN_EXTRAFIELDS_ROW_HTML}
                          <h5>{PHP.L.ExtfHTMLHelp}</h5>
                          <div class="extcode">
                            <!-- IF {PHP.row.field_type} == 'input' -->{PHP.L.ExtfHTMLInfo.input}<!-- ENDIF -->
                            <!-- IF {PHP.row.field_type} == 'textarea' -->{PHP.L.ExtfHTMLInfo.textarea}<!-- ENDIF -->
                            <!-- IF {PHP.row.field_type} == 'inputint' -->{PHP.L.ExtfHTMLInfo.inputint}<!-- ENDIF -->
                            <!-- IF {PHP.row.field_type} == 'double' -->{PHP.L.ExtfHTMLInfo.double}<!-- ENDIF -->
                            <!-- IF {PHP.row.field_type} == 'currency' -->{PHP.L.ExtfHTMLInfo.currency}<!-- ENDIF -->
                            <!-- IF {PHP.row.field_type} == 'range' -->{PHP.L.ExtfHTMLInfo.range}<!-- ENDIF -->
                            <!-- IF {PHP.row.field_type} == 'select' -->{PHP.L.ExtfHTMLInfo.select}<!-- ENDIF -->
                            <!-- IF {PHP.row.field_type} == 'checkbox' -->{PHP.L.ExtfHTMLInfo.checkbox}<!-- ENDIF -->
                            <!-- IF {PHP.row.field_type} == 'checklistbox' -->{PHP.L.ExtfHTMLInfo.checklistbox}<!-- ENDIF -->
                            <!-- IF {PHP.row.field_type} == 'radio' -->{PHP.L.ExtfHTMLInfo.radio}<!-- ENDIF -->
                            <!-- IF {PHP.row.field_type} == 'country' -->{PHP.L.ExtfHTMLInfo.country}<!-- ENDIF -->
                            <!-- IF {PHP.row.field_type} == 'datetime' -->{PHP.L.ExtfHTMLInfo.datetime}<!-- ENDIF -->
                            <!-- IF {PHP.row.field_type} == 'file' -->{PHP.L.ExtfHTMLInfo.file}<!-- ENDIF -->
                          </div>
                        </div>
                      </div>
                      <div class="control-group">
                        <div class="controls">
                          <button type="submit" class="btn btn-small btn-primary">{PHP.L.Update}</button>
                          <button type="reset" class="btn btn-small">{PHP.L.Reset}</button>
                          <a title="{PHP.L.Delete}" href="{ADMIN_EXTRAFIELDS_ROW_DEL_URL}" class="btn btn-small btn-danger"><i class="icon-remove icon-white iconspaced"></i> {PHP.L.Delete}</a>
                        </div>
                      </div>
                    </form>
                  </div><!-- /.accordion-inner -->
                </div><!-- /.extf_{ADMIN_EXTRAFIELDS_ROW_ID} -->
              </div><!-- /.accordion-group -->
              <!-- END: EXTRAFIELDS_ROW -->
            </div><!-- /.accordion #fields -->
            <!-- ELSE -->
            <div class="alert alert-info">{PHP.L.ExtfNone}</div>
            <!-- ENDIF -->
            <!-- IF {PHP.pagenav.total} > 1 -->
            <div class="pagination"><ul>{ADMIN_EXTRAFIELDS_PAGINATION_PREV} {ADMIN_EXTRAFIELDS_PAGNAV} {ADMIN_EXTRAFIELDS_PAGINATION_NEXT}</ul></div>
            <span>{PHP.L.Total}: {ADMIN_EXTRAFIELDS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_EXTRAFIELDS_ROW_COUNTER_ROW}</span>
            <!-- ENDIF -->
          </div><!-- /.span6 -->

          <div class="span6">
            <h3>{PHP.L.adm_extrafield_new}</h3>
            <form action="{ADMIN_EXTRAFIELDS_URL_FORM_ADD}" method="post">
              <input type="hidden" name="field_params" id="extf_field_params" value="">
              <input type="hidden" name="field_variants" id="extf_field_variants" value="">
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.ExtfTitle}</strong></label>
                <div class="controls">
                  <input type="text" name="field_description" id="extf_field_description" value="">
                </div>
                <span class="help-block">{PHP.L.ExtfTitleInfo}</span>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.ExtfCode}</strong></label>
                <div class="controls">
                  <input type="text" name="field_name" id="extf_field_name" value="">
                </div>
                <span class="help-block">{PHP.L.ExtfCodeInfo}</span>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.ExtfType}</strong></label>
                <select name="field_type" id="extf_field_type">
                  <optgroup label="{PHP.L.ExtfTypeText}">
                    <option value="input">{PHP.L.ExtfTypeString}</option>
                    <option value="textarea">{PHP.L.ExtfTypeTextarea}</option>
                  </optgroup>
                  <optgroup label="{PHP.L.ExtfTypeNumber}">
                    <option value="inputint">{PHP.L.ExtfTypeInteger}</option>
                    <option value="double">{PHP.L.ExtfTypeDouble}</option>
                    <option value="currency">{PHP.L.ExtfTypeCurrency}</option>
                    <option value="range">{PHP.L.ExtfTypeRange}</option>
                  </optgroup>
                  <optgroup label="{PHP.L.ExtfTypeSelection}">
                    <option value="select">{PHP.L.ExtfTypeSelect}</option>
                    <option value="checkbox">{PHP.L.ExtfTypeCheckbox}</option>
                    <option value="checklistbox">{PHP.L.ExtfTypeChecklistbox}</option>
                    <option value="radio">{PHP.L.ExtfTypeRadio}</option>
                    <option value="country">{PHP.L.ExtfTypeCountry}</option>
                  </optgroup>
                  <optgroup label="{PHP.L.ExtfTypeOther}">
                    <option value="datetime">{PHP.L.ExtfTypeDatetime}</option>
                    <option value="file">{PHP.L.ExtfTypeFile}</option>
                  </optgroup>
                </select>
                <span class="help-block">{PHP.L.adm_extrafield_required|cot_checkbox(0, 'field_required', $this)}</span>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.ExtfDefault}</strong></label>
                <div class="controls">
                  <input type="text" name="field_default" id="extf_field_default">
                </div>
              </div>
              <label class="checkbox">
                <input type="checkbox" name="field_noalter" />
                {PHP.L.adm_extrafield_noalter}
              </label>
              <h4>{PHP.L.ExtfCustomization}</h4>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.ExtfParser}</strong></label>
                <div class="controls">
                  <select name="field_parse">
                    <!-- FOR {TYPE} IN {PHP.parse_type} -->
                    <option value="{TYPE}"><!-- IF {TYPE} == 'Text' -->{PHP.L.None}<!-- ELSE -->{TYPE}<!-- ENDIF --></option>
                    <!-- ENDFOR -->
                  </select>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.ExtfRegexMatch}</strong></label>
                <div class="controls">
                  <input type="text" name="regex" value="">
                </div>
                <span class="help-block">{PHP.L.ExtfRegexMatchInfo}</span>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.ExtfParser}</strong></label>
                <div class="controls">
                  <select name="field_parse">
                    <!-- FOR {TYPE} IN {PHP.parse_type} -->
                    <option value="{TYPE}"><!-- IF {TYPE} == 'Text' -->{PHP.L.None}<!-- ELSE -->{TYPE}<!-- ENDIF --></option>
                    <!-- ENDFOR -->
                  </select>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label"><strong>{PHP.L.ExtfSeparator}</strong></label>
                <div class="controls">
                  <input type="text" name="separator" value="">
                </div>
              </div>
              <div class="control-group" id="extf_type_select">
                <label class="control-label"><strong>{PHP.L.ExtfOptions}</strong></label>
                <div class="controls input-append">
                  <input type="text" name="newoption" placeholder="{PHP.L.ExtfNewOption}"><button class="btn" id="newoption"><i class="icon-plus"></i></button>
                </div>
                <ul class="unstyled" id="options"></ul>
              </div>
              <div class="control-group" id="extf_type_rangeint">
                <label class="control-label"><strong>{PHP.L.ExtfMin}</strong></label>
                <div class="controls">
                  <input type="text" name="intmin">
                </div>
                <label class="control-label"><strong>{PHP.L.ExtfMax}</strong></label>
                <div class="controls">
                  <input type="text" name="intmax">
                </div>
                <span class="help-block">{PHP.L.ExtfRangeIntInfo}</span>
              </div>
              <div class="control-group" id="extf_type_rangefloat">
                <label class="control-label"><strong>{PHP.L.ExtfMin}</strong></label>
                <div class="controls">
                  <input type="text" name="floatmin">
                </div>
                <label class="control-label"><strong>{PHP.L.ExtfMax}</strong></label>
                <div class="controls">
                  <input type="text" name="floatmax">
                </div>
                <span class="help-block">{PHP.L.ExtfRangeFloatInfo}</span>
              </div>
              <div class="control-group" id="extf_type_datetime">
                <label class="control-label"><strong>{PHP.L.ExtfMinYear}</strong></label>
                <div class="controls">
                  <input type="text" name="datemin">
                </div>
                <label class="control-label"><strong>{PHP.L.ExtfMaxYear}</strong></label>
                <div class="controls">
                  <input type="text" name="datemax">
                </div>
                <div class="controls">
                  <label>{PHP.L.ExtfFormat}:</label>
                  <input type="text" name="dateformat"value="{PHP.Ldt.datetime_medium}">
                </div>
                <span class="help-block">{PHP.L.ExtfRangeFloatInfo}</span>
              </div>

              <div class="control-group">
                <div class="controls">
                  <button type="submit" class="btn btn-primary">{PHP.L.Add}</button>
                </div>
              </div>
            </form>
          </div><!-- /.span6 -->
        </div><!-- /.row-fluid -->
        <!-- END: TABLE -->
        <script>
        $(document).ready(function() {
            var options = [];
            $('#extf_type_textarea').hide();
            $('#extf_type_select').hide();
            $('#extf_type_rangeint').hide();
            $('#extf_type_rangefloat').hide();
            $('#extf_type_checklistbox').hide();
            $('#extf_type_datetime').hide();

            function updateOptions() {
                $('#options').html('');
                $.each(options, function (i) {
                    $('#options').append('<li><a href="#" class="removeoption"><i class="icon-remove"></i></a> <span>' + options[i] + '</span></li>');
                });
                $('#extf_field_variants').val(options.toString());
            }

            $('#extf_field_type').change(function () {
                options = [];
                $('#extf_field_params').val('');
                updateOptions();
                var val = $(this).val();
                $('#customize').hide();
                if(val == 'input') {
                    $('#customize').show();
                    $('#extf_type_input').show();
                } else {
                    $('#extf_type_input').hide();
                }
                if(val == 'textarea') {
                    $('#customize').show();
                    $('#extf_type_textarea').show();
                } else {
                    $('#extf_type_textarea').hide();
                }
                if(val == 'select' || val == 'checklistbox' || val == 'radio') {
                    $('#customize').show();
                    $('#extf_type_select').show();
                } else {
                    $('#extf_type_select').hide();
                }
                if(val == 'range' || val == 'inputint') {
                    $('#customize').show();
                    $('#extf_type_rangeint').show();
                } else {
                    $('#extf_type_rangeint').hide();
                }
                if(val == 'double' || val == 'currency') {
                    $('#customize').show();
                    $('#extf_type_rangefloat').show();
                } else {
                    $('#extf_type_rangefloat').hide();
                }
                if(val == 'checklistbox') {
                    $('#customize').show();
                    $('#extf_type_checklistbox').show();
                } else {
                    $('#extf_type_checklistbox').hide();
                }
                if(val == 'datetime') {
                    $('#customize').show();
                    $('#extf_type_datetime').show();
                } else {
                    $('#extf_type_datetime').hide();
                }
            });
            $('#newoption').click(function (e) {
                e.preventDefault();
                var newopt = $('input[name=newoption]').val();
                if(newopt) {
                    options.push(newopt);
                    updateOptions();
                }
                $('input[name=newoption]').val('');
            });
            $('a.removeoption').live('click', function (e) {
                e.preventDefault();
                var opt = $(this).siblings('span:first').text();
                options.splice(options.indexOf(opt), 1);
                updateOptions();
            });
            $('input[name=intmin], input[name=intmax]').blur(function () {
                var min = $('input[name=intmin]').val();
                var max = $('input[name=intmax]').val();
                if(min !== '' && max !== '') {
                    $('#extf_field_params').val(parseInt(min) + ',' + parseInt(max));
                } else {
                    $('#extf_field_params').val('');
                }
            });
            $('input[name=floatmin], input[name=floatmax]').blur(function () {
                var min = $('input[name=floatmin]').val();
                var max = $('input[name=floatmax]').val();
                if(min !== '' && max !== '') {
                    $('#extf_field_params').val(parseFloat(min) + ',' + parseFloat(max));
                } else {
                    $('#extf_field_params').val('');
                }
            });
            $('input[name=datemin], input[name=datemax]').blur(function () {
                var min = $('input[name=datemin]').val();
                var max = $('input[name=datemax]').val();
                var format = $('input[name=dateformat]').val();
                if(min !== '' && max !== '') {
                    $('#extf_field_params').val(parseInt(min) + ',' + parseInt(max) + ',' + format);
                } else {
                    $('#extf_field_params').val('');
                }
            });
            $('input[name=regex]').blur(function () {
                $('#extf_field_params').val($(this).val());
            });
            $('input[name=separator]').blur(function () {
                $('#extf_field_params').val($(this).val());
            });
        });
        </script>
      </div><!-- /.widget-content -->
    </div><!-- /.widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->