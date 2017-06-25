<form action="" method="post" class="form-horizontal well" id="office-profile-form" enctype="multipart/form-data">
    <div class="header">
        <small>[[%office_profile_header]]</small>
    </div>

    <div class="form-group avatar">
        <label class="col-xs-12 col-lg-4 control-label">[[%office_profile_avatar]]</label>
        <div class="col-xs-12 col-lg-8">
            <img src="[[+photo:empty=`[[+gravatar]]?s=100`]]" id="profile-user-photo" data-gravatar="[[+gravatar]]?s=100" width="100" />
            <a href="#" id="office-user-photo-remove" [[+photo:is=``:then=`style="display:none;"`]]>
                [[%office_profile_avatar_remove]]
                <i class="glyphicon glyphicon-remove"></i>
            </a>
            <p class="help-block">[[%office_profile_avatar_desc]]</p>
            <input type="hidden" name="photo" value="[[+photo]]" />
            <input type="file" name="newphoto" id="profile-photo" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-xs-12 col-lg-4 control-label">[[%office_profile_username]]<sup class="red">*</sup></label>
        <div class="col-xs-12 col-lg-8">
            <input type="text" name="username" value="[[+username]]" placeholder="[[%office_profile_username]]"  class="form-control" />
            <p class="help-block message">[[+error_username]]</p>
            <p class="help-block desc">[[%office_profile_username_desc]]</p>
        </div>
    </div>

    <div class="form-group">
        <label class="col-xs-12 col-lg-4 control-label">[[%office_profile_fullname]]<sup class="red">*</sup></label>
        <div class="col-xs-12 col-lg-8">
            <input type="text" name="fullname" value="[[+fullname]]" placeholder="[[%office_profile_fullname]]" class="form-control" />
            <p class="help-block message">[[+error_fullname]]</p>
            <p class="help-block desc">[[%office_profile_fullname_desc]]</p>
        </div>
    </div>

    <div class="form-group">
        <label class="col-xs-12 col-lg-4 control-label">[[%office_profile_email]]<sup class="red">*</sup></label>
        <div class="col-xs-12 col-lg-8">
            <input type="text" name="email" value="[[+email]]" placeholder="[[%office_profile_email]]" class="form-control" />
            <p class="help-block message">[[+error_email]]</p>
            <p class="help-block desc">[[%office_profile_email_desc]]</p>
        </div>
    </div>

    <div class="form-group">
        <label class="col-xs-12 col-lg-4 control-label">[[%office_profile_password]]</label>
        <div class="col-xs-12 col-lg-8">
            <input type="password" name="specifiedpassword" value="" placeholder="********" class="form-control" />
            <p class="help-block message">[[+error_specifiedpassword]]</p>
            <p class="help-block desc">[[%office_profile_specifiedpassword_desc]]</p>
            <input type="password" name="confirmpassword" value="" placeholder="********" class="form-control" />
            <p class="help-block message">[[+error_confirmpassword]]</p>
            <p class="help-block desc">[[%office_profile_confirmpassword_desc]]</p>
        </div>
    </div>
    <div class="col-xs-12 col-lg-8 offset-lg-4 no-padding" id="HybridAuthOuter">
        <label class="col-xs-12">{$_modx->lexicon('ha.providers_available')}</label>
        <div class="col-xs-12 col-lg-8">
            {$providers}
        </div>
    </div>

    <hr/>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">{$_modx->lexicon('office_profile_save')}</button>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a class="btn btn-danger" href="{$_modx->makeUrl($_modx->resource.id)}?action=auth/logout">{$_modx->lexicon('office_profile_logout')}</a>
        </div>
    </div>
</form>
