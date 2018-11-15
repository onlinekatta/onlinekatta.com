<?php echo get_header(); ?>
    <div class="row content">
        <div class="col-md-12">

            <div class="row wrap-vertical">
                <ul id="nav-tabs" class="nav nav-tabs">
                    <li class="active"><a href="#twitter" data-toggle="tab"><i class="fa fa-twitter"></i> <?php echo lang('label_twitter'); ?></a></li>
                    <!-- <li><a href="#facebook" data-toggle="tab"><i class="fa fa-facebook"></i> <?php echo lang('label_facebook'); ?></a></li>
                    <li><a href="#linkedin" data-toggle="tab"><i class="fa fa-linkedin"></i> <?php echo lang('label_linkedin'); ?></a></li>
                    <li><a href="#instagram" data-toggle="tab"><i class="fa fa-instagram"></i> <?php echo lang('label_instagram'); ?></a></li>
                    <li><a href="#pinterest" data-toggle="tab"><i class="fa fa-pinterest"></i> <?php echo lang('label_pinterest'); ?></a></li>
                    <li><a href="#VK" data-toggle="tab"><i class="fa fa-vk"></i> VK</a></li>
                    <li><a href="#gplus" data-toggle="tab"><i class="fa fa-google"></i> <?php echo lang('label_google'); ?></a></li> -->
                </ul>
            </div>

            
            <div class="tab-content">
                <div id="twitter" class="tab-pane row wrap-all  active">
                        <div class="panel panel-default panel-table">
                            <div class="row">
                                <div class="col-md-12">
                                    <form id="formTwitter">
                                        <div style="margin-bottom:10px;border-bottom:1px solid #eee;padding-bottom:10px;">
                                            <input type="checkbox" name="activate_tter" id="activate_tter"
                                                <?php 
                                                    foreach ($social_media as $socialmedia): 
                                                    if($socialmedia->label_min === 'twitter'):
                                                ?>
                                                    checked
                                                <?php
                                                    endif; 
                                                    endforeach; 
                                                ?>
                                            />   
                                           <?php echo lang('label_use_twitter'); ?>
                                        </div>
                                        
                                        <div class="row" style="margin-bottom:20px; margin-top:10px;">
                                            <div class="col-md-6">
                                                <input type="hidden" class="form-control" name="tter_cid" id="tter_cid">
                                                <div style="margin-bottom:10px;">
                                                    <input type="text" class="form-control" name="tter_app_id" id="tter_app_id" placeholder="App ID" disabled="true" required="">
                                                    <input type="hidden" class="form-control" name="tter_for" id="tter_for" value="tter">
                                                    <input type="hidden" class="form-control" name="tter_label" id="tter_label" value="Twitter" required="">
                                                </div>
                                                <div style="margin-bottom:10px;">
                                                    <input type="text" class="form-control" name="tter_app_secret" id="tter_app_secret" placeholder="App Secret" disabled="true">
                                                </div>
                                                <div style="margin-bottom:10px;">
                                                    <input type="text" class="form-control" name="tter_access_token" id="tter_access_token" placeholder="Access Token" disabled="true" required="">
                                                </div>
                                                <div style="margin-bottom:10px;">
                                                    <input type="text" class="form-control" name="tter_access_token_secret" id="tter_access_token_secret" placeholder="Access Token Secret" disabled="true" required="">
                                                </div>
                                                <div style="margin-bottom:10px;">
                                                    <input type="text" class="form-control" name="tter_username" id="tter_username" placeholder="Twitter Username" disabled="true" required="">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="row">
                                                    <div class="col-md-12"><h4><?php echo lang('label_twitter_credentials'); ?></h4></div>
                                                    <div class="col-md-12">
                                                        <div id="tter_sec"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top:5px;">
                                            <button type="button" disabled="true" id="btn_send_tter" name="btn_send_tter" class="btn btn-primary"><i class="fa fa-twitter"></i> <?php echo lang('button_save'); ?></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                <div id="facebook" class="tab-pane row wrap-all">
                    <div class="panel panel-default panel-table">
                        <div class="row">
                            <div class="col-md-12">
                                <form id="formFacebook">
                                    <div style="margin-bottom:10px;border-bottom:1px solid #eee;padding-bottom:10px;">

                                        <input 
                                            type="checkbox" name="activate_fb" id="activate_fb"
                                            <?php 
                                                foreach ($social_media as $socialmedia): 
                                                if($socialmedia->label_min === 'facebook'):
                                            ?>
                                                checked
                                            <?php
                                                endif; 
                                                endforeach; 
                                            ?>
                                        /> 
                                        use Facebook to share

                                    </div>
                                    <div class="row" style="margin-bottom:20px; margin-top:10px;">
                                        <div class="col-md-6">
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="fb_app_id" id="fb_app_id" placeholder="App ID" disabled="true" required="">
                                                <input type="hidden" class="form-control" name="fb_for" id="fb_for" value="fb">
                                                <input type="hidden" class="form-control" name="fb_label" id="fb_label" value="Facebook">
                                            </div>
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="fb_app_secret" id="fb_app_secret" placeholder="App Secret" disabled="true" required="">
                                            </div>
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="fb_access_token" id="fb_access_token" placeholder="Access Token" disabled="true" required="">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-md-12"><h4>Facebook Credentials</h4></div>
                                                <div class="col-md-12">
                                                    <div id="fb_sec"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="margin-top:5px;">
                                        <button type="button" disabled="true" id="btn_send_fb" name="btn_send_fb" class="btn btn-primary"><i class="fa fa-facebook"></i> Save</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        </div>
                    </div>
                    
                    <div id="linkedin" class="tab-pane row wrap-all">
                        <div class="panel panel-default panel-table">
                            <div class="row">
                                <div class="col-md-12">
                                <form id="formLinkedin">
                                    <div style="margin-bottom:10px;border-bottom:1px solid #eee;padding-bottom:10px;">
                                         <input type="checkbox" name="activate_in" id="activate_in"
                                        <?php 
                                                foreach ($social_media as $socialmedia): 
                                                if($socialmedia->label_min === 'linkedin'):
                                            ?>
                                                checked
                                            <?php
                                                endif; 
                                                endforeach; 
                                            ?>
                                        />  
                                        use LinkedIn to share
                                    </div>
                                    <div class="row" style="margin-bottom:20px; margin-top:10px;">
                                        <div class="col-md-6">
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="in_app_id" id="in_app_id" placeholder="App ID" disabled="true">
                                                <input type="hidden" class="form-control" name="in_for" id="in_for" value="in">
                                                <input type="hidden" class="form-control" name="in_label" id="in_label" value="LinkedIn">
                                            </div>
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="in_app_secret" id="in_app_secret" placeholder="App Secret" disabled="true">
                                            </div>
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="in_access_token" id="in_access_token" placeholder="Access Token" disabled="true">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-md-12"><h4>LinkedIn Credentials</h4></div>
                                                <div class="col-md-12">
                                                    <div id="in_sec"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="margin-top:5px;">
                                        <div style="margin-top:5px;">
                                            <button type="button" disabled="true" id="btn_send_in" name="btn_send_in" class="btn btn-primary"><i class="fa fa-linkedin"></i> Save</button>
                                        </div>
                                    </div>
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="instagram" class="tab-pane row wrap-all">
                        <div class="panel panel-default panel-table">
                            <div class="row">
                                <div class="col-md-12">
                                <form id="formInstagram">
                                    <div style="margin-bottom:10px;border-bottom:1px solid #eee;padding-bottom:10px;">
                                        <input type="checkbox" name="activate_instagram" id="activate_instagram"
                                        <?php 
                                                foreach ($social_media as $socialmedia): 
                                                if($socialmedia->label_min === 'instagram'):
                                            ?>
                                                checked
                                            <?php
                                                endif; 
                                                endforeach; 
                                            ?>
                                        />  
                                        use Instagram
                                    </div>
                                    <div class="row" style="margin-bottom:20px; margin-top:10px;">
                                        <div class="col-md-6">
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="instagram_app_id" id="instagram_app_id" placeholder="App ID" disabled="true">
                                                <input type="hidden" class="form-control" name="instagram_for" id="instagram_for" value="instagram">
                                                <input type="hidden" class="form-control" name="instagram_label" id="instagram_label" value="Instagram">
                                            </div>
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="instagram_app_secret" id="instagram_app_secret" placeholder="App Secret" disabled="true">
                                            </div>
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="instagram_access_token" id="instagram_access_token" placeholder="Access Token" disabled="true">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-md-12"><h4>Instagram Credentials</h4></div>
                                                <div class="col-md-12">
                                                    <div id="instagram_sec"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="margin-top:5px;">
                                        <div style="margin-top:5px;">
                                            <button type="button" disabled="true" id="btn_send_instagram" name="btn_send_instagram" class="btn btn-primary"><i class="fa fa-instagram"></i> Save</button>
                                        </div>
                                    </div>
                                    </form>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    
                    <div id="pinterest" class="tab-pane row wrap-all">
                        <div class="panel panel-default panel-table">
                            <div class="row">
                                <div class="col-md-12">
                                <form id="formPInterest">
                                    <div style="margin-bottom:10px;border-bottom:1px solid #eee;padding-bottom:10px;">
                                        <input type="checkbox" name="activate_pi" id="activate_pi"
                                        <?php 
                                                foreach ($social_media as $socialmedia): 
                                                if($socialmedia->label_min === 'pinterest'):
                                            ?>
                                                checked
                                            <?php
                                                endif; 
                                                endforeach; 
                                            ?>
                                        />  
                                        use PInterest
                                    </div>
                                    <div class="row" style="margin-bottom:20px; margin-top:10px;">
                                        <div class="col-md-6">
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="pi_app_id" id="pi_app_id" placeholder="App ID" disabled="true">
                                                <input type="hidden" class="form-control" name="pi_for" id="pi_for" value="pi">
                                                <input type="hidden" class="form-control" name="pi_label" id="pi_label" value="PInterest">
                                            </div>
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="pi_app_secret" id="pi_app_secret" placeholder="App Secret" disabled="true">
                                            </div>
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="pi_access_token" id="pi_access_token" placeholder="Access Token" disabled="true">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-md-12"><h4>PInterest Credentials</h4></div>
                                                <div class="col-md-12">
                                                    <div id="pi_sec"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="margin-top:5px;">
                                        <div style="margin-top:5px;">
                                            <button type="button" disabled="true" id="btn_send_pi" name="btn_send_pi" class="btn btn-primary"><i class="fa fa-pinterest"></i> Save</button>
                                        </div>
                                    </div>
                                    </form>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div id="VK" class="tab-pane row wrap-all">
                        <div class="panel panel-default panel-table">
                            <div class="row">
                                <div class="col-md-12">
                                <form id="formVK">
                                    <div style="margin-bottom:10px;border-bottom:1px solid #eee;padding-bottom:10px;">
                                        <input type="checkbox" name="activate_VK" id="activate_VK"
                                        <?php 
                                                foreach ($social_media as $socialmedia): 
                                                if($socialmedia->label_min === 'vk'):
                                            ?>
                                                checked
                                            <?php
                                                endif; 
                                                endforeach; 
                                            ?>
                                        />  
                                        use VK
                                    </div>
                                    <div class="row" style="margin-bottom:20px; margin-top:10px;">
                                        <div class="col-md-6">
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="VK_app_id" id="VK_app_id" placeholder="App ID" disabled="true">
                                                <input type="hidden" class="form-control" name="VK_for" id="VK_for" value="VK">
                                                <input type="hidden" class="form-control" name="VK_label" id="VK_label" value="VK">
                                            </div>
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="VK_app_secret" id="VK_app_secret" placeholder="App Secret" disabled="true">
                                            </div>
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="VK_access_token" id="VK_access_token" placeholder="Access Token" disabled="true">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-md-12"><h4>VK Credentials</h4></div>
                                                <div class="col-md-12">
                                                    <div id="VK_sec"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="margin-top:5px;">
                                        <div style="margin-top:5px;">
                                            <button type="button" disabled="true" id="btn_send_VK" name="btn_send_VK" class="btn btn-primary"><i class="fa fa-vk"></i> Save</button>
                                        </div>
                                    </div>
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div id="gplus" class="tab-pane row wrap-all">
                        <div class="panel panel-default panel-table">
                            <div class="row">
                                <div class="col-md-12">
                                <form id="formGoogle">
                                    <div style="margin-bottom:10px;border-bottom:1px solid #eee;padding-bottom:10px;">
                                        <input type="checkbox" name="activate_gplus" id="activate_gplus"
                                        <?php 
                                                foreach ($social_media as $socialmedia): 
                                                if($socialmedia->label_min === 'google'):
                                            ?>
                                                checked
                                            <?php
                                                endif; 
                                                endforeach; 
                                            ?>
                                        />  
                                        use Google
                                    </div>
                                    <div class="row" style="margin-bottom:20px; margin-top:10px;">
                                        <div class="col-md-6">
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="gplus_app_id" id="gplus_app_id" placeholder="App ID" disabled="true">
                                                <input type="hidden" class="form-control" name="gplus_for" id="gplus_for" value="gplus">
                                                <input type="hidden" class="form-control" name="gplus_label" id="gplus_label" value="Google">
                                            </div>
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="gplus_app_secret" id="gplus_app_secret" placeholder="App Secret" disabled="true">
                                            </div>
                                            <div style="margin-bottom:10px;">
                                                <input type="text" class="form-control" name="gplus_access_token" id="gplus_access_token" placeholder="Access Token" disabled="true">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-md-12"><h4>Google Credentials</h4></div>
                                                <div class="col-md-12">
                                                    <div id="gplus_sec"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="margin-top:5px;">
                                        <div style="margin-top:5px;">
                                            <button type="button" disabled="true" id="btn_send_gplus" name="btn_send_gplus" class="btn btn-primary"><i class="fa fa-google"></i> Save</button>
                                        </div>
                                    </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
    </div>

<script type="text/javascript">

        function editCredential(){
            $("#tter_cid").val($("#tter_id").val());
            $("#tter_app_id").val($("#tter_appid").val());
            $("#tter_app_secret").val($("#tter_appsecret").val());
            $("#tter_access_token").val($("#tter_accesstoken").val());
            $("#tter_access_token_secret").val($("#tter_accesstokensecret").val());
            $("#tter_username").val($("#tter_user").val());
        }

        function deleteCredential(){
            $.ajax({
                url: js_base_url('social_media/deleteCredentials/tter'),
                type: 'POST',
                success: function(data) {
                    $("#tter_sec").html("");
                }
            });
        }

    // $(document).ready(function(){

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
                        '<div class="box">Username: '+json.data[0].username+'</div>'+
                        '<div>'+
                        '<input type="hidden" id="tter_id" value="'+json.data[0].cred_id+'">'+
                        '<input type="hidden" id="tter_appid" value="'+json.data[0].app_id+'">'+
                        '<input type="hidden" id="tter_appsecret" value="'+json.data[0].app_secret+'">'+
                        '<input type="hidden" id="tter_accesstoken" value="'+json.data[0].access_token+'">'+
                        '<input type="hidden" id="tter_accesstokensecret" value="'+json.data[0].access_token_secret+'">'+
                        '<input type="hidden" id="tter_user" value="'+json.data[0].username+'">'+
                        '</div>'+
                        '<div class="box">'+
                        '<button type="button" onclick="editCredential()" class="btn btn-default"><span class="fa fa-pencil"></span> Edit</button>&nbsp;&nbsp;'+
                        '<button type="button" onclick="deleteCredential()" class="btn btn-danger"><span class="fa fa-trash"></span> Delete</button>'
                        '</div>'+
                        '</div>';
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
                $('#tter_username').attr('disabled', false); 
                $('#btn_send_tter').attr('disabled', false); 
            } else {
                $('#tter_app_id').attr('disabled', true); 
                $('#tter_app_secret').attr('disabled', true); 
                $('#tter_access_token').attr('disabled', true); 
                $('#tter_access_token_secret').attr('disabled', true);
                $('#tter_username').attr('disabled', true);
                $('#btn_send_tter').attr('disabled', true); 
            }
        });

        var isChecked= document.getElementById('activate_tter').checked;
        if(isChecked){ //checked
            $('#tter_app_id').attr('disabled', false); 
            $('#tter_app_secret').attr('disabled', false); 
            $('#tter_access_token').attr('disabled', false); 
            $('#tter_access_token_secret').attr('disabled', false); 
            $('#tter_username').attr('disabled', false); 
            $('#btn_send_tter').attr('disabled', false);  
        }else{ //unchecked
            $('#tter_app_id').attr('disabled', true); 
            $('#tter_app_secret').attr('disabled', true); 
            $('#tter_access_token').attr('disabled', true); 
            $('#tter_access_token_secret').attr('disabled', true);
            $('#tter_username').attr('disabled', true);
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
                    $("#tter_username").val("");
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

    // });
</script>
<script type="text/javascript"><!--
    
//--></script>
<?php echo get_footer(); ?>