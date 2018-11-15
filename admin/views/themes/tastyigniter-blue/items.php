<?php echo get_header(); ?>
    <div class="row content">
        <div class="col-md-12">
            <div class="panel panel-default panel-table">
                <div class="panel-heading">
                    <h3 class="panel-title"><?php echo lang('text_list'); ?></h3>

                    <div class="pull-right">
                        <button class="btn btn-filter btn-xs"><i class="fa fa-filter"></i></button>
                    </div>
                </div>
                <div class="panel-body panel-filter">
                    <form role="form" id="filter-form" accept-charset="utf-8" method="GET" action="<?php echo current_url(); ?>">
                        <div class="filter-bar">
                            <div class="form-inline">
                                <div class="row">
                                    <div class="col-md-3 pull-right text-right">
                                        <div class="form-group">
                                            <input type="text" name="filter_search" class="form-control input-sm" value="<?php echo set_value('filter_search', $filter_search); ?>" placeholder="<?php echo lang('text_filter_search'); ?>"/>&nbsp;&nbsp;&nbsp;
                                        </div>
                                        <a class="btn btn-grey" onclick="filterList();" title="<?php echo lang('text_search'); ?>"><i class="fa fa-search"></i></a>
                                    </div>
                                    <div class="col-md-8 pull-left">
                                        <div class="form-group">
                                            <select name="filter_category" class="form-control input-sm">
                                                <option value=""><?php echo lang('text_filter_category'); ?></option>
                                                <?php foreach ($categories as $category) { ?>
                                                    <?php if ($category['item_category_id'] == $item_category_id) { ?>
                                                        <option value="<?php echo $category['item_category_id']; ?>" <?php echo set_select('filter_category', $category['item_category_id'], TRUE); ?> ><?php echo $category['category_name']; ?></option>
                                                    <?php } else { ?>
                                                        <option value="<?php echo $category['item_category_id']; ?>" <?php echo set_select('filter_category', $category['item_category_id']); ?> ><?php echo $category['category_name']; ?></option>
                                                    <?php } ?>
                                                <?php } ?>
                                            </select>&nbsp;
                                        </div>
                                        <div class="form-group">
                                            <select name="filter_status" class="form-control input-sm">
                                                <option value=""><?php echo lang('text_filter_status'); ?></option>
                                                <?php if ($filter_status === '1') { ?>
                                                    <option value="1" <?php echo set_select('filter_status', '1', TRUE); ?> ><?php echo lang('text_enabled'); ?></option>
                                                    <option value="0" <?php echo set_select('filter_status', '0'); ?> ><?php echo lang('text_disabled'); ?></option>
                                                <?php } else if ($filter_status === '0') { ?>
                                                    <option value="1" <?php echo set_select('filter_status', '1'); ?> ><?php echo lang('text_enabled'); ?></option>
                                                    <option value="0" <?php echo set_select('filter_status', '0', TRUE); ?> ><?php echo lang('text_disabled'); ?></option>
                                                <?php } else { ?>
                                                    <option value="1" <?php echo set_select('filter_status', '1'); ?> ><?php echo lang('text_enabled'); ?></option>
                                                    <option value="0" <?php echo set_select('filter_status', '0'); ?> ><?php echo lang('text_disabled'); ?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                        <a class="btn btn-grey" onclick="filterList();" title="<?php echo lang('text_filter'); ?>"><i class="fa fa-filter"></i></a>&nbsp;
                                        <a class="btn btn-grey" href="<?php echo page_url(); ?>" title="<?php echo lang('text_clear'); ?>"><i class="fa fa-times"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <form role="form" id="list-form" accept-charset="utf-8" method="POST" action="<?php echo current_url(); ?>">
                    <div class="table-responsive">
                        <table class="table table-striped table-border">
                            <thead>
                            <tr>
                                <th class="action">
                                    <input type="checkbox" onclick="$('input[name*=\'delete\']').prop('checked', this.checked);">
                                </th>
                                <th class="location">
                                    <a class="sort" href="<?php echo $sort_location; ?>"><?php echo lang('column_location'); ?> 
                                        <i class="fa fa-sort-<?php echo ($sort_by == 'item_location') ? $order_by_active : $order_by; ?>"></i>
                                    </a>
                                </th>
                                <th class="name" style="width:200px;">
                                    <a class="sort" href="<?php echo $sort_name; ?>"><?php echo lang('column_name'); ?>
                                        <i class="fa fa-sort-<?php echo ($sort_by == 'item_name') ? $order_by_active : $order_by; ?>"></i></a>
                                </th>
                                <th>
                                    <a class="sort" href="<?php echo $sort_price; ?>"><?php echo lang('column_price'); ?>
                                        <i class="fa fa-sort-<?php echo ($sort_by == 'item_price') ? $order_by_active : $order_by; ?>"></i></a>
                                </th>
                                <th><?php echo lang('column_category'); ?></th>
                                <th>
                                    <a class="sort" href="<?php echo $sort_stock; ?>"><?php echo lang('column_stock_qty'); ?>
                                        <i class="fa fa-sort-<?php echo ($sort_by == 'stock_qty') ? $order_by_active : $order_by; ?>"></i></a>
                                </th>
                                <th>
                                    <a class="sort" href="<?php echo $addedDate; ?>"><?php echo lang('column_added_date'); ?>
                                        <i class="fa fa-sort-<?php echo ($sort_by == 'added_date') ? $order_by_active : $order_by; ?>"></i></a>
                                </th>
                                <th class="text-center"><?php echo lang('column_status'); ?></th>
                                <!-- <th class="id"> -->
                                    <!-- <a class="sort" href="<?php echo $sort_id; ?>"><?php echo lang('column_id'); ?>
                                        <i class="fa fa-sort-<?php echo ($sort_by == 'items.item_id') ? $order_by_active
                                         : $order_by; ?>"></i></a> -->
                                <!-- </th> -->
                            </tr>
                            </thead>
                            <tbody>
                            <?php if ($items) { ?>
                                <?php foreach ($items as $item) { ?>
                                    <tr id="<?php echo $item['item_id']; ?>">
                                        <td class="action">
                                            <input type="checkbox" value="<?php echo $item['item_id']; ?>" name="delete[]"/>&nbsp;&nbsp;&nbsp;
                                            <a class="btn btn-edit" title="<?php echo lang('text_edit'); ?>" href="<?php echo $item['edit']; ?>"><i class="fa fa-pencil"></i></a>
                                        </td>
                                        <td class="left"><?php echo $item['location_name']; ?></td>
                                        <td class="name">
                                            <div class="box_edit">
                                                <?php echo $item['item_name']; ?>
                                                <a href="#" style="float:right;margin-right:10px;" class="itId edit" id="<?php echo $item['item_id']; ?>"><span class="fa fa-pencil"></span></a>
                                            </div>
                                        </td>
                                        <td class="left"><?php echo $item['item_price']; ?>&nbsp;&nbsp;
                                            <?php if ($item['special_status'] === '1' AND $item['is_special'] === '1') { ?>
                                                <a title="<?php echo lang('text_special_enabled'); ?>"><i class="fa fa-star fa-star-special"></i></a>
                                            <?php } else if ($item['special_status'] === '1' AND $item['is_special'] !== '1') { ?>
                                                <a title="<?php echo lang('text_special_expired'); ?>"><i class="fa fa-star fa-star-special disabled"></i></a>
                                            <?php } else if ($item['is_special'] === '1') { ?>
                                                <a title="<?php echo lang('text_special_disabled'); ?>"><i class="fa fa-star fa-star-special disabled"></i></a>
                                            <?php } ?>
                                        </td>
                                        <td class="left"><?php echo $item['category_name']; ?></td>
                                        <td class="left"><?php echo ($item['stock_qty'] < 1) ? '<span class="red">' . $item['stock_qty'] . '</span>' : $item['stock_qty']; ?></td>
                                        <td class="left"><?php echo date("Y M, d", strtotime($item['added_date'])); ?></td>
                                        <td class="text-center"><?php echo $item['item_status']; ?></td>
                                        <!-- <td class="id"><?php echo $item['item_id']; ?></td> -->
                                        <!-- <td><a href="#" class="itId" id="<?php echo $item['item_id']; ?>">Update</a></td> -->
                                    </tr>
                                <?php } ?>
                            <?php } else { ?>
                                <tr>
                                    <td colspan="7" class="center"><?php echo lang('text_empty'); ?></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </form>

                <div class="pagination-bar clearfix">
                    <div class="links"><?php echo $pagination['links']; ?></div>
                    <div class="info"><?php echo $pagination['info']; ?></div>
                </div>
            </div>
        </div>
    </div>

<div class="Modal" id="popupSignature" style="display:none;">
    <div class="Close" onclick="popupdisplay('3')"><span class="fa fa-close" style="color:#fff;"></span></div>
    <div class="sign-in sign-w" style="max-width:700px !important; max-height:500px; overflow:hidden;">
        <div class="full_width"><h3>Update Stock : #<span id="item_name_update" style="color:#827f82"></span></h3></div>
        <br clear="all">
        <form id="formItemEdit" action="<?php echo site_url('items/updateStock')?>" method="post">
            <input type="hidden" name="item_id" id="item_id">
            <div class="row" style="padding:5px 0px;">
                <div class="form-group">
                    <div class="col-sm-3">
                        <input type="text" class="form-control"  name="qty[]" placeholder="Qty">
                    </div>
                    <div class="col-sm-3">
                        <input type="text" class="form-control"  name="price[]" placeholder="Price">
                    </div>
                    <div class="col-sm-3">
                        <!-- <select name="location[]" id="location" class="form-control">
                            <option value=""><?php echo lang('text_select_location'); ?></option>
                            <?php foreach ($locations as $location) { ?>
                                <?php if (!empty($location['location_id'])) { ?>
                                    <?php if ($location['location_id'] == $location_id) { ?>
                                        <option value="<?php echo $location['location_id']; ?>" selected="selected"><?php echo $location['location_name']; ?></option>
                                    <?php } else { ?>
                                        <option value="<?php echo $location['location_id']; ?>"><?php echo $location['location_name']; ?></option>
                                    <?php } ?>
                                <?php } ?>
                            <?php } ?>
                        </select> -->
                        <div class="item_location_update"></div>
                    </div>
                    <div class="col-sm-3">
                        <a href="#" id="btn_add" class="btn btn-success"><span class="fa fa-plus"></span> add a row</a>
                    </div>
                </div>
            </div>
            <div id="add_box"></div>
            <div>
                <button type="submit" class="btn btn-primary">Update Stock</button>
            </div>
        </form>
        <br clear="all">
    </div>
</div> 

<script type="text/javascript"><!--
    function filterList() {
        $('#filter-form').submit();
    }
//--></script>
<script type="text/javascript"><!--
    $(document).ready(function(){

        $(".Close").click(function(e){
            $(".Modal").fadeOut(); 
        });

        $(".itId").click(function(e){
            e.preventDefault();
            var id = $(this).attr("id");
            $.ajax({
                url: '<?php echo site_url("/items/getItemName"); ?>',
                data: "id="+id,
                method: 'POST',
                dataType: 'json',
                success: function(data) {
                    $("#item_name_update").html(data.name);
                    $(".item_location_update").html(data.location);
                }
            });
            $("#item_id").val(id);
            $(".Modal").fadeIn();
        }); 
        $("#btn_add").click(function(){
            var option_block = '';
            // var funcOne = function() {
            //     this.sharedVal = '';
            // };
            var bad=0;
            $('#formItemEdit :text').each(function(){ 
                if( $.trim($(this).val()) == "" ) bad++; 
            });
    
            if (bad>0) $('.congrats').css("display","block").text(bad+' missing'); 
            
            else{ //$('.congrats').hide(); 
                var block = '<div class="row" style="padding:5px 0px;"><div class="form-group">'+
                        '<div class="col-sm-3">'+
                        '<input type="text" class="form-control"  name="qty[]" placeholder="Qty">'+
                        '</div>'+
                        '<div class="col-sm-3">'+
                        '<input type="text" class="form-control"  name="price[]" placeholder="Price">'+
                        '</div>'+
                        '<div class="col-sm-3">'+
                        '<div class=""></div>';
                    block += '</div>'+
                        '<div class="col-sm-3">'+
                        '&nbsp;'+
                        '</div></div>'+
                    '</div>';
                $("#add_box").append(block);
            }
            
        });
    });
//--></script>
<?php echo get_footer(); ?>