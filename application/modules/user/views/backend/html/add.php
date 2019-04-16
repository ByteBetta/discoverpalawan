<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

    <section class="content">

        <div class="row">
            <!-- Message Error -->
            <div class="col-sm-12">
                <?php $this->load->view("backend/include/messages"); ?>
            </div>

        </div>


        <div class="row">

            <div class="col-sm-6">

                <div class="box box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title"><b><?= Translate::sprint("Create new User", "") ?> </b></h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <form id="form" role="form">


                            <div class="col-sm-12">

                                <div class="form-group required">
                                    <?php

                                    $upload_plug = $this->uploader->plugin(array(
                                        "limit_key"     => "uAhFiles",
                                        "token_key"     => "SzqYjES-4555",
                                        "limit"         => 1,
                                    ));

                                    echo $upload_plug['html'];
                                    TemplateManager::addScript($upload_plug['script']);

                                    ?>
                                </div>


                                <div class="form-group">
                                    <label><?= Translate::sprint("Full name") ?> <sup class="text-red">*</sup> </label>
                                    <input type="text" class="form-control" placeholder="Enter ..." name="name"
                                           id="name">
                                </div>

                                <!-- textarea -->
                                <div class="form-group">
                                    <label><?= Translate::sprint("Email", "") ?> <sup class="text-red">*</sup></label>
                                    <input type="text" class="form-control" placeholder="Enter ..." name="mail"
                                           id="email">
                                </div>

                                <div class="form-group">
                                    <label> <?= Translate::sprint("Phone Number", "") ?>  </label>
                                    <input type="text" class="form-control" placeholder="Enter ..." name="phone" id="phone">
                                </div>


                                <strong class="uppercase title margin-top15px"><?=Translate::sprint("Connection Informations")?></strong>

                                <div class="form-group">
                                    <label><?= Translate::sprint("Username", "") ?> <sup class="text-red">*</sup></label>
                                    <input type="text" class="form-control" placeholder="Enter ..." name="username"
                                           id="username">
                                </div>

                                <div class="form-group">
                                    <label><?= Translate::sprint("Password", "") ?> <sup class="text-red">*</sup></label>
                                    <input type="password" class="form-control" placeholder="Enter ..." name="password"
                                           id="password">
                                </div>

                                <div class="form-group">
                                    <label><?= Translate::sprint("Confirm Password", "") ?> <sup class="text-red">*</sup></label>
                                    <input type="password" class="form-control" placeholder="Enter ..." name="confirm"
                                           id="confirm">
                                </div>


                            </div>


                        </form>
                    </div>
                    <!-- /.box-body -->

                </div>
            </div>

            <div class="col-sm-6">

                <div class="box box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title"><b> <?= Translate::sprint("User configuration", "") ?>  </b></h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <form id="form2" role="form">

                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label><?= Translate::sprint("Access Role") ?> <sup>*</sup></label>
                                    <select id="typeAuth" name="typeAuth" class="form-control select2">
                                        <?php foreach ($grp_accesses as $grp): ?>
                                            <option value="<?=$grp['id']?>"><?=Translate::sprint($grp['name'])?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>

                                <?php if(!ModulesChecker::isEnabled("pack")): ?>


                                    <?php foreach ($user_subscribe_fields as $field): ?>

                                        <?php
                                        if($field['_display']==0)
                                            continue;
                                        ?>
                                        <div class="form-group">
                                            <label><?=Translate::sprint($field['field_label'])?>
                                                <?php if($field['field_sub_label']!=""): ?>
                                                    &nbsp;<span class="font-size10px text-grey2"><?=Translate::sprint($field['field_sub_label'])?></span>
                                                <?php endif; ?>
                                            </label>

                                            <?php if($field['field_comment']): ?>
                                                <br><sup><i class="mdi mdi-information-outline"></i> <?=Translate::sprint($field['field_comment'])?></sup>
                                            <?php endif; ?>

                                            <?php if($field['field_type']==UserSettingSubscribeTypes::INT
                                                OR $field['field_type']==UserSettingSubscribeTypes::DOUBLE):?>

                                                <input type="number" min="-1" max="100" class="form-control"
                                                       placeholder="<?= Translate::sprint($field['field_placeholder']) ?>" name="<?=$field['config_key']?>"
                                                       id="<?=$field['config_key']?>" value="<?= $config[$field['config_key']] ?>">

                                            <?php elseif($field['field_type']==UserSettingSubscribeTypes::BOOLEAN): ?>

                                                <select class="form-control select2" id="<?=$field['config_key']?>">
                                                    <?php if($field['field_placeholder']!=""): ?>
                                                        <option value="0"><?= Translate::sprint($field['field_placeholder']) ?></option>
                                                    <?php endif; ?>
                                                    <option value="true" <?php if($config[$field['config_key']]==1) echo 'selected'?>><?=Translate::sprint('Enabled')?></option>
                                                    <option value="false" <?php if($config[$field['config_key']]==0) echo 'selected'?>><?=Translate::sprint('Disabled')?></option>
                                                </select>

                                            <?php elseif($field['field_type']==UserSettingSubscribeTypes::VARCHAR): ?>

                                                <input type="text" min="-1" max="100" class="form-control"
                                                       placeholder="<?= Translate::sprint("Enter") ?>" name="<?=$field['config_key']?>"
                                                       id="<?=$field['config_key']?>" value="<?= $config[$field['config_key']] ?>">

                                            <?php endif; ?>


                                        </div>
                                    <?php endforeach; ?>


                                <?php endif; ?>

                            </div>


                        </form>
                    </div>
                    <!-- /.box-body -->

                    <div class="box-footer">
                        <button type="button" class="btn  btn-primary" id="btnCreate"><span
                                    class="glyphicon glyphicon-check"></span><?= Translate::sprint("Create", "") ?>
                        </button>
                        <button type="reset" class="btn  btn-default"><span
                                    class="glyphicon glyphicon-remove"></span> <?= Translate::sprint("Clear", "") ?>
                        </button>
                    </div>

                </div>

            </div>


        </div>
    </section>

</div>

<?php

$data['user_subscribe_fields'] = $user_subscribe_fields;

$data['uploader_variable'] = $upload_plug['var'];

$script = $this->load->view('backend/html/scripts/add-script',$data,TRUE);
TemplateManager::addScript($script);

?>


