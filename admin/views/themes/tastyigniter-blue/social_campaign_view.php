<?php echo get_header(); ?>
<div class="row content">
	<div class="col-md-12">
        <div class="row">
            <div class="col-xs-12 col-md-2">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?php echo lang('text_folders'); ?></h3>
                    </div>
                    <div class="panel-body wrap-none">
                        <div class="list-group list-group-hover">
                            <?php foreach ($folders as $key => $folder) { ?>
                                <?php if ($key === $filter_folder) { ?>
                                    <a class="list-group-item active" href="<?php echo $folder['url']; ?>"><i class="fa <?php echo $folder['icon']; ?>"></i>&nbsp;&nbsp;<?php echo $folder['title']; ?>&nbsp;&nbsp;<span class="label label-primary pull-right"><?php echo $folder['badge']; ?></span></a>
                                <?php } else { ?>
                                    <a class="list-group-item" href="<?php echo $folder['url']; ?>"><i class="fa <?php echo $folder['icon']; ?>"></i>&nbsp;&nbsp;<?php echo $folder['title']; ?>&nbsp;&nbsp;<span class="label label-primary pull-right"><?php echo $folder['badge']; ?></span></a>
                                <?php } ?>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                
            </div>

            <div class="col-xs-12 col-md-10">
                <div class="panel panel-default panel-table">
                    <div class="panel-heading">
                        <h3 class="panel-title"><?php echo lang('text_shared_title'); ?></h3>
                    </div>
                    <div class="panel-body">
                        <table class="table">
                            <tbody>
                                <tr><td><label for="input-recipient" class="col-sm-3 control-label"><?php echo lang('label_title'); ?></label></td><td><?php echo $shared_message['title']; ?></td></tr>
                                <tr><td><label for="input-recipient" class="col-sm-3 control-label"><?php echo lang('label_message'); ?></label></td><td></td></tr>
                                <tr>    
                                    <td></td>
                                    <td><?php echo $shared_message['feed']; ?></td></tr>
                                <tr>
                                    <td></td>
                                    <td>
                                    <?php if($shared_message['image']): ?>
                                        <img src="<?php echo assets_url('images/'.$shared_message['image']); ?>" style="width:500px;">
                                    <?php else: ?>
                                        <img src="<?php echo assets_url('images/data/no_photo.png'); ?>" style="width:500px;">
                                    <?php endif; ?>
                                </td></tr>
                                <tr><td><label for="input-recipient" class="col-sm-3 control-label"><?php echo lang('label_platform'); ?></label></td><td><?php echo $shared_message['social_platform']; ?></td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>



        </div>
    </div>
</div>
<?php echo get_footer(); ?>