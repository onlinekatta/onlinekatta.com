<?php echo get_header(); ?>
<div class="row content">
    <div class="col-md-12">
        <div class="panel panel-default panel-table">
            <div class="panel-heading">
                <h3 class="panel-title"><?php echo lang('text_list'); ?></h3>

                <div class="pull-right">
                    <!--<button class="btn btn-filter btn-xs"><i class="fa fa-filter"></i></button>-->
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
                                                <?php if ($category['category_id'] == $category_id) { ?>
                                                    <option value="<?php echo $category['category_id']; ?>" <?php echo set_select('filter_category', $category['category_id'], TRUE); ?> ><?php echo $category['category_name']; ?></option>
                                                <?php } else { ?>
                                                    <option value="<?php echo $category['category_id']; ?>" <?php echo set_select('filter_category', $category['category_id']); ?> ><?php echo $category['category_name']; ?></option>
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
                        <th>Location</th>
                        <th>Name Of Manger</th>
                        <th>Status</th>
                        </thead>
                        <?php
//                            echo '<pre>';
//                            print_r($get_location);
                        foreach ($get_location as $get_details) {
                            ?>
                            <tbody>
                            <td> <a href="attendance/gethotel/<?php echo $get_details->location_id; ?>"><?php echo $get_details->location_name; ?></a></td>  
                            <td><?php echo $get_details->location_manager; ?></td>  
                            <td><?php echo $get_details->location_status; ?></td>  
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
<script type="text/javascript">
    function filterList() {
        $('#filter-form').submit();
    }
</script>
<?php echo get_footer(); ?>