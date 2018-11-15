<?php echo get_header(); ?>

<div class="row content">

    <div class="col-md-12">

        <div class="row wrap-vertical">

            <ul id="nav-tabs" class="nav nav-tabs">

                <li class="active"><a href="#menu-options" data-toggle="tab"><?php echo lang('text_tab_general'); ?></a></li>

            </ul>

        </div>



        <form role="form" id="edit-form" class="form-horizontal" enctype="multipart/form-data" accept-charset="utf-8" method="POST" action="<?php echo $_action; ?>">

            <div class="tab-content">

                <div id="menu-options" class="tab-pane row wrap-all active">

                    <div class="form-group">

                        <label for="input-name" class="col-sm-2 control-label"><?php echo lang('label_location'); ?></label>

                        <div class="col-sm-4">

                            <input type="text" name="location_name" id="location_name" class="form-control" value="" />

                            <?php echo form_error('location_name', '<span class="text-danger">', '</span>'); ?>

                        </div>

                        <label for="input-name" class="col-sm-2 control-label"><?php echo lang('label_profile'); ?></label>

                        <div class="col-sm-4">

                            <select id="input-profile" name="profile" class="form-control">
                                <option value="">Select Profile</option>
                            </select>

                        </div>

                    </div>

                    <div class="form-group">
                        <label for="input-name" class="col-sm-2 control-label"><?php echo lang('label_profile'); ?></label>
                        <div class="col-sm-4">
                            <input type="text" name="telephone" id="telephone" class="form-control"/>
                            <br>
                            <input type="submit" name="checking" class="btn btn-primary" value="Check In">
                        </div>
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
                                            <td><a href="checkout?attendance_id=<?php echo $checkinglists->attendance_id; ?>"> Checkout</a></td>
                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <br />

                </div>

            </div>

        </form>

    </div>

</div>

    <script type="text/javascript"><!--

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

    //--></script>

        <script type="text/javascript"><!--
        $(document).on('change', '#location', function () {

            $("#location_id").val($(this).val());

        });

        $('input[name=\'location_name\']').select2({
            placeholder: 'Start typing...',
            minimumInputLength: 2,
            ajax: {
                url: '<?php echo site_url("/Attendance/autocomplete"); ?>',
                dataType: 'json',
                quietMillis: 100,
                data: function (term, page) {
                    return {
                        term: term, //search term
                        page_limit: 10 // page size
                    };
                },
                results: function (data, page, query) {
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
            if (location_id) {
                $.ajax({
                    type: 'POST',
                    url: '<?php echo site_url('Attendance/autocompleteprofile'); ?>',
                    data: 'location_id=' + location_id,
                    success: function (data) {
                        $('#input-profile').html('<option value="">Select Profile</option>');
                        var dataObj = jQuery.parseJSON(data);
                        if (dataObj) {
                            $(dataObj).each(function () {
                                var option = $('<option />');
                                option.attr('value', this.customer_id).text(this.first_name + ' ' + this.last_name);
                                $('#input-profile').append(option);
                            });
                        } else {
                            $('#input-profile').html('<option value="">Profile not available</option>');
                        }
                    }
                });
            } else {
                $('#input-profile').html('<option value="">Select location first</option>');
            }
        });

        $('#sub-tabs a:first').tab('show');

        //--></script>


                <?php echo get_footer(); ?>