<?php echo get_header(); ?>
<?php
$location_id = $get_location[0]['location_id'];
$location_name = $get_location[0]['location_name'];
?>
<div class="row content">
    <div class="col-md-12">
        <div class="row wrap-vertical">
            <ul id="nav-tabs" class="nav nav-tabs">
                <li class="active"><a href="#menu-options" data-toggle="tab"><?php echo lang('text_tab_general'); ?>&nbsp;<?php echo 'for' ?>&nbsp;<?php echo $location_name ?></a></li>
            </ul>
        </div>

        <form role="form" id="edit-form" class="form-horizontal" enctype="multipart/form-data" accept-charset="utf-8" method="POST" action="<?php $_action ?>">
            <div class="tab-content">
                <div id="menu-options" class="tab-pane row wrap-all active">
                    <div class="form-group">
                        <label for="input-name" class="col-sm-2 control-label"><?php echo lang('lable_customer')?></label>
                        <div class="col-sm-4">
                            <input type="text" name="customer_name"  id="location_name" class="form-control" value="" maxlength="10"/><br><br>
                            <input type="submit" name="checking" class="btn btn-primary" value="Check In" id="checking">
                            <?php //echo form_error('location_name', '<span class="text-danger">', '</span>'); ?>
                        </div>
<!--                        <label for="input-name" class="col-sm-2 control-label"><?php echo lang('label_profile'); ?></label>

                        <div class="col-sm-4">

                            <select id="input-profile" name="profile" class="form-control">
                                <option value="">Select Profile</option>
                            </select>

                        </div>-->
                        <div class="col-sm-6">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Date Time</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($checkinglist as $checkinglists) { ?>
                                        <tr>
                                            <td><?php echo $checkinglists->first_name . ' ' . $checkinglists->last_name; ?></td>
                                            <td><?php echo $checkinglists->checking_date; ?></td>
                                            <!--<td><a href="checkout?attendance_id=<?php echo $checkinglists->attendance_id; ?>"> Checkout</a></td>-->
                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="input-name" class="col-sm-2 control-label"><?php //echo lang('label_profile');                                                                                                                                     ?></label>
                        <div class="col-sm-4">

                        </div>

                    </div>
                    <br/>
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('#start-date, #end-date').datepicker({
            format: 'dd-mm-yyyy',

        });
        $('input[name="special_status"]').on('change', function () {
            if (this.value == '1') {
                $('#special-toggle').slideDown(300);
            } else {
                $('#special-toggle').slideUp(300);
            }
        });
    });
    $(document).on('change', '#location', function () {

        $("#location_id").val($(this).val());

    });
//                var url1 = "<?php echo site_url('/Attendance/Customer_name/' . $location_id); ?>";
//                alert(url1);

    $('input[name=\'customer_name\']').select2({
        placeholder: 'Start typing...',
        minimumInputLength: 4,
        ajax: {
            url: "<?php echo site_url('/Attendance/Customer_name/' . $location_id); ?>",
            dataType: 'json',
            quietMillis: 100,
            data: function (term, page) {
                return {
                    term: term, //search term
                    page_limit: 10 // page size
                };
            },
            results: function (data, page, query) {
//                alert(JSON.stringify(data.results));
                return {results: data.results};
            }
        }
    });

    /*      $('input[name=\'location_name\']').select2({
     placeholder: 'Start typing...',
     minimumInputLength: 2,
     ajax: {
     url: '<?php echo site_url("/Attendance/autocompleteprofile"); ?>',
     dataType: 'json',
     quietMillis: 100,
     data: function (term, page) {
     return {
     term: term, //search term
     page_limit: 10 // page size
     };
     },
     results: function (data, page, query) {
     return { results: data.results };
     }
     }
     });*/

    /* Populate data to city dropdown */

    $('#location_name').on('change', function () {
        var location_id = $(this).val();
        $('#checking').click(function () {
            if (location_id) {
                $.ajax({
                    type: 'POST',
                    url: '<?php echo site_url("Attendance/autocompleteprofile/$location_id?>"); ?>',
                    data: 'location_id=' + location_id,
                    success: function (data) {
                    }
                });
            }
        });
    });

    $('#sub-tabs a:first').tab('show');
</script>


<?php echo get_footer(); ?>
