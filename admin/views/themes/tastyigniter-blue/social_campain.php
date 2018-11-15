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
                        <form role="form" id="message-form" accept-charset="utf-8" method="POST" action="<?php echo current_url(); ?>" enctype="multipart/form-data" >
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label for="input-recipient" class="col-sm-3 control-label"><?php echo lang('label_title'); ?></label>
                                        <div class="col-sm-9">
                                            <input type="text" name="title" id="title" class="form-control" value="<?=(($draft_info['title'])? $draft_info['title'] : "");?>" placeholder="Associate the reference to this post" />
                                            <?php echo form_error('title', '<span class="text-danger">', '</span>'); ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div style="margin:15px 0 15px 15px;">
                                            <?php 
                                                foreach ($social_media as $socialmedia) { 
                                                    if($socialmedia->is_social_activated):
                                            ?>
                                                <input type="checkbox" name="socials[]" value="<?php echo $socialmedia->label_min; ?>">
                                                <i class="fa fa-<?php echo $socialmedia->label_min; ?>"></i> <?php echo $socialmedia->label; ?> &nbsp;&nbsp;&nbsp;
                                            <?php
                                                    endif; 
                                                } 
                                            ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="row" style="margin:15px 0;" >
                                            <div class="image_upload" class="col-sm-6" style="padding:10px;">
                                                <label for="file-profile">
                                                    <span class="fa fa-upload" title="upload an image" id="upload_image"></span>
                                                    <strong>Upload picture</strong><br>
                                                    <span style="font-size:10px;color:#8d8e8d;font-style:italic;"><?php echo lang('label_share_image'); ?></span>
                                                 </label>
                                                <input id="file-profile" name="file-profile" accept="image/*" type="file"/>
                                            </div>
                                            <div id="myProgress">
                                                <div id="myBar"></div>
                                            </div>
                                            <div id="box_display_image" class="col-sm-6" style="display:none;">
                                                <a href="#" id="btn_show_img">
                                                    <span id="link" style="font-family:verdana;font-size:10px;margin-left:10px;">view the image</span>
                                                    <div id="box_image_preview">
                                                        <img src="" id="preview_upload_profile">
                                                    </div>
                                                </a>
                                                <a href="#" id="btn_close_img" style="margin-right:10px;float:right;"><span class="fa fa-close"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <textarea name="feed" id="feed" class="form-control" placeholder="Type your post description here" style="resize:vertical;"><?=(($draft_info['feed'])? $draft_info['feed'] : "");?></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <button class="btn btn-primary" type="submit"><?php echo lang('button_share'); ?></button>
                                        <button class="btn btn-default" type="button" onclick="saveAsDraft();"><?php echo lang('button_draft_share'); ?></button>
                                        <span id="chars" style="color:#727272;margin-right:5px;" class="pull-right"></span>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<script type="text/javascript"><!--
function saveAsDraft() {
    $('#message-form').append('<input type="hidden" name="save_as_draft" value="1" />');
    $('#message-form').submit();
}
//--></script>
<script type="text/javascript">

function readIMGProfile(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            var elem = document.getElementById("myBar");   
            var width = 1;
            var id = setInterval(frame, 10);
            function frame() {
                if (width >= 100) {
                    clearInterval(id);
                    $("#myProgress").fadeOut(function(){
                        $('#box_display_image').fadeIn(300);
                        $('#preview_upload_profile').attr('src', e.target.result);
                    });
                } else {
                    width++; 
                    elem.style.width = width + '%'; 
                }
            }
        }
        reader.readAsDataURL(input.files[0]);
    }
}

$("#file-profile").change(function(){
    $("#myProgress").fadeIn();
    readIMGProfile(this);
});

$("#btn_close_img").click(function(){
    $("#box_display_image").fadeOut(function(){
        $("#file-profile").val(null);
    });
});

$("#btn_show_img").click(function(){
    $('#box_image_preview').toggle();
});

var maxLength = 140;
$('#feed').keypress(function(e) {
    var length = $(this).val().length;
    var length = maxLength-length;
    $('#chars').text(length);
    if (e.which < 0x20) {
        // e.which < 0x20, then it's not a printable character
        // e.which === 0 - Not a character
        return;     // Do nothing
    }
    if ($(this).val().length == maxLength) {
        e.preventDefault();
    } else if ($(this).val().length > maxLength) {
        // Maximum exceeded
        this.value = this.value.substring(0, max);
    }
});

</script>
<?php echo get_footer(); ?>