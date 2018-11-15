<?php echo get_header(); ?>
<div class="row content">
    <div class="col-md-12">
        <div class="row wrap-vertical">
            <ul id="nav-tabs" class="nav nav-tabs">
                <li class="active"><a href="#general" data-toggle="tab"><?php echo lang('text_tab_general'); ?></a></li>
                <li><a href="#item-details" data-toggle="tab"><?php echo lang('text_tab_item_details'); ?> </a></li>
                <li><a href="#item-options" data-toggle="tab"><?php echo lang('text_tab_item_option'); ?> </a></li>
                <!-- <li><a href="#item-options" data-toggle="tab"><?php echo $item_id; ?></a></li> -->
            </ul>
        </div>

        <form role="form" id="edit-form" class="form-horizontal" enctype="multipart/form-data" accept-charset="utf-8" method="POST" action="<?php echo $_action; ?>">
            <div class="tab-content">
                <div id="general" class="tab-pane row wrap-all active">
                    <div class="form-group">
                        <label for="input-name" class="col-sm-3 control-label"><?php echo lang('label_location'); ?></label>
                        <div class="col-sm-5">                            
                            <select name="item_location" id="location" class="form-control">
                                <option value=""><?php echo lang('text_select_location'); ?></option>
                                <?php foreach ($locations as $location) { ?>
                                    <?php if (!empty($location['location_id'])) { ?>
                                        <?php if ($location['location_id'] == $item_location) { ?>
                                            <option value="<?php echo $location['location_id']; ?>" selected="selected"><?php echo $location['location_name']; ?></option>
                                        <?php } else { ?>
                                            <option value="<?php echo $location['location_id']; ?>"><?php echo $location['location_name']; ?></option>
                                        <?php } ?>
                                    <?php } ?>
                                <?php } ?>
                            </select>
                            <?php echo form_error('item_location', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-name" class="col-sm-3 control-label"><?php echo lang('label_name'); ?></label>
                        <div class="col-sm-5">
                            <input type="text" name="item_name" id="input-name" class="form-control" value="<?php echo set_value('item_name', $item_name); ?>" />
                            <?php echo form_error('item_name', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-description" class="col-sm-3 control-label"><?php echo lang('label_description'); ?></label>
                        <div class="col-sm-5">
                            <textarea name="item_description" id="input-description" class="form-control" rows="5"><?php echo set_value('item_description', $item_description); ?></textarea>
                            <?php echo form_error('item_description', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-price" class="col-sm-3 control-label"><?php echo lang('label_price'); ?></label>
                        <div class="col-sm-5">
                            <div class="input-group">
                                <input type="text" name="item_price" id="input-price" class="form-control" value="<?php echo set_value('item_price', $item_price); ?>" />
                                <span class="input-group-addon"><i class="fa fa-money"></i></span>
                            </div>
                            <?php echo form_error('item_price', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-name" class="col-sm-3 control-label"><?php echo lang('label_category'); ?></label>
                        <div class="col-sm-5">                            
                            <select name="item_category" id="category" class="form-control">
                                <option value=""><?php echo lang('text_select_category'); ?></option>
                                <?php foreach ($categories as $category) { ?>
                                    <?php if ($item_category === $category['item_category_id']) { ?>
                                        <option value="<?php echo $category['item_category_id']; ?>" <?php echo set_select('item_category', $category['item_category_id'], TRUE); ?> ><?php echo $category['category_name']; ?></option>
                                    <?php } else { ?>
                                        <option value="<?php echo $category['item_category_id']; ?>" <?php echo set_select('item_category', $category['item_category_id']); ?> ><?php echo $category['category_name']; ?></option>
                                    <?php } ?>
                                <?php } ?>
                            </select>
                            <?php echo form_error('item_category', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="" class="col-sm-3 control-label"><?php echo lang('label_image'); ?>
                            <span class="help-block"><?php echo lang('help_image'); ?></span>
                        </label>
                        <div class="col-sm-5">
                            <div class="thumbnail imagebox" id="selectImage">
                                <div class="preview">
                                    <img src="<?php echo $item_image_url; ?>" class="thumb img-responsive" id="thumb">
                                </div>
                                <div class="caption">
                                    <span class="name text-center"><?php echo $image_name; ?></span>
                                    <input type="hidden" name="item_photo" value="<?php echo set_value('item_photo', $item_image); ?>" id="field" />
                                    <p>
                                        <a id="select-image" class="btn btn-primary" onclick="mediaManager('field');"><i class="fa fa-picture-o"></i>&nbsp;&nbsp;<?php echo lang('text_select'); ?></a>
                                        <a class="btn btn-danger" onclick="$('#thumb').attr('src', '<?php echo $no_photo; ?>'); $('#field').attr('value', ''); $(this).parent().parent().find('.name').html('');"><i class="fa fa-times-circle"></i>&nbsp;&nbsp;<?php echo lang('text_remove'); ?> </a>
                                    </p>
                                </div>
                            </div>
                            <?php echo form_error('item_photo', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                </div>

                <div id="item-details" class="tab-pane row wrap-all">
                    <div class="form-group">
                        <label for="input-mealtime" class="col-sm-3 control-label"><?php echo lang('label_mealtime'); ?>
                            <span class="help-block"><?php echo lang('help_mealtime'); ?></span>
                        </label>
                        <div class="col-sm-5">
                            <select name="mealtime_id" id="mealtime" class="form-control">
                                <option value="0"><?php echo lang('text_mealtime_all'); ?></option>
                                <?php foreach ($mealtimes as $mealtime) { ?>
                                    <?php if ($mealtime_id === $mealtime['mealtime_id']) { ?>
                                        <option value="<?php echo $mealtime['mealtime_id']; ?>" <?php echo set_select('mealtime_id', $mealtime['mealtime_id'], TRUE); ?> ><?php echo $mealtime['mealtime_name']; ?> <?php echo $mealtime['label']; ?></option>
                                    <?php } else { ?>
                                        <option value="<?php echo $mealtime['mealtime_id']; ?>" <?php echo set_select('mealtime_id', $mealtime['mealtime_id']); ?> ><?php echo $mealtime['mealtime_name']; ?> <?php echo $mealtime['label']; ?></option>
                                    <?php } ?>
                                <?php } ?>
                            </select>
                            <?php echo form_error('mealtime_id', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-stock" class="col-sm-3 control-label"><?php echo lang('label_stock_qty'); ?>
                            <span class="help-block"><?php echo lang('help_stock_qty'); ?></span>
                        </label>
                        <div class="col-sm-5">
                            <input type="text" name="stock_qty" id="input-stock" class="form-control" value="<?php echo set_value('stock_qty', $stock_qty); ?>" />
                            <?php echo form_error('stock_qty', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="input-minimum" class="col-sm-3 control-label"><?php echo lang('label_measuring_unit'); ?>
                        </label>
                        <div class="col-sm-5">
                            <select name="measuring_unit" id="measuring_unit" class="form-control">
                                <option value="0"><?php echo lang('text_measuring_unit'); ?></option>

                                <option value="Grams" <?php if ( $measuring_unit == "Grams" ) { echo set_select('measuring_unit', $measuring_unit, TRUE); }  ?> >Grams</option>
                                <option value="Milliliters" <?php if ( $measuring_unit == "Milliliters" ) { echo set_select('measuring_unit', $measuring_unit, TRUE); } ?> >Milliliters</option>
                                <option value="Pack" <?php if ( $measuring_unit == "Pack" ) { echo set_select('measuring_unit', $measuring_unit, TRUE); } ?> >Pack (a packet full)</option>
                                <option value="Other" <?php if ( $measuring_unit == "Other" ) { echo set_select('measuring_unit', $measuring_unit, TRUE); } ?> >Other</option>

                            </select>
                            <?php echo form_error('measuring_unit', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="input-minimum" class="col-sm-3 control-label"><?php echo lang('label_minimum_qty'); ?>
                            <span class="help-block"><?php echo lang('help_minimum_qty'); ?></span>
                        </label>
                        <div class="col-sm-5">
                            <input type="text" name="minimum_qty" id="input-minimum" class="form-control" value="<?php echo set_value('minimum_qty', $minimum_qty); ?>" />
                            <?php echo form_error('minimum_qty', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-subtract-stock" class="col-sm-3 control-label"><?php echo lang('label_subtract_stock'); ?></label>
                        <div class="col-sm-5">
                            <div class="btn-group btn-group-switch" data-toggle="buttons">
                                <?php if ($subtract_stock == '1') { ?>
                                    <label class="btn btn-danger"><input type="radio" name="subtract_stock" value="0" <?php echo set_radio('subtract_stock', '0'); ?>><?php echo lang('text_no'); ?></label>
                                    <label class="btn btn-success active"><input type="radio" name="subtract_stock" value="1" <?php echo set_radio('subtract_stock', '1', TRUE); ?>><?php echo lang('text_yes'); ?></label>
                                <?php } else { ?>
                                    <label class="btn btn-danger active"><input type="radio" name="subtract_stock" value="0" <?php echo set_radio('subtract_stock', '0', TRUE); ?>><?php echo lang('text_no'); ?></label>
                                    <label class="btn btn-success"><input type="radio" name="subtract_stock" value="1" <?php echo set_radio('subtract_stock', '1'); ?>><?php echo lang('text_yes'); ?></label>
                                <?php } ?>
                            </div>
                            <?php echo form_error('subtract_stock', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-status" class="col-sm-3 control-label"><?php echo lang('label_status'); ?></label>
                        <div class="col-sm-5">
                            <div class="btn-group btn-group-switch" data-toggle="buttons">
                                <?php if ($item_status == '1') { ?>
                                    <label class="btn btn-danger"><input type="radio" name="item_status" value="0" <?php echo set_radio('item_status', '0'); ?>><?php echo lang('text_disabled'); ?></label>
                                    <label class="btn btn-success active"><input type="radio" name="item_status" value="1" <?php echo set_radio('item_status', '1', TRUE); ?>><?php echo lang('text_enabled'); ?></label>
                                <?php } else { ?>
                                    <label class="btn btn-danger active"><input type="radio" name="item_status" value="0" <?php echo set_radio('item_status', '0', TRUE); ?>><?php echo lang('text_disabled'); ?></label>
                                    <label class="btn btn-success"><input type="radio" name="item_status" value="1" <?php echo set_radio('item_status', '1'); ?>><?php echo lang('text_enabled'); ?></label>
                                <?php } ?>
                            </div>
                            <?php echo form_error('item_status', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-menu-priority" class="col-sm-3 control-label"><?php echo lang('label_item_priority'); ?></label>
                        <div class="col-sm-5">
                            <input type="text" name="item_priority" id="input-menu-priority" class="form-control" value="<?php echo set_value('item_priority', $item_priority); ?>" />
                            <?php echo form_error('item_priority', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                </div>

                <div id="item-options" class="tab-pane row wrap-all">
                    <div class="form-group">
                        <label for="input-name" class="col-sm-3 control-label"><?php echo lang('label_option'); ?></label>
                        <div class="col-sm-5">
                            <input type="text" name="item_option" id="input-status" class="form-control" value="" />
                            <?php echo form_error('item_option', '<span class="text-danger">', '</span>'); ?>
                            <input type="hidden" name="location_id" id="location_id" value="<?php echo $item_location; ?>"> 
                        </div>
                       
                    </div>
                    <br />

                    <div id="menu-option" class="">
                        <ul id="sub-tabs" class="nav nav-tabs">
                            <?php $option_row = 1; ?>
                            <?php foreach ($item_options as $item_option) { ?>
                                <li><a href="#option<?php echo $option_row; ?>" data-toggle="tab"><?php echo "{$item_option['option_name']} ({$item_option['display_type']})"; ?>&nbsp;&nbsp;<i class="fa fa-times-circle" onclick="if (confirm('<?php echo lang('alert_warning_confirm'); ?>')) { $('#sub-tabs a[rel=#option1]').trigger('click'); $('#option<?php echo $option_row; ?>').remove(); $(this).parent().parent().remove(); return false; } else { return false;}"></i></a></li>
                                <?php $option_row++; ?>
                            <?php } ?>
                            <li id="last-tab"></li>
                        </ul>

                        <div id="option-content">
                            <?php $option_row = 1; ?>
                            <?php $option_value_row = 1; ?>
                            
                            <?php if ($menu_assoc) { ?>
                                    <div id="option<?php echo $option_row; ?>" class="tab-pane row wrap-all">
                                        <div class="panel panel-default panel-table">
                                            <div class="table-responsive">
                                                <table class="table table-striped table-border table-sortable menuAssoctbl">
                                                    <thead>
                                                        <tr>
                                                            <th class="action action-one"></th>
                                                            <th class="col-sm-4"><?php echo lang('label_menu_assoc_name'); ?></th>
                                                            <th><?php echo lang('label_stock_qty'); ?></th>
                                                            <th><?php echo lang('label_substract_stock'); ?></th>
                                                            <th><?php echo lang('label_action'); ?></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <?php $counter = 0; foreach ($menu_assoc as $menu_assoc_option) { ?>
                                                            <input type="hidden" name="menu_assoc[menu_id][]" value="<?php echo $menu_assoc_option['menu_id']; ?>" />
                                                            <tr>
                                                                <td></td>
                                                                <td><?php echo $menu_assoc_option['menu_name']; ?></td>
                                                                <td><div class="col-sm-5" style="padding: 0"><input type="text" name="menu_assoc[requiredQ][]" id="input-status" class="form-control" value="<?php echo $menu_assoc_option['requiredQ']; ?>" /></div></td>
                                                                <td>
                                                                    <input type="checkbox" name="menu_assoc[substract][]" <?php if($menu_assoc_option['substract'] == 1){ echo "checked"; } ?>/> 
                                                                    <!-- <div class="btn-group btn-group-switch" data-toggle="buttons">
                                                                        <?php if ($menu_assoc_option['substract'] == '1') { ?>
                                                                            <label class="btn btn-danger"><input type="radio" name="menu_assoc[substract][]" value="0"><?php echo lang('text_disabled'); ?></label>
                                                                            <label class="btn btn-success active"><input type="radio" name="menu_assoc[substract][]" value="1"><?php echo lang('text_enabled'); ?></label>
                                                                        <?php } else { ?>
                                                                            <label class="btn btn-danger active"><input type="radio" name="menu_assoc[substract][]" value="0"><?php echo lang('text_disabled'); ?></label>
                                                                            <label class="btn btn-success"><input type="radio" name="menu_assoc[substract][]" value="1" ><?php echo lang('text_enabled'); ?></label>
                                                                        <?php } ?>
                                                                    </div> -->
                                                                </td>
                                                                
                                                                <td class="img"><a class="btn btn-danger btn-xs" onclick="confirm('This cannot be undone! Are you sure you want to do this?') ? $(this).parent().parent().remove() : false;"><i class="fa fa-times-circle"></i></a></td>
                                                            </tr>
                                                        <?php $option_row++; ?>
                                                    <?php } ?>
                                                    </table>
                                            </div>
                                        </div>
                                    </div>
                            <?php } ?>

                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript"><!--
    function deleteRow(e) {
        confirm('This cannot be undone! Are you sure you want to do this?') ? $(e).parent().parent().remove() : false;
    }
    function addOption(data) {

        if ( $(".menuAssoctbl").length > 0 ) {
            html = ''
            html += "       <tr>";
            html += '           <td class="action action-one"><input type="hidden" name="menu_assoc[menu_id][]" id="" value="'+data.id+'"></td>';
            html += '           <td class="col-sm-4">'+ data.text +'</td>';
            html += '           <td><div class="col-sm-5" style="padding: 0"><input type="text" name="menu_assoc[requiredQ][]" id="input-status" class="form-control" value="0" /></div></td>';
            html += '           <td><input type="checkbox" name="menu_assoc[substract][]"/></td>';
            html += "       <td class='img'><a class='btn btn-danger btn-xs' onclick='deleteRow(this)'><i class='fa fa-times-circle'></i></a></td>";
            html += '       </tr>';
            $('.menuAssoctbl').append(html);
        }else{
            console.log(data)
            html  = '<div id="option' + option_row + '" class="tab-pane row wrap-all">';
            html += '<input type="hidden" name="menu_assoc[menu_id][]" id="" value="'+data.id+'" />';
            html += '   <div class="panel panel-default panel-table"><div class="table-responsive">';
            html += '   <table class="table table-striped table-border table-sortable menuAssoctbl">';
            html += '       <thead><tr>';
            html += '           <th class="action action-one"></th>';
            html += '           <th class="col-sm-4"><?php echo lang('label_menu_assoc_name'); ?></th>';
            html += '           <th><?php echo lang('label_stock_qty'); ?></th>';
            html += '           <th><?php echo lang('label_substract_stock'); ?></th>';
            html += '           <th><?php echo lang('label_action'); ?></th>';
            html += '       </tr></thead>';
            html += '       <tbody><tr>';
            html += '           <td class="action action-one"></td>';
            html += '           <td class="col-sm-4">'+ data.text +'</td>';
            html += '           <td><div class="col-sm-5" style="padding: 0"><input type="text" name="menu_assoc[requiredQ][]" id="input-status" class="form-control" value="0" /></div></td>';
            html += '           <td><input type="checkbox" name="menu_assoc[substract][]"/></td>';
            html += '       <td class="img"><a class="btn btn-danger btn-xs" onclick="deleteRow(this)"><i class="fa fa-times-circle"></i></a></td>';
            html += '       </tbody></tr>';
            html += '   </table>';
            html += '   </div></div>';        
            html += '</div>';
            $('#option-content').append(html);
            option_row++;
        }
    }

    $(document).on('change','#location',function(){
        $("#location_id").val($(this).val());
    });

    $("#input-name").keyup(function(){
        var item = $(this).val();
        var location_id = $("#location_id").val();
        $.ajax({
            url: '<?php echo site_url("/items/checkItem"); ?>',
            data: "item_name="+item+"&location_id="+location_id,
            method: 'POST',
            dataType: 'json',
            success: function(data) {
                if(data.name == item){
                    alert('The item you entered already exists at that location!');
                    $("#input-name").val("");
                }
            }
        });
    });

    $('input[name=\'item_option\']').select2({
        placeholder: 'Start typing...',
        minimumInputLength: 2,
        ajax: {
            url: '<?php echo site_url("/items/autocomplete"); ?>',
            dataType: 'json',
            quietMillis: 100,
            data: function (term, page) {
                return {
                    term: term, //search term
                    location_id: $("#location_id").val(),
                    page_limit: 10 // page size
                };
            },
            results: function (data, page, query) {
                return { results: data.results };
            }
        }
    });

    $('input[name=\'item_option\']').on('select2-selecting', function(e) {
        if ($('#menu-option').hasClass('hide')) {
            $('#menu-option').removeClass('hide');
        }

        console.log(e.choice);
        addOption(e.choice);

    });
    $('#sub-tabs a:first').tab('show');
    //--></script>
<script type="text/javascript"><!--
    var option_row = <?php echo (int)$option_row; ?>;
    var option_value_row = <?php echo $option_value_row; ?>;
//alert(option_row);


    
//--></script>
<?php echo get_footer(); ?>