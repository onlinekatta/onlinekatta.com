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
                        <table class="table table-striped table-border table-no-spacing">
                            <tbody>
                                <?php foreach ($shared_messages as $shared_message): ?>
                                    <tr>
                                        <td>
                                            <?php $long = strtotime($shared_message['posted_at']); ?>
                                            <a href="<?php echo $base_url; ?>view/<?php echo $shared_message['social_media_id']; ?>-<?php echo $long; ?>">
                                                <?php echo $shared_message['title']; ?>
                                            </a>
                                        </td>
                                        <td><span class="fa fa-<?php echo $shared_message['social_platform']; ?>"></span> <?php echo $shared_message['social_platform']; ?></td>
                                        <td><?php echo $shared_message['posted_at']; ?></td>
                                        <td>
                                            <a href="<?php echo $base_url; ?>edit/<?php echo $shared_message['social_media_id']; ?>-<?php echo $long; ?>" style="color:#595b59;margin:5px;border:1px solid #595b59;padding:3px;border-radius:2px;"><span class="fa fa-pencil"></span></a>
                                            <a href="<?php echo $base_url; ?>delete/<?php echo $shared_message['social_media_id']; ?>-<?php echo $long; ?>" style="color:#ba301d;margin:5px;border:1px solid #ba301d;padding:3px;border-radius:2px;"><span class="fa fa-trash"></span></a>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>



        </div>
    </div>
</div>
<?php echo get_footer(); ?>