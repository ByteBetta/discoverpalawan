<script src="<?= base_url("views/skin/backend/plugins/select2/select2.full.min.js") ?>"></script>
<script>


    $('#typeAuth').select2();
    $("#btnCreate").on('click', function () {

        var selector = $(this);
        var name = $("#form #name").val();
        var username = $("#form #username").val();
        var password = $("#form #password").val();
        var confirm = $("#form #confirm").val();
        var email = $("#form #email").val();
        var phone = $("#form #phone").val();

        var typeAuth = $("#form2 #typeAuth").val();

        var dataSet = {
            "name": name,
            "username": username,
            "password": password,
            "phone": phone,
            "email": email,
            "typeAuth": typeAuth,
            "confirm": confirm,
            "image": <?=$uploader_variable?>,
        };


        var user_settings = {};
        <?php if(!ModulesChecker::isEnabled("pack")): ?>
            <?php foreach ($user_subscribe_fields as $field): ?>
                user_settings.<?=$field['field_name']?> =  $("#<?=$field['config_key']?>").val();
            <?php endforeach; ?>
        <?php endif; ?>
        dataSet.user_settings =  user_settings;


        $.ajax({
            url: "<?=  site_url("ajax/user/create")?>",
            data: dataSet,
            dataType: 'json',
            type: 'POST',
            beforeSend: function (xhr) {
                selector.attr("disabled", true);

            }, error: function (request, status, error) {
                alert(request.responseText);
                selector.attr("disabled", false);

                console.log(request.responseText);

            },
            success: function (data, textStatus, jqXHR) {

                console.log(data);

                selector.attr("disabled", false);
                if (data.success === 1) {
                    document.location.href = "<?=admin_url("user/users")?>";
                } else if (data.success === 0) {
                    var errorMsg = "";
                    for (var key in data.errors) {
                        errorMsg = errorMsg + data.errors[key] + "\n";
                    }
                    if (errorMsg !== "") {
                        alert(errorMsg);
                    }
                }
            }
        });


        return false;

    });

    $('.form-group .form-control.select2').select2();


</script>
