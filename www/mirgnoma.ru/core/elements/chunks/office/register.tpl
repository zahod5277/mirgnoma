<div class="row" id="office-auth-form">
    <div class="col-xs-12 offset-lg-2 col-lg-8 office-auth-register-wrapper">
        <form method="post" class="form-horizontal" id="office-auth-register">
            <div class="form-group">
                <label for="office-auth-register-email" class="col-md-3 control-label">[[%office_auth_register_email]]&nbsp;<span class="red">*</span></label>
                <div class="col-md-8">
                    <input type="email" name="email" placeholder="" class="form-control" id="office-auth-register-email" value="" />
                    <p class="help-block"><small>[[%office_auth_register_email_desc]]</small></p>
                </div>

                <label for="office-auth-register-password" class="col-md-3 control-label">{$_modx->lexicon('office_auth_register_password')}</label>
                <div class="col-md-8">
                    <input type="password" name="password" placeholder="" class="form-control" id="office-register-form-password" value="" />
                    <p class="help-block"><small>{$_modx->lexicon('office_auth_register_password_desc')}</small></p>
                </div>

                <label for="office-auth-register-username" class="col-md-3 control-label">{$_modx->lexicon('office_auth_register_username')}</label>
                <div class="col-md-8">
                    <input type="text" name="username" placeholder="" class="form-control" id="office-register-form-username" value="" />
                    <p class="help-block"><small>{$_modx->lexicon('office_auth_register_username_desc')}</small></p>
                </div>

                <label for="office-auth-register-fullname" class="col-md-3 control-label">{$_modx->lexicon('office_auth_register_fullname')}</label>
                <div class="col-md-8">
                    <input type="text" name="fullname" placeholder="" class="form-control" id="office-register-form-fullname" value="" />
                    <p class="help-block"><small>{$_modx->lexicon('office_auth_register_fullname_desc')}</small></p>
                </div>
                <div class="col-xs-12">
                    <p>Регистрируюясь, вы принимаете условия <a href="{$_modx->makeUrl(138)}" target="_blank" title="пользовательское соглашение">пользовательского соглашения</a></p>
                </div>
                <input type="hidden" name="action" value="auth/formRegister" />
                <div class="col-xs-12">
                    <button type="submit" class="btn btn-success">{$_modx->lexicon('office_auth_register_btn')}</button>
                </div>
            </div>
        </form>
    </div>
</div>