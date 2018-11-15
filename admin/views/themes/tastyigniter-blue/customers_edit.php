<?php
echo get_header();
$logged_in = $this->user->getId();
?>
<style type="text/css">
    .thead{
        font-weight: bold;
    }
    /*@media screen and (max-width: 1024px) {
            #table_mess{
                    font-size: 10px;
            }
            #table_amount{
                    font-size: 9px;
            }
    }
    
    @media screen and (max-width: 950px) {
            #table_mess{
                    font-size: 10px;
            }
            #table_amount{
                    font-size: 9px;
            }
    }
    
    
    @media screen and (max-width: 650px) {
            #table_mess{
                    font-size: 9px;
            }
            #table_amount{
                    font-size: 8px;
            }
    }
    
    @media screen and (max-width: 480px) {
            #table_mess{
                    font-size: 8px;
                    width: 90%;
                    overflow-y: scroll;
            }
            #table_amount{
                    font-size: 7px;
            }
    }*/
    #table_mess {
        display: block;
        overflow-x: auto;
        white-space: nowrap;
    }
</style>
<script type="text/javascript">
    $(document).ready(function () {
        $('a[data-toggle="tab"]').on('show.wrap-vertical.tab', function (e) {
            localStorage.setItem('activeTab', $(e.target).attr('href'));
        });
        var activeTab = localStorage.getItem('activeTab');
        if (activeTab) {
            $('#nav-tabs a[href="' + activeTab + '"]').tab('show');
        }
    });
</script>

<div class="row content">
    <div class="col-md-12">
        <div class="row wrap-vertical">
            <ul id="nav-tabs" class="nav nav-tabs">
                <li class="active">
                    <a href="#general" data-toggle="tab"><?php echo lang('text_tab_general'); ?></a>
                </li>
                <li>
                    <a href="#addresses" data-toggle="tab"><?php echo lang('text_tab_address'); ?></a>
                </li>
                <li>
                    <a href="#stats" data-toggle="tab"><?php echo lang('text_tab_stats'); ?></a>
                </li>
            </ul>
        </div>

        <form role="form" id="edit-form" class="form-horizontal" accept-charset="utf-8" method="POST" action="<?php echo $_action; ?>">
            <input type="hidden" name="active_tab" id="active-tab" value="#general">
            <div class="tab-content">
                <div id="general" class="tab-pane row wrap-all active">
                    <div class="form-group">
                        <label for="input-first-name" class="col-sm-3 control-label"><?php echo lang('label_first_name'); ?></label>
                        <div class="col-sm-5">
                            <input type="text" name="first_name" id="input-first-name" class="form-control" value="<?php echo set_value('first_name', $first_name); ?>" />
                            <?php echo form_error('first_name', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-last-name" class="col-sm-3 control-label"><?php echo lang('label_last_name'); ?></label>
                        <div class="col-sm-5">
                            <input type="text" name="last_name" id="input-last-name" class="form-control" value="<?php echo set_value('last_name', $last_name); ?>" />
                            <?php echo form_error('last_name', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-email" class="col-sm-3 control-label"><?php echo lang('label_email'); ?></label>
                        <div class="col-sm-5">
                            <input type="text" name="email" id="input-email" class="form-control" value="<?php echo set_value('email', $email); ?>" />
                            <?php //echo form_error('email', '<span class="text-danger">', '</span>');  ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-telephone" class="col-sm-3 control-label"><?php echo lang('label_telephone'); ?></label>
                        <div class="col-sm-5">
                            <input onkeypress="return isNumberKey(event)" maxlength="10" type="text" name="telephone" id="input-telephone" class="form-control" value="<?php echo set_value('telephone', $telephone); ?>" />
                            <?php //echo form_error('telephone', '<span class="text-danger">', '</span>');  ?>
                        </div>
                    </div>
                    <script>
                        function isNumberKey(evt) {
                            var charCode = (evt.which) ? evt.which : event.keyCode
                            if (charCode > 31 && (charCode < 48 || charCode > 57))
                                return false;
                            return true;
                        }
                    </script>
                    <div class="form-group">
                        <label for="input-alt-telephone" class="col-sm-3 control-label"><?php echo 'Altername Telephone'//echo lang('label_telephone');                                                                                                                                                                                                                                 ?></label>
                        <div class="col-sm-5">
                            <input onkeypress="return isNumberKey(event)" type="text" maxlength="10" name="alt_telephone" id="input-alt-telephone" class="form-control" value="<?php echo set_value('alt_telephone', $alt_telephone); ?>" />
                            <?php //echo form_error('telephone', '<span class="text-danger">', '</span>');   ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-password" class="col-sm-3 control-label"><?php echo lang('label_password'); ?>
                            <span class="help-block"><?php echo lang('help_password'); ?></span>
                        </label>
                        <div class="col-sm-5">
                            <input type="password" name="password" id="input-password" class="form-control" value="<?php echo set_value('password'); ?>" autocomplete="off" />
                            <?php echo form_error('password', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-confirm-password" class="col-sm-3 control-label"><?php echo lang('label_confirm_password'); ?></label>
                        <div class="col-sm-5">
                            <input type="password" name="confirm_password" id="input-confirm-password" class="form-control" value="" />
                            <?php echo form_error('confirm_password', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-security-question" class="col-sm-3 control-label"><?php echo lang('label_security_question'); ?></label>
                        <div class="col-sm-5">
                            <select name="security_question_id" id="input-security-question" class="form-control">
                                <option value="">— Select —</option>
                                <?php foreach ($questions as $question) { ?>
                                    <?php if ($question['id'] === $security_question) { ?>
                                        <option value="<?php echo $question['id']; ?>" selected="selected"><?php echo $question['text']; ?></option>
                                    <?php } else { ?>
                                        <option value="<?php echo $question['id']; ?>"><?php echo $question['text']; ?></option>
                                    <?php } ?>
                                <?php } ?>
                            </select>
                            <?php echo form_error('security_question_id', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-security-answer" class="col-sm-3 control-label"><?php echo lang('label_security_answer'); ?></label>
                        <div class="col-sm-5">
                            <input type="text" name="security_answer" id="input-security-answer" class="form-control" value="<?php echo set_value('security_answer', $security_answer); ?>" />
                            <?php echo form_error('security_answer', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-customer-group-id" class="col-sm-3 control-label"><?php echo lang('label_customer_group'); ?></label>
                        <div class="col-sm-5">
                            <select name="customer_group_id" id="input-customer-group-id" class="form-control">
                                <?php foreach ($customer_groups as $customer_group) { ?>
                                    <?php if ($customer_group['customer_group_id'] === $customer_group_id) { ?>
                                        <option value="<?php echo $customer_group['customer_group_id']; ?>" <?php echo set_select('customer_group_id', $customer_group['customer_group_id'], TRUE); ?> ><?php echo $customer_group['group_name']; ?> - <?php echo $customer_group['location_name']; ?></option>
                                    <?php } else { ?>
                                        <option value="<?php echo $customer_group['customer_group_id']; ?>" <?php echo set_select('customer_group_id', $customer_group['customer_group_id']); ?> ><?php echo $customer_group['group_name']; ?> - <?php echo $customer_group['location_name']; ?></option>
                                    <?php } ?>
                                <?php } ?>
                            </select>
                            <?php echo form_error('customer_group_id', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-newsletter" class="col-sm-3 control-label"><?php echo lang('label_newsletter'); ?></label>
                        <div class="col-sm-5">
                            <div id="input-newsletter" class="btn-group btn-group-switch" data-toggle="buttons">
                                <?php if ($newsletter == '1') { ?>
                                    <label class="btn btn-danger"><input type="radio" name="newsletter" value="0" <?php echo set_radio('newsletter', '0'); ?>><?php echo lang('text_un_subscribe'); ?></label>
                                    <label class="btn btn-success active"><input type="radio" name="newsletter" value="1" <?php echo set_radio('newsletter', '1', TRUE); ?>><?php echo lang('text_subscribe'); ?></label>
                                <?php } else { ?>
                                    <label class="btn btn-danger active"><input type="radio" name="newsletter" value="0" <?php echo set_radio('newsletter', '0', TRUE); ?>><?php echo lang('text_un_subscribe'); ?></label>
                                    <label class="btn btn-success"><input type="radio" name="newsletter" value="1" <?php echo set_radio('newsletter', '1'); ?>><?php echo lang('text_subscribe'); ?></label>
                                <?php } ?>
                            </div>
                            <?php echo form_error('newsletter', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-status" class="col-sm-3 control-label"><?php echo lang('label_status'); ?></label>
                        <div class="col-sm-5">
                            <div class="btn-group btn-group-switch" data-toggle="buttons">
                                <?php if ($status == '1') { ?>
                                    <label class="btn btn-danger"><input type="radio" name="status" value="0" <?php echo set_radio('status', '0'); ?>><?php echo lang('text_disabled'); ?></label>
                                    <label class="btn btn-success active"><input type="radio" name="status" value="1" <?php echo set_radio('status', '1', TRUE); ?>><?php echo lang('text_enabled'); ?></label>
                                <?php } else { ?>
                                    <label class="btn btn-danger active"><input type="radio" name="status" value="0" <?php echo set_radio('status', '0', TRUE); ?>><?php echo lang('text_disabled'); ?></label>
                                    <label class="btn btn-success"><input type="radio" name="status" value="1" <?php echo set_radio('status', '1'); ?>><?php echo lang('text_enabled'); ?></label>
                                <?php } ?>
                            </div>
                            <?php echo form_error('status', '<span class="text-danger">', '</span>'); ?>
                        </div>
                    </div>
                </div>

                <div id="addresses" class="tab-pane row wrap-all">
                    <ul id="sub-tabs" class="nav nav-tabs">
                        <?php $table_row = 1; ?>
                        <?php foreach ($addresses as $address) { ?>
                            <li>
                                <a href="#address<?php echo $table_row; ?>" data-toggle="tab">
                                    <?php echo lang('text_tab_address'); ?> 
                                    <?php echo $table_row; ?>&nbsp;&nbsp;
                                    <i class="fa fa-times-circle" onclick="if (confirm('<?php echo lang('alert_warning_confirm'); ?>')) {
                                                $('#sub-tabs a[rel=#address1]').trigger('click');
                                                $('#address<?php echo $table_row; ?>').remove();
                                                $(this).parent().parent().remove();
                                                return false;
                                            } else {
                                                return false;
                                            }"></i></a></li>
                                <?php $table_row++; ?>
                            <?php } ?>
                        <li class="add_address"><a onclick="addAddress();"><i class="fa fa-book"></i>&nbsp;<i class="fa fa-plus"></i></a></li>
                    </ul>

                    <div id="new-address" class="tab-content">
                        <?php $table_row = 1; ?>
                        <?php if ($addresses) { ?>
                            <?php foreach ($addresses as $address) { ?>
                                <div id="address<?php echo $table_row; ?>" class="tab-pane row wrap-all">
                                    <input type="hidden" name="address[<?php echo $table_row; ?>][address_id]" value="<?php echo set_value('address[<?php echo $table_row; ?>][address_id]', $address['address_id']); ?>" />
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label"><?php echo lang('label_address_1'); ?></label>
                                        <div class="col-sm-5">
                                            <input type="text" name="address[<?php echo $table_row; ?>][address_1]" id="" class="form-control" value="<?php echo set_value('address[<?php echo $table_row; ?>][address_1]', $address['address_1']); ?>" />
                                            <?php echo form_error('address[' . $table_row . '][address_1]', '<span class="text-danger">', '</span>'); ?>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label"><?php echo lang('label_address_2'); ?></label>
                                        <div class="col-sm-5">
                                            <input type="text" name="address[<?php echo $table_row; ?>][address_2]" id="" class="form-control" value="<?php echo set_value('address[<?php echo $table_row; ?>][address_2]', $address['address_2']); ?>" />
                                            <?php echo form_error('address[' . $table_row . '][address_2]', '<span class="text-danger">', '</span>'); ?>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label"><?php echo lang('label_city'); ?></label>
                                        <div class="col-sm-5">
                                            <input type="text" name="address[<?php echo $table_row; ?>][city]" id="" class="form-control" value="<?php echo set_value('address[<?php echo $table_row; ?>][city]', $address['city']); ?>" />
                                            <?php echo form_error('address[' . $table_row . '][city]', '<span class="text-danger">', '</span>'); ?>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label"><?php echo lang('label_state'); ?></label>
                                        <div class="col-sm-5">
                                            <input type="text" name="address[<?php echo $table_row; ?>][state]" id="" class="form-control" value="<?php echo set_value('address[<?php echo $table_row; ?>][state]', $address['state']); ?>" />
                                            <?php echo form_error('address[' . $table_row . '][state]', '<span class="text-danger">', '</span>'); ?>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label"><?php echo lang('label_postcode'); ?></label>
                                        <div class="col-sm-5">
                                            <input type="text" name="address[<?php echo $table_row; ?>][postcode]" id="" class="form-control" value="<?php echo set_value('address[<?php echo $table_row; ?>][postcode]', $address['postcode']); ?>" />
                                            <?php echo form_error('address[' . $table_row . '][postcode]', '<span class="text-danger">', '</span>'); ?>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="" class="col-sm-3 control-label"><?php echo lang('label_country'); ?></label>
                                        <div class="col-sm-5">
                                            <select name="address[<?php echo $table_row; ?>][country_id]" id="" class="form-control">
                                                <?php foreach ($countries as $country) { ?>
                                                    <?php if ($country['country_id'] === $address['country_id']) { ?>
                                                        <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                                    <?php } else { ?>
                                                        <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                                    <?php } ?>
                                                <?php } ?>
                                            </select>
                                            <?php echo form_error('address[' . $table_row . '][country_id]', '<span class="text-danger">', '</span>'); ?>
                                        </div>
                                    </div>
                                </div>
                                <?php $table_row++; ?>
                            <?php } ?>
                        <?php } ?>
                    </div>
                </div>

                <div id="stats" class="tab-pane row wrap-all">

                    <ul id="subscription-tabs" class="nav nav-tabs">
                        <?php $table_row = 1; ?>
                        <?php foreach ($subscriptions as $subscription) { ?>
                            <li>
                                <a href="#subscription<?php echo $table_row; ?>" data-toggle="tab">Subscription <?php echo $table_row; ?>&nbsp;&nbsp;
                                    <i class="fa fa-times-circle" onclick="if (confirm('<?php echo lang('alert_warning_confirm'); ?>')) {
                                                $('#subscription-tabs a[rel=#subscription1]').trigger('click');
                                                $('#subscription<?php echo $table_row; ?>').remove();
                                                $(this).parent().parent().remove();
                                                return false;
                                            } else {
                                                return false;
                                            }"></i></a></li>
                                <?php $table_row++; ?>
                            <?php } ?>
                        <li class="add_subscription"><a onclick="addSubscription();"><i class="fa fa-book"></i>&nbsp;<i class="fa fa-plus"></i></a></li>
                    </ul>

                    <div id="new-subscription" class="tab-content">
                        <?php $table_row = 1; ?>
                        <?php
                        if ($subscriptions) {
                            ?>
                            <?php
                            foreach ($subscriptions as $subscription) {
                                ?>
                                <div id="subscription<?php echo $table_row; ?>" class="tab-pane row wrap-all">
                                    <input type="hidden" name="subscription[<?php echo $table_row; ?>][customer_subscription_id]" value="<?php echo set_value('subscription[<?php echo $table_row; ?>][customer_subscription_id]', $subscription['customer_subscription_id']); ?>" />
                                    <div class="form-group">
                                        <div class="col-md-6">
                                            <label for="input-subscription-to" class="col-sm-5 control-label">Subscription To</label>
                                            <div class="col-sm-7">
                                                    <!-- <input type="text" name="subscription[<?php echo $table_row; ?>][subscription_to]" id="input-subscription-to" class="form-control" value="<?php echo set_value('subscription[<?php echo $table_row; ?>][subscription_to]', $subscription['subscription_to']); ?>" /> -->
                                                <!-- <?php echo form_error('subscription_to', '<span class="text-danger">', '</span>'); ?> -->
                                                <select name="subscription[<?php echo $table_row; ?>][subscription_to]" id="subscription_to_<?php echo $table_row; ?>" class="form-control subscription_plan">
                                                    <option>Select Plan </option>
                                                    <?php
                                                    foreach ($subscription_plans as $subscription_plan) {
                                                        ?>
                                                        <?php if ($subscription_plan['location_subscription_id'] === $subscription['subscription_to']) {
                                                            ?>
                                                            <option  value="<?php echo $subscription_plan['location_subscription_id']; ?>" selected="selected" ><?php echo $subscription_plan['subscription_name']; ?> - <?php echo $subscription_plan['location_name']; ?></option>
                                                        <?php }// else {   ?>
            <!--<option  value="<?php echo $subscription_plan['location_subscription_id']; ?>"><?php echo $subscription_plan['subscription_name']; ?> - <?php echo $subscription_plan['location_name']; ?></option>-->
                                                        <?php //}  ?>
                                                    <?php } ?>
                                                </select>
                                                <?php echo form_error('subscription[' . $table_row . '][subscription_to]', '<span class="text-danger">', '</span>'); ?>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="col-md-2">

                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6">
                                            <label for="input-start-date" class="col-sm-5 control-label">Subscription Start Date</label>
                                            <div class="col-sm-7">
                                                <?php
                                                $sub_date = $subscription['start_date'];
                                                $get_day = substr("$sub_date", 0, 2);
                                                $get_month = substr("$sub_date", 3, 2);
                                                $get_year = substr("$sub_date", 6, 5);
                                                $today = "$get_year-$get_month-$get_day";
                                                $thirtyDays = date("Y-m-d", strtotime($today . "+30 days"));
                                                $time = strtotime($thirtyDays);
                                                $next_date = date('d-m-Y', $time);
                                                ?>
                                                <div class='input-group date'>
                                                    <input type="text" name="subscription[<?php echo $table_row; ?>][start_date]" id="input-start-date" class="form-control startdate" value="<?php echo set_value('subscription[<?php echo $table_row; ?>][start_date]', $subscription['start_date']); ?>" />
                                                    <span class="input-group-addon">
                                                        <span class="fa fa-calendar"></span>
                                                    </span>
                                                </div>
                                                <?php echo form_error('start_date', '<span class="text-danger">', '</span>'); ?>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <label for="input-total-amount" class="col-sm-5 control-label">Total</label>
                                            <div class="col-sm-7">
                                                <input type="text" readonly name="subscription[<?php echo $table_row; ?>][total_subscription_amount]" id="input-total-amount-<?php echo $table_row; ?>" class="total_amt form-control" value="<?php echo set_value('subscription[<?php echo $table_row; ?>][total_subscription_amount]', $subscription['total_subscription_amount']); ?>" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6">
                                            <label for="input-paid-amount" class="col-sm-5 control-label">Paid Amount</label>
                                            <div class="col-sm-5">
                                                <input readonly type="text" name="subscription[<?php echo $table_row; ?>][paid_amount]" id="input-paid-amount" class="form-control" value="<?php echo set_value('subscription[<?php echo $table_row; ?>][paid_amount]', $subscription['paid_amount']); ?>" />
                                                <?php echo form_error('paid_amount', '<span class="text-danger">', '</span>'); ?>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <label for="input-balance" class="col-sm-5 control-label">Remains</label>
                                            <div class="col-sm-7">
                                                <input type="text" readonly name="subscription[<?php echo $table_row; ?>][balance]" id="input-balance" class="form-control balance" value="<?php echo set_value('subscription[<?php echo $table_row; ?>][balance]', $subscription['balance']); ?>" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6">
                                            <label for="input-payment-deadline" class="col-sm-5 control-label">Payment Deadline</label>
                                            <div class="col-sm-7">
                                                <div class='input-group date'>
                                                    <input type="text" name="subscription[<?php echo $table_row; ?>][payment_deadline]" id="input-payment-deadline" class="form-control deadline" value="<?php echo set_value('subscription[<?php echo $table_row; ?>][payment_deadline]', $subscription['payment_deadline']); ?>" />
                                                    <span class="input-group-addon">
                                                        <span class="fa fa-calendar"></span>
                                                    </span>
                                                </div>
                                                <?php echo form_error('payment_deadline', '<span class="text-danger">', '</span>'); ?>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-6">
                                            <label for="input-email" class="col-sm-5 control-label">Set Reminder Notification</label>
                                            <div class="col-sm-7">
                                                <div class="btn-group btn-group-switch" data-toggle="buttons">
                                                    <?php if ($subscription['reminder_notification'] == '1') { ?>
                                                        <label class="btn btn-danger"><input type="radio" name="subscription[<?php echo $table_row; ?>][reminder_notification]" value="0" <?php echo set_radio('subscription[<?php echo $table_row; ?>][reminder_notification]', '0'); ?>><?php echo lang('text_disabled'); ?></label>
                                                        <label class="btn btn-success active"><input type="radio" name="subscription[<?php echo $table_row; ?>][reminder_notification]" value="1" <?php echo set_radio('subscription[<?php echo $table_row; ?>][reminder_notification]', '1', TRUE); ?>><?php echo lang('text_enabled'); ?></label>
                                                    <?php } else { ?>
                                                        <label class="btn btn-danger active"><input type="radio" name="subscription[<?php echo $table_row; ?>][reminder_notification]" value="0" <?php echo set_radio('subscription[<?php echo $table_row; ?>][reminder_notification]', '0', TRUE); ?>><?php echo lang('text_disabled'); ?></label>
                                                        <label class="btn btn-success"><input type="radio" name="subscription[<?php echo $table_row; ?>][reminder_notification]" value="1" <?php echo set_radio('subscription[<?php echo $table_row; ?>][reminder_notification]', '1'); ?>><?php echo lang('text_enabled'); ?></label>
                                                    <?php } ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php $table_row++; ?>
                            <?php } ?>
                        <?php } ?>	
                    </div>

                    <div class="row" style="margin-bottom:10px;">
                        <div class="col-md-12">
                            <?php
                            $bio_metric_status = $subscriptions_history[0]['biometric'];
//                            if ($table_row == 2) {
                            if ($bio_metric_status == 1) {
                                if ($bio_user_id == ' ' || $logged_in == $bio_user_id || $bio_status == '') {
                                    if ($bio_status == '1' || $bio_status == '') {
                                        ?>
                                        <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal" id="biometric_btn">Add Finger Print</button>
                                        <?php if ($bio_status == '1' || $bio_status == '3') { ?>
                                            <a href = "reset/<?php echo $customer_id; ?>" class = "btn btn-success btn-lg">Reset</a>
                                        <?php } ?>
                                        <?php
                                    } else {
                                        ?>
                                        <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal1" id="chnage_biometric_btn">Change Finger Print</button>   
                                        <?php if ($bio_status == '1' || $bio_status == '3') { ?>
                                            <a href = "reset/<?php echo $customer_id; ?>" class = "btn btn-success btn-lg">Reset</a>
                                        <?php } ?>
                                        <?php
                                    }
                                } else {//if ($logged_in != $bio_user_id) {
                                    ?>
                                    <button disabled type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal1">Change Finger Print</button>
                                    <a href = "reset/<?php echo $customer_id; ?>" class = "btn btn-success btn-lg" disabled>Reset</a>
                                    <?php
                                }
                            }
                            ?>   
                                    <?php if($subscription != null){  ?>
                            <a href="#" id="btn_payment_<?php echo $table_row; ?>_<?php echo $subscription['customer_subscription_id']; ?>" class="btn btn-success btn-lg btn_payment"  >Proceed to payment</a>
                            <a href="<?php echo $_action_export; ?><?php echo $customer_id; ?>" class="btn btn-success btn-lg">Export to Excel</a>
                            <?php }else{}?>   
                        </div>
                    </div>




                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-responsive" id="table_mess">
                                <thead>
                                    <tr>
                                        <td class="thead"><strong>Location</td>
                                        <td class="thead"><strong>Plan</strong></td>
                                        <td class="thead"><strong>Period</strong></td>
                                        <td class="thead"><strong>Payment History</strong></td>
                                        <td class="thead"><strong>UnClear Balance</strong></td>
                                        <td class="thead"><strong>Meal Allocated</strong></td>
                                        <td class="thead"><strong>Redeem</strong></td>
                                        <td class="thead"><strong>Not Redeem</strong></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($subscriptions_history) {
                                        $row = 1;
                                        ?>
                                        <?php
                                        foreach ($subscriptions_history as $subscription_history) {
                                            //  echo '<pre>';
                                            //print_r($subscription_history);
                                            ?>
                                            <tr>
                                                <td><?php echo $subscription_history['location_name']; ?></td>
                                                <td><?php echo $subscription_history['subscription_name']; ?></td>
                                                <td><?php echo $subscription_history['start_date']; ?> - <?php echo $next_date ?></td>
                                                <td class="payment_row" id="payment_row_<?php echo $subscription_history['customer_subscription_id']; ?>">
                                                    <table id="table_amount">
                                                        <?php
                                                        $this->db->from('customers_subscription_history');
                                                        $this->db->where(customer_id, $customer_id);
                                                        $this->db->where(subscription_to, $subscription_history['subscription_to']);

                                                        $subscriptions_payments_history = $this->db->get();
                                                        if (!empty($subscriptions_payments_history->result())) {
                                                            foreach ($subscriptions_payments_history->result() as $subscriptions_payment_history) {
                                                                ?>
                                                                <tr><td><?php echo $subscriptions_payment_history->payment; ?> (<?php echo $subscriptions_payment_history->created_at; ?>)</td></tr>
                                                                <?php
                                                            }
                                                        } else {
                                                            echo "No Payment History";
                                                        }
                                                        ?>
                                                    </table>
                                                </td>
                                                <td><?php echo $subscription_history['balance']; ?></td>
                                                <td><?php
                                                    $this->db->from('location_subscription');
                                                    $this->db->where(subscription_name, $subscription_history['subscription_name']);
                                                    $this->db->where(location_id, $subscription_history['location_id']);

                                                    $no_of_meals = $this->db->get();
                                                    if (!empty($no_of_meals->result())) {
                                                        foreach ($no_of_meals->result() as $meal) {
                                                            ?>
                                                            <?php
                                                            echo $meal->meals_per_day;
                                                        }
                                                    }
                                                    ?>
                                                </td>
                                                <td><?php echo $attendence ?></td>
                                                <td><?php echo ($meal->meals_per_day) - ($attendence); ?></td>
                                                <td>

                                                </td>
                                            </tr>
                                        <?php } ?>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
        </form>
    </div>
</div>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <form id="form_biometric" action="" method="post">
                    <input type="hidden" name="current_user_id" id="current_user_id" value="<?php echo $customer_id; ?>">
                    <div class="row" style="padding:5px 0px;">
                        <div class="form-group">
                            <div class="col-sm-6">
                                <!--                                <button type="button" id="biometric_btn" class="btn btn-primary btn-lg" onclick="msg()">Add Biometric</button>-->
                                <ul><li>
                                        <h4>Press Your Thum.</h4>
                                    </li></ul>     

                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="close">Close</button>
                <script>
                    $('#close').click('hide', function () {
                        window.location.reload();
                    });
                </script>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <form id="form_biometric1" action="" method="post">
                    <input type="hidden" name="current_user_id1" id="current_user_id1" value="<?php echo $customer_id; ?>">
                    <div class="row" style="padding:5px 0px;">
                        <div class="form-group">
                            <div class="col-sm-6">
                                <!--<button type="button" id="chnage_biometric_btn" class="btn btn-primary btn-lg" onclick="msg1()">Change Biometric</button>-->
                                <ul><li>
                                        <h4>Press Your Thum.</h4>
                                    </li></ul>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="close1">Close</button>
                <script>
                    $('#close1').click('hide', function () {
                        window.location.reload();
                    });
                </script>
            </div>
        </div>
    </div>
</div>
<div class="Modal" id="popupSignature" style="display:none;">
    <div class="Close" onclick="popupdisplay('3')"><h3><span class="fa fa-times" style="color:black;margin-left: -509px;margin-top: 10px;" ></span></h3></div>
    <div class="sign-in sign-w" style="max-width:500px !important; max-height:500px; overflow:hidden;">
        <div class="full_width"><h3>Update Payment : #<span id="subscription_name_update" style="color:#827f82"></span></h3></div>
        <br clear="all">
        <form id="formPaymentEdit" action="" method="post">
            <!--<input type="text" name="customer_subscription_id" id="customer_subscription_id">-->
            <select id="myselect" required>
                <option value="0">---Select---</option>
                <?php
                foreach ($subscriptions_history as $subscription_history) {
                    ?>
                    <option value="<?php echo $subscription_history['subscription_to'] ?>"><?php echo $subscription_history['subscription_name']; ?></option>
                <?php } ?>
            </select>
            <input type='hidden' name="customer_subscription_id" id="customer_subscription_id" value=''>
            <input type='hidden' name="current_user_id" id="current_user_id" value='<?php echo $customer_id ?>'>
            <script type='text/javascript'>
                $(function () {
                    $('#myselect').change(function () {
                        var x = $(this).val();
                        $('#customer_subscription_id').val(x);
                    });
                });
            </script>

            <div class="row" style="padding:5px 0px;">
                <div class="form-group">
                    <div class="col-sm-6">
                        <input onkeypress="return isNumberKey(event)" type="text" class="form-control"  name="payment_amount" id="payment_amount" placeholder="Amount" >
                    </div>
                    <div class="col-sm-3">
                        <button type="button" id="btn_proceed_payment" class="btn btn-primary btn-lg">Complete Payment</button>
                    </div>
                    <script>
                        $('#btn_proceed_payment').click('hide', function () {
                            window.location.reload();
                        });
                        $('#btn_proceed_payment').click('hide', function () {
                            window.location.reload();
                        });
                    </script>
                </div>
            </div>
        </form>
        <br clear="all">
    </div>
</div>
<script type="text/javascript">


    var table_row = <?php echo $table_row; ?>;

    function addAddress() {
        html = '<div id="address' + table_row + '" class="tab-pane row wrap-all">';
        html += '<input type="hidden" name="address[' + table_row + '][address_id]" id="" class="form-control" value="<?php echo set_value("address[' + table_row + '][address_id]"); ?>" />';
        html += '<div class="form-group">';
        html += '	<label for="" class="col-sm-3 control-label"><?php echo lang('label_address_1'); ?></label>';
        html += '	<div class="col-sm-5">';
        html += '		<input type="text" name="address[' + table_row + '][address_1]" id="" class="form-control" value="<?php echo set_value("address[' + table_row + '][address_1]"); ?>" />';
        html += '	</div>';
        html += '</div>';
        html += '<div class="form-group">';
        html += '	<label for="" class="col-sm-3 control-label"><?php echo lang('label_address_2'); ?></label>';
        html += '	<div class="col-sm-5">';
        html += '		<input type="text" name="address[' + table_row + '][address_2]" id="" class="form-control" value="<?php echo set_value("address[' + table_row + '][address_2]"); ?>" />';
        html += '	</div>';
        html += '</div>';
        html += '<div class="form-group">';
        html += '	<label for="" class="col-sm-3 control-label"><?php echo lang('label_city'); ?></label>';
        html += '	<div class="col-sm-5">';
        html += '		<input type="text" name="address[' + table_row + '][city]" id="" class="form-control" value="<?php echo set_value("address[' + table_row + '][city]"); ?>" />';
        html += '	</div>';
        html += '</div>';
        html += '<div class="form-group">';
        html += '	<label for="" class="col-sm-3 control-label"><?php echo lang('label_state'); ?></label>';
        html += '	<div class="col-sm-5">';
        html += '		<input type="text" name="address[' + table_row + '][state]" id="" class="form-control" value="<?php echo set_value("address[' + table_row + '][state]"); ?>" />';
        html += '	</div>';
        html += '</div>';
        html += '<div class="form-group">';
        html += '	<label for="" class="col-sm-3 control-label"><?php echo lang('label_postcode'); ?></label>';
        html += '	<div class="col-sm-5">';
        html += '		<input type="text" name="address[' + table_row + '][postcode]" id="" class="form-control" value="<?php echo set_value("address[' + table_row + '][postcode]"); ?>" />';
        html += '	</div>';
        html += '</div>';
        html += '<div class="form-group">';
        html += '	<label for="" class="col-sm-3 control-label"><?php echo lang('label_country'); ?></label>';
        html += '	<div class="col-sm-5">';
        html += '		<select name="address[' + table_row + '][country_id]" id="" class="form-control">';
<?php foreach ($countries as $country) { ?>
    <?php if ($country['country_id'] === $country_id) { ?>
                html += '			<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo addslashes($country['name']); ?></option>';
    <?php } else { ?>
                html += '			<option value="<?php echo $country['country_id']; ?>"><?php echo addslashes($country['name']); ?></option>';
    <?php } ?>
<?php } ?>
        html += '		</select>';
        html += '	</div>';
        html += '</div>';
        html += '</div>';

        $('#new-address').append(html);

        $('.add_address').before('<li><a href="#address' + table_row + '" data-toggle="tab"><?php echo lang('text_tab_address'); ?> ' + table_row + '&nbsp;&nbsp;<i class="fa fa-times-circle" onclick="if (confirm(\'<?php echo lang('alert_warning_confirm'); ?>\')){ $(\'#sub-tabs a[rel=#address1]\').trigger(\'click\'); $(\'#address' + table_row + '\').remove(); $(this).parent().parent().remove(); return false } else { return false;}"></i></a></li>');

        $('#sub-tabs a[href="#address' + table_row + '"]').tab('show');
        $('select.form-control').select2();

        table_row++;
    }

    function addSubscription() {
        html = '<div id="subscription' + table_row + '" class="tab-pane row wrap-all">';
        html += '<input type="hidden" name="subscription[' + table_row + '][customer_subscription_id]" value="<?php echo set_value("subscription[' + table_row + '][customer_subscription_id]"); ?>" />';
        html += '<div class="form-group">';
        html += '<div class="col-md-6">';
        html += '<label for="input-subscription-to" class="col-sm-5 control-label">Subscription To</label>';
        html += '<div class="col-sm-7">';
        // html += '        <input type="text" name="subscription[' + table_row + '][subscription_to]" id="input-subscription-to" class="form-control" value="<?php echo set_value("subscription[' + table_row + '][subscription_to]"); ?>" />';
        html += '<select name="subscription[' + table_row + '][subscription_to]" id="subscription_to_' + table_row + '" class="form-control subscription_plan sub">';
        html += '<option>Select Plan </option>';
<?php foreach ($subscription_plans as $subscription_plan) { ?>
    <?php if ($subscription_plan['location_subscription_id'] === $subscription['subscription_to']) { ?>
                html += '    <option value="<?php echo $subscription_plan['location_subscription_id']; ?>" selected="selected"><?php echo $subscription_plan['subscription_name']; ?> - <?php echo $subscription_plan['location_name']; ?></option>';
    <?php } else { ?>
                html += '    <option value="<?php echo $subscription_plan['location_subscription_id']; ?>"><?php echo $subscription_plan['subscription_name']; ?> - <?php echo $subscription_plan['location_name']; ?></option>';
    <?php } ?>
<?php } ?>
        html += '    </select>';
        html += '            </div>';
        html += '        </div>';
        html += '</div>';
        html += '<div class="form-group">';
        html += '    <div class="col-md-6">';
        html += '        <label for="input-start-date" class="col-sm-5 control-label">Subscription Start Date</label>';
        html += '        <div class="col-sm-7">';
        html += '             <div class="input-group date">';
        html += '                <input type="text" name="subscription[' + table_row + '][start_date]" id="inputstartdate" class="form-control start_date" value="<?php echo set_value("subscription[' + table_row + '][start_date]"); ?>" />';
        html += '                <span class="input-group-addon">';
        html += '                    <span class="fa fa-calendar"></span>';
        html += '                </span>';
        html += '            </div>';
        html += '        </div>';
        html += '    </div>';
        html += '    <div class="col-md-4">';
        html += '        <label for="input-total-amount" class="col-sm-5 control-label">Total</label>';
        html += '        <div class="col-sm-7">';
        html += '            <input type="text" readonly name="subscription[' + table_row + '][total_subscription_amount]" id="input-total-amount-' + table_row + '" class="form-control" value="<?php echo set_value("subscription[' + table_row + '][total_subscription_amount]"); ?>" />';
        html += '        </div>';
        html += '    </div>';
        html += '</div>';
        html += '<div class="form-group">';
        html += '    <div class="col-md-6">';
        html += '        <label for="input-paid-amount" class="col-sm-5 control-label">Paid Amount</label>';
        html += '        <div class="col-sm-7">';
        html += '            <input readonly type="text" name="subscription[' + table_row + '][paid_amount]" id="input-paid-amount" class="form-control" value="<?php echo set_value("subscription[' + table_row + '][paid_amount]"); ?>" />';
        html += '        </div>';
        html += '    </div>';
        html += '    <div class="col-md-4">';
        html += '        <label for="input-balance" class="col-sm-5 control-label">Remains</label>';
        html += '        <div class="col-sm-7">';
        html += '            <input type="text" readonly name="subscription[' + table_row + '][balance]" id="input-balance' + table_row + '" class="form-control" value="<?php echo set_value("subscription[' + table_row + '][balance]"); ?>" />';
        html += '        </div>';
        html += '    </div>';
        html += '</div>';
        html += '<div class="form-group">';
        html += '    <div class="col-md-6">';
        html += '        <label for="input-payment-deadline" class="col-sm-5 control-label">Payment Deadline</label>';
        html += '        <div class="col-sm-7">';
        html += '             <div class="input-group date">';
        html += '                <input type="text" name="subscription[' + table_row + '][payment_deadline]" id="inputpaymentdeadline" class="form-control payment_deadline" value="<?php echo set_value("subscription[' + table_row + '][payment_deadline]"); ?>" />';
        html += '                <span class="input-group-addon">';
        html += '                    <span class="fa fa-calendar"></span>';
        html += '                </span>';
        html += '            </div>';
        html += '        </div>';
        html += '</div>';
        html += '</div>';
        html += '<div class="form-group">';
        html += '    <div class="col-md-6">';
        html += '        <label for="input-email" class="col-sm-5 control-label">Set Reminder Notification</label>';
        html += '        <div class="col-sm-7">';
        html += '            <div class="btn-group btn-group-switch" data-toggle="buttons">';
        html += '                    <label class="btn btn-danger active"><input type="radio" name="subscription[' + table_row + '][reminder_notification]" value="0"><?php echo lang('text_disabled'); ?></label>';
        html += '                    <label class="btn btn-success"><input type="radio" name="subscription[' + table_row + '][reminder_notification]" value="1"><?php echo lang('text_enabled'); ?></label>';
        html += '            </div>';
        html += '        </div>';
        html += '    </div>';
        html += '</div>';
        html += '</div>';

        $('#new-subscription').append(html);

        $('.add_subscription').before('<li><a href="#subscription' + table_row + '" data-toggle="tab">Subscription ' + table_row + '&nbsp;&nbsp;<i class="fa fa-times-circle" onclick="if (confirm(\'<?php echo lang('alert_warning_confirm'); ?>\')){ $(\'#subscription-tabs a[rel=#subscription1]\').trigger(\'click\'); $(\'#subscription' + table_row + '\').remove(); $(this).parent().parent().remove(); return false } else { return false;}"></i></a></li>');

        $('#subscription-tabs a[href="#subscription' + table_row + '"]').tab('show');
        $('select.form-control').select2();

        table_row++;
    }

    $('#subscription-tabs a:first').tab('show');
    $('#sub-tabs a:first').tab('show');

    $(function () {

        $(".startdate, .start_date").datepicker({
            dateFormat: 'dd-mm-yy'
        });

        $(".deadline").datepicker({
            dateFormat: 'dd-mm-yy'
        });

        $("#inputpaymentdeadline").datepicker({
            dateFormat: 'dd-mm-yy'
        });

        $("#inputstartdate").datepicker({
            dateFormat: 'dd-mm-yy'
        });

        $(".subscription_plan").trigger("change");
        $('a[data-toggle="tab"]').on("shown.bs.tab", function (e) {
            var id = $(e.target).attr("href");
            $('#active-tab').val(id.replace('#', ''));
        });

    });

    $(function () {
        $("#biometric_btn").click(function () {
            $.ajax({
                url: "<?php echo site_url('/customers/insert_biometric_id/' . $customer_id . '/' . $logged_in); ?>",
                method: 'POST',
                dataType: 'JSON',
                success: function (json) {
                    $('.Modal').fadeOut();
                    location.reload(true);
                    window.location.href = js_site_url('customers/edit?id=' +<?php echo $customer_id; ?> + '#stats');
                }
            });
        });

    });

//change biometric status
    $(function () {
        $("#chnage_biometric_btn").click(function () {
            $.ajax({
                url: "<?php echo site_url('/customers/change_biometric_status/' . $customer_id); ?>",
                //data: formData,
                method: 'POST',
                dataType: 'JSON',
                success: function (json) {
                    $('.Modal').fadeOut();
                    location.reload(true);
                    window.location.href = js_site_url('customers/edit?id=' +<?php echo $customer_id; ?> + '#stats');
                }
            });
        });

    });




    $(function () {
        $(document).on("click", ".start_date", function () {
            $(this).datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'dd-mm-yy'
            }).datepicker("show");
        });

        $(document).on("click", ".payment_deadline", function () {
            $(this).datepicker({
                changeMonth: true,
                changeYear: true,
                dateFormat: 'dd-mm-yy'
            }).datepicker("show");
        });
    });

    $(document).on('change', '.subscription_plan', function (e) {
        e.preventDefault();
        var data = $(this).attr('id');
        var identifier = data.split("_");
        var row = identifier[2];
        var option = $(this).val();

        $.ajax({
            url: '<?php echo site_url("/customers/getLocationDetailsSubscription"); ?>',
            data: "location_id=" + option,
            method: 'POST',
            dataType: 'json',
            success: function (json) {
                $("#input-total-amount-" + row).val(json.subscription_value);
            }
        });
    });

    $(document).on('click', '.subscription_plan', function (e) {
        e.preventDefault();
        var data = $(this).attr('id');
        var identifier = data.split("_");
        var row = identifier[2];
        var option = $(this).val();

        $.ajax({
            url: '<?php echo site_url("/customers/getLocationDetailsSubscription"); ?>',
            data: "location_id=" + option,
            method: 'POST',
            dataType: 'json',
            success: function (json) {
                $("#input-total-amount-" + row).val(json.subscription_value);
            }
        });
    });

    $(document).on('click', '.btn_payment', function (e) {
        e.preventDefault();
        var data = $(this).attr('id');
        var identifier = data.split("_");
        var row = identifier[3];
        var option = $(this).val();

        $("#customer_subscription_id").val(row);
        $(".Modal").fadeIn();
    });

    $(function () {
        $("#btn_proceed_payment").click(function () {
            var payment_amt = document.getElementById('payment_amount').value;
            var sub_plan = document.getElementById('myselect').value;
            var remains = document.getElementById('input-balance').value;
            var total_amt = document.querySelector('.total_amt').value;
            //current_amt = parseInt(payment_amt);
            //remains_amt = parseInt(remains);

            if (parseInt(payment_amt) > parseInt(total_amt))
            {
                alert('wrong amount');
                exit;
            }
            if (sub_plan == '0')
            {
                alert('Please Select Subscription Plan.');
            }
            if (payment_amt == '')
            {
                alert('Please Enter Amount.');
                exit;
            }
            if (parseInt(payment_amt) > parseInt(remains))
            {
                alert('Current Amount Should be less then reamaing Amount.');
                exit;
            } else
            {
                var formData = $("#formPaymentEdit").serialize();
                $.ajax({
                    url: '<?php echo site_url('/customers/updateSubscriptionPayment') ?>',
                    data: formData,
                    method: 'POST',
                    dataType: 'json',
                    success: function (json) {
                        $('.Modal').fadeOut();
                        location.reload(true);
                        window.location.href = js_site_url('customers/edit?id=' + <?php echo $customer_id; ?> + '#stats');
                    }
                });
            }
        });

    });
    $(".payment_row").load(function () {
        var data = $(this).attr('id');
        var identifier = data.split("_");
        var option = identifier[2];
        $.ajax({
            url: '<?php echo site_url("/customers/getSubscriptionsHistory"); ?>',
            data: "customer_subscription_id=" + option,
            method: 'POST',
            dataType: 'json',
            success: function (json) {
                if (json.status) {
                    if (json.data.length > 0) {
                        for (var rec = 0; rec < json.data.length; rec++) {
                            var paymentSec = '<tr>' + json.data[rec].payment + '-' + json.data[rec].created_at + '</tr>';
                            $("#payment_row_" + option + " table").append(paymentSec);
                        }
                    }
                }
            }
        });
    });
</script>
<?php echo get_footer(); ?>