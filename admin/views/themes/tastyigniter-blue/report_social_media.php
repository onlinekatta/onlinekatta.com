<?php echo get_header(); ?>
    <div class="row content">
        <div class="col-md-12">

            <div class="row wrap-vertical">
                <ul id="nav-tabs" class="nav nav-tabs">
                    <li class="active"><a href="#twitter" data-toggle="tab"><i class="fa fa-twitter"></i> <?php echo lang('label_twitter'); ?></a></li>
                    <li><a href="#next" data-toggle="tab"><?php echo lang('label_others'); ?></a></li>
                </ul>
            </div>

            <div class="tab-content">
                <div id="twitter" class="tab-pane row wrap-all active">
                    <div class="panel panel-default panel-table">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="row" style="margin-bottom:20px; margin-top:10px;">
                                    <div class="col-md-6">
                                        <div style="margin:10px 0;font-weight:bold;border-bottom:1px solid #eee;margin-bottom:5px;padding-bottom:5px;"><?php echo lang('label_your_tweets'); ?></div>
                                        <div>
                                        <?php foreach($string as $items): ?>
                                            <div style='border-bottom:1px solid #eee;margin-top:5px 0px;padding:5px 0px;'>
                                                <div style="float:left;width:10%;">
                                                    <img src='<?php echo $items['user']['profile_image_url']; ?>' style='width:90%;border-radius:50%;'> 
                                                </div>
                                                <div style="float:left;width:87%">
                                                    <strong><?php echo $items['user']['name']; ?></strong> <?php echo $items['user']['screen_name']; ?> Time and Date of Tweet: <?php echo $items['created_at']; ?><br />
                                                    <?php echo $items['text']; ?><br />
                                                    <?php if(!empty($items['entities']['media'])): ?>
                                                         <img src='<?php echo $items['entities']['media'][0]['media_url']; ?>' style='width:100%;margin:5px 0;'><br />
                                                    <?php endif; ?>
                                                    <span class="fa fa-heart-o"></span> <?php echo $items['favorite_count']; ?>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                    <span class="fa fa-retweet"></span> <?php echo  $items['retweet_count']; ?>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                    List: <?php echo $items['user']['listed_count']; ?><br />
                                                </div>
                                                <br clear="all">
                                            </div>
                                        <?php endforeach; ?>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div style="margin:10px 0;">
                                            <div class="box_data"><?php echo lang('label_followers'); ?>: <?php echo $twitter_folowers; ?></div>
                                            <div class="box_data"><?php echo lang('label_followings'); ?>: <?php echo $twitter_friends; ?></div>
                                            <div class="box_data">Tweets: <?php echo $tweets; ?></div>
                                            <div class="box_data" style="padding-top:20px;">
                                                <a  style="background:#1DA1F2;border:1px solid #1DA1F2;color:#fff;padding:5px 10px;border-radius:20px;" href="https://twitter.com" target="_blank"><span class="fa fa-twitter"></span> <?php echo lang('button_twitter_account'); ?></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="next" class="tab-pane row wrap-all">
                    <div class="panel panel-default panel-table">
                        <div class="row">
                            <div class="col-md-12">
                                <ul>
                                    <li>Facebook</li>
                                    <li>Instagram</li>
                                    <li>LinkedIn</li>
                                    <li>PInterest</li>
                                    <li>Google</li>
                                </ul>
                                <?php echo lang('label_under_development'); ?>
                            </div>
                           </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script type="text/javascript">

    $(document).ready(function(){

        load_Twitter_credentials();
        load_Facebook_credentials();
        load_Google_credentials();
        load_PInterest_credentials();
        load_Instagram_credentials();
        load_Linkedin_credentials();

        function load_Twitter_credentials(){
            $.ajax({
                url: js_base_url('social_media/getCredentials/tter'),
                type: 'GET',
                success: function(json) {
                    var myTBox = '<div>'+
                        '<div class="box">Consumer token: '+json.data[0].app_id+'</div>'+
                        '<div class="box">Consumer secret: '+json.data[0].app_secret+'</div>'+
                        '<div class="box">Access Token: '+json.data[0].access_token+'</div>'+
                        '<div class="box">Access  Secret: '+json.data[0].access_token_secret+'</div>'+
                        '<div class="box">'+
                        '<button type="button" onclick="editCredential('+json.data[0].credential_for+')" class="btn btn-default">Edit</button>&nbsp;&nbsp;'+
                        '<button type="button" onclick="deleteCredential('+json.data[0].credential_for+')" class="btn btn-danger">Delete</button>'
                        '</div>'+
                        '</div>';
                    var myTHidden = '<input type="hidden" id="'+json.data[0].credential_for+'_id" value="'+json.data[0].cred_id+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_appid" value="'+json.data[0].app_id+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_appsecret" value="'+json.data[0].app_secret+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_accesstoken" value="'+json.data[0].access_token+'">';
                    $("#tter_sec").html(myTBox);
                }
            });
        }

        function load_Google_credentials(){
            $.ajax({
                url: js_base_url('social_media/getCredentials/gplus'),
                type: 'GET',
                success: function(json) {
                    var myTBox = '<div>'+
                        '<div class="box">App-ID: '+json.data[0].app_id+'</div>'+
                        '<div class="box">App-Secret: '+json.data[0].app_secret+'</div>'+
                        '<div class="box">Access Token: '+json.data[0].access_token+'</div>'+
                        '<div class="box"><button type="button" onclick="editCredential('+json.data[0].credential_for+')" class="btn btn-default">Edit</button>&nbsp;&nbsp;<button type="button" onclick="deleteCredential('+json.data[0].credential_for+')" class="btn btn-danger">Delete</button></div>'+
                        '</div>';
                    var myTHidden = '<input type="hidden" id="'+json.data[0].credential_for+'_id" value="'+json.data[0].cred_id+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_appid" value="'+json.data[0].app_id+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_appsecret" value="'+json.data[0].app_secret+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_accesstoken" value="'+json.data[0].access_token+'">';
                    $("#gplus_sec").html(myTBox);
                }
            });
        }

        function load_Facebook_credentials(){
            $.ajax({
                url: js_base_url('social_media/getCredentials/fb'),
                type: 'GET',
                success: function(json) {
                    var myTBox = '<div>'+
                        '<div class="box">App-ID: '+json.data[0].app_id+'</div>'+
                        '<div class="box">App-Secret: '+json.data[0].app_secret+'</div>'+
                        '<div class="box">Access Token: '+json.data[0].access_token+'</div>'+
                        '<div class="box"><button type="button" onclick="editCredential('+json.data[0].credential_for+')" class="btn btn-default">Edit</button>&nbsp;&nbsp;<button type="button" onclick="deleteCredential('+json.data[0].credential_for+')" class="btn btn-danger">Delete</button></div>'+
                        '</div>';
                    var myTHidden = '<input type="hidden" id="'+json.data[0].credential_for+'_id" value="'+json.data[0].cred_id+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_appid" value="'+json.data[0].app_id+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_appsecret" value="'+json.data[0].app_secret+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_accesstoken" value="'+json.data[0].access_token+'">';
                    $("#fb_sec").html(myTBox);
                }
            });
        }

        function load_PInterest_credentials(){
            $.ajax({
                url: js_base_url('social_media/getCredentials/pi'),
                type: 'GET',
                success: function(json) {
                    var myTBox = '<div>'+
                        '<div class="box">App-ID: '+json.data[0].app_id+'</div>'+
                        '<div class="box">App-Secret: '+json.data[0].app_secret+'</div>'+
                        '<div class="box">Access Token: '+json.data[0].access_token+'</div>'+
                        '<div class="box"><button type="button" onclick="editCredential('+json.data[0].credential_for+')" class="btn btn-default">Edit</button>&nbsp;&nbsp;<button type="button" onclick="deleteCredential('+json.data[0].credential_for+')" class="btn btn-danger">Delete</button></div>'+
                        '</div>';
                    var myTHidden = '<input type="hidden" id="'+json.data[0].credential_for+'_id" value="'+json.data[0].cred_id+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_appid" value="'+json.data[0].app_id+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_appsecret" value="'+json.data[0].app_secret+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_accesstoken" value="'+json.data[0].access_token+'">';
                    $("#pi_sec").html(myTBox);
                }
            });
        }

        function load_Instagram_credentials(){
            $.ajax({
                url: js_base_url('social_media/getCredentials/instagram'),
                type: 'GET',
                success: function(json) {
                    var myTBox = '<div>'+
                        '<div class="box">Consumer token: '+json.data[0].app_id+'</div>'+
                        '<div class="box">Consumer secret: '+json.data[0].app_secret+'</div>'+
                        '<div class="box">Access Token: '+json.data[0].access_token+'</div>'+
                        '<div class="box">'+
                        '<button type="button" id="btn_edit_tter" onclick="editCredential('+json.data[0].credential_for+')" class="btn btn-default">Edit</button>&nbsp;&nbsp;'+
                        '<button type="button" onclick="deleteCredential('+json.data[0].credential_for+')" class="btn btn-danger">Delete</button>'
                        '</div>'+
                        '</div>';
                    var myTHidden = '<input type="hidden" id="'+json.data[0].credential_for+'_id" value="'+json.data[0].cred_id+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_appid" value="'+json.data[0].app_id+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_appsecret" value="'+json.data[0].app_secret+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_accesstoken" value="'+json.data[0].access_token+'">';
                    $("#instagram_sec").html(myTBox);
                }
            });
        }

        function load_Linkedin_credentials(){
            $.ajax({
                url: js_base_url('social_media/getCredentials/in'),
                type: 'GET',
                success: function(json) {
                    var myTBox = '<div>'+
                        '<div class="box">Consumer token: '+json.data[0].app_id+'</div>'+
                        '<div class="box">Consumer secret: '+json.data[0].app_secret+'</div>'+
                        '<div class="box">Access Token: '+json.data[0].access_token+'</div>'+
                        '<div class="box">'+
                        '<button type="button" id="btn_edit_tter" onclick="editCredential('+json.data[0].credential_for+')" class="btn btn-default">Edit</button>&nbsp;&nbsp;'+
                        '<button type="button" onclick="deleteCredential('+json.data[0].credential_for+')" class="btn btn-danger">Delete</button>'
                        '</div>'+
                        '</div>';
                    var myTHidden = '<input type="hidden" id="'+json.data[0].credential_for+'_id" value="'+json.data[0].cred_id+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_appid" value="'+json.data[0].app_id+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_appsecret" value="'+json.data[0].app_secret+'">'+
                        '<input type="hidden" id="'+json.data[0].credential_for+'_accesstoken" value="'+json.data[0].access_token+'">';
                    $("#in_sec").html(myTBox);
                }
            });
        }

        $('#activate_fb').click(function () {
            if ($(this).is(':checked')) {
                $('#fb_app_id').attr('disabled', false); 
                $('#fb_app_secret').attr('disabled', false); 
                $('#fb_access_token').attr('disabled', false); 
                $('#fb_content').attr('disabled', false); 
                $('#btn_send_fb').attr('disabled', false); 
            } else {
                $('#fb_app_id').attr('disabled', true); 
                $('#fb_app_secret').attr('disabled', true); 
                $('#fb_access_token').attr('disabled', true); 
                $('#fb_content').attr('disabled', true); 
                $('#btn_send_fb').attr('disabled', true); 
            }
        });

        var isChecked= document.getElementById('activate_fb').checked;
        if(isChecked){ //checked
            $('#fb_app_id').attr('disabled', false); 
            $('#fb_app_secret').attr('disabled', false); 
            $('#fb_access_token').attr('disabled', false); 
            $('#fb_content').attr('disabled', false); 
            $('#btn_send_fb').attr('disabled', false); 
        }else{ //unchecked
            $('#fb_app_id').attr('disabled', true); 
            $('#fb_app_secret').attr('disabled', true); 
            $('#fb_access_token').attr('disabled', true); 
            $('#fb_content').attr('disabled', true); 
            $('#btn_send_fb').attr('disabled', true);
        }

        $("#btn_send_fb").click(function(){
            var formData = $("#formFacebook").serialize();
            $.ajax({
                url: js_site_url('social_media/addCredentials/fb'),
                type: 'POST',
                dataType: '',
                data: formData,
                success: function(data) {
                    load_Facebook_credentials();
                    $("#fb_app_id").val("");
                    $("#fb_app_secret").val("");
                    $("#fb_access_token").val("");
                }
            });
        });

        $('#activate_tter').click(function () {
            if ($(this).is(':checked')) {
                $('#tter_app_id').attr('disabled', false); 
                $('#tter_app_secret').attr('disabled', false); 
                $('#tter_access_token').attr('disabled', false); 
                $('#tter_access_token_secret').attr('disabled', false); 
                $('#btn_send_tter').attr('disabled', false); 
            } else {
                $('#tter_app_id').attr('disabled', true); 
                $('#tter_app_secret').attr('disabled', true); 
                $('#tter_access_token').attr('disabled', true); 
                $('#tter_access_token_secret').attr('disabled', true);
                $('#btn_send_tter').attr('disabled', true); 
            }
        });

        var isChecked= document.getElementById('activate_tter').checked;
        if(isChecked){ //checked
            $('#tter_app_id').attr('disabled', false); 
            $('#tter_app_secret').attr('disabled', false); 
            $('#tter_access_token').attr('disabled', false); 
            $('#tter_access_token_secret').attr('disabled', false); 
            $('#btn_send_tter').attr('disabled', false);  
        }else{ //unchecked
            $('#tter_app_id').attr('disabled', true); 
            $('#tter_app_secret').attr('disabled', true); 
            $('#tter_access_token').attr('disabled', true); 
            $('#tter_access_token_secret').attr('disabled', true);
            $('#btn_send_tter').attr('disabled', true);
        }

        $("#btn_send_tter").click(function(){
            var formData = $("#formTwitter").serialize();
            $.ajax({
                url: js_base_url('social_media/addCredentials/tter'),
                type: 'POST',
                dataType: '',
                data: formData,
                success: function(data) {
                    load_Twitter_credentials();
                    $("#tter_sec").html(myTBox);
                    $("#tter_app_id").val("");
                    $("#tter_app_secret").val("");
                    $("#tter_access_token").val("");
                    $("#tter_access_token_secret").val("");
                }
            });
        });

        $('#activate_gplus').click(function () {
            if ($(this).is(':checked')) {
                $('#gplus_app_id').attr('disabled', false); 
                $('#gplus_app_secret').attr('disabled', false); 
                $('#gplus_access_token').attr('disabled', false); 
                $('#btn_send_gplus').attr('disabled', false); 
            } else {
                $('#gplus_app_id').attr('disabled', true); 
                $('#gplus_app_secret').attr('disabled', true); 
                $('#gplus_access_token').attr('disabled', true); 
                $('#btn_send_gplus').attr('disabled', true); 
            }
        });

        var isChecked= document.getElementById('activate_gplus').checked;
        if(isChecked){ //checked
            $('#gplus_app_id').attr('disabled', false); 
            $('#gplus_app_secret').attr('disabled', false); 
            $('#gplus_access_token').attr('disabled', false); 
            $('#btn_send_gplus').attr('disabled', false); 
        }else{ //unchecked
            $('#gplus_app_id').attr('disabled', true); 
            $('#gplus_app_secret').attr('disabled', true); 
            $('#gplus_access_token').attr('disabled', true); 
            $('#btn_send_gplus').attr('disabled', true);
        }

        $("#btn_send_gplus").click(function(){
            var formData = $("#formGoogle").serialize();
            $.ajax({
                url: js_site_url('social_media/addCredentials/gplus'),
                type: 'POST',
                dataType: '',
                data: formData,
                success: function(data) {
                    load_Google_credentials();
                    $("#gplus_app_id").val("");
                    $("#gplus_app_secret").val("");
                    $("#gplus_access_token").val("");
                }
            });
        });

        $('#activate_in').click(function () {
            if ($(this).is(':checked')) {
                $('#in_app_id').attr('disabled', false); 
                $('#in_app_secret').attr('disabled', false); 
                $('#in_access_token').attr('disabled', false); 
                $('#btn_send_in').attr('disabled', false); 
            } else {
                $('#in_app_id').attr('disabled', true); 
                $('#in_app_secret').attr('disabled', true); 
                $('#in_access_token').attr('disabled', true); 
                $('#btn_send_in').attr('disabled', true); 
            }
        });

        var isChecked= document.getElementById('activate_in').checked;
        if(isChecked){ //checked
            $('#in_app_id').attr('disabled', false); 
            $('#in_app_secret').attr('disabled', false); 
            $('#in_access_token').attr('disabled', false); 
            $('#btn_send_in').attr('disabled', false);
        }else{ //unchecked
            $('#in_app_id').attr('disabled', true); 
            $('#in_app_secret').attr('disabled', true); 
            $('#in_access_token').attr('disabled', true); 
            $('#btn_send_in').attr('disabled', true); 
        }

        $("#btn_send_in").click(function(){
            var formData = $("#formLinkedin").serialize();
            $.ajax({
                url: js_base_url('social_media/addCredentials/in'),
                type: 'POST',
                dataType: '',
                data: formData,
                success: function(data) {
                    load_Linkedin_credentials();
                    $("#in_app_id").val("");
                    $("#in_app_secret").val("");
                    $("#in_access_token").val("");
                }
            });
        });

        $('#activate_pi').click(function () {
            if ($(this).is(':checked')) {
                $('#pi_app_id').attr('disabled', false); 
                $('#pi_app_secret').attr('disabled', false); 
                $('#pi_access_token').attr('disabled', false); 
                $('#btn_send_pi').attr('disabled', false); 
            } else {
                $('#pi_app_id').attr('disabled', true); 
                $('#pi_app_secret').attr('disabled', true); 
                $('#pi_access_token').attr('disabled', true); 
                $('#btn_send_pi').attr('disabled', true); 
            }
        });

        var isChecked= document.getElementById('activate_pi').checked;
        if(isChecked){ //checked
            $('#pi_app_id').attr('disabled', false); 
            $('#pi_app_secret').attr('disabled', false); 
            $('#pi_access_token').attr('disabled', false); 
            $('#btn_send_pi').attr('disabled', false); 
        }else{ //unchecked
            $('#pi_app_id').attr('disabled', true); 
            $('#pi_app_secret').attr('disabled', true); 
            $('#pi_access_token').attr('disabled', true); 
            $('#btn_send_pi').attr('disabled', true); 
        }

        $("#btn_send_pi").click(function(){
            var formData = $("#formPInterest").serialize();
            $.ajax({
                url: js_base_url('social_media/addCredentials/pi'),
                type: 'POST',
                dataType: '',
                data: formData,
                success: function(data) {
                    load_PInterest_credentials();
                    $("#pi_app_id").val("");
                    $("#pi_app_secret").val("");
                    $("#pi_access_token").val("");
                }
            });
        });

        $('#activate_instagram').click(function () {
            if ($(this).is(':checked')) {
                $('#instagram_app_id').attr('disabled', false); 
                $('#instagram_app_secret').attr('disabled', false); 
                $('#instagram_access_token').attr('disabled', false); 
                $('#btn_send_instagram').attr('disabled', false); 
            } else {
                $('#instagram_app_id').attr('disabled', true); 
                $('#instagram_app_secret').attr('disabled', true); 
                $('#instagram_access_token').attr('disabled', true); 
                $('#btn_send_instagram').attr('disabled', true); 
            }
        });

        var isChecked= document.getElementById('activate_instagram').checked;
        if(isChecked){ //checked
            $('#instagram_app_id').attr('disabled', false); 
            $('#instagram_app_secret').attr('disabled', false); 
            $('#instagram_access_token').attr('disabled', false); 
            $('#btn_send_instagram').attr('disabled', false);
        }else{ //unchecked
            $('#instagram_app_id').attr('disabled', true); 
            $('#instagram_app_secret').attr('disabled', true); 
            $('#instagram_access_token').attr('disabled', true); 
            $('#btn_send_instagram').attr('disabled', true); 
        }

        $("#btn_send_instagram").click(function(){
            var formData = $("#formInstagram").serialize();
            $.ajax({
                url: js_base_url('social_media/addCredentials/instagram'),
                type: 'POST',
                dataType: '',
                data: formData,
                success: function(data) {
                    load_Instagram_credentials();
                    $("#instagram_app_id").val("");
                    $("#instagram_app_secret").val("");
                    $("#instagram_access_token").val("");
                }
            });
        });

    });
</script>
<script type="text/javascript"><!--
    function deleteCredential(for){
        $.ajax({
            url: js_base_url('social_media/deleteCredentials/'+for),
            type: 'POST',
            success: function(data) {
                $("#"+for+"_sec").html("");
            });
        });
    }
//--></script>
<script type="text/javascript"><!--
    function editCredential(for){
        $("#"+for+"_app_id").val($("#"+for+"_appid"));
        $("#"+for+"_app_secret").val($("#"+for+"_appsecret"));
    }
//--></script>
<?php echo get_footer(); ?>