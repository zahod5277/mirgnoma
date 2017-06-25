<form class="col-xs-12 no-padding form-horizontal ms2_form" id="msOrder" method="post">
    <div class="col-xs-12 no-padding col-lg-4" id="deliveryPayment">
        <div class="col-xs-12 no-padding card" id="deliveries">
            <h4>{'ms2_frontend_deliveries' | lexicon}:</h4>
            <div class="form-group">
                <div class="col-xs-12 no-padding">
                    {var $i = 0}
                    {foreach $deliveries as $idx => $delivery}
                        {var $checked = !$order.delivery && $i == 0 || $delivery.id == $order.delivery}
                        {var $i += 1}
                        <div class="checkbox">
                            <label class="delivery input-parent">
                                <input type="radio" name="delivery" value="{$delivery.id}" id="delivery_{$delivery.id}"
                                       data-payments="{$delivery.payments | json_encode}"
                                       {$checked ? 'checked' : ''}>
                                {if $delivery.logo?}
                                    <img src="{$delivery.logo}" alt="{$delivery.name}" title="{$delivery.name}"/>
                                {else}
                                    {$delivery.name}
                                {/if}
                                {if $delivery.description?}
                                    <p class="small">
                                        {$delivery.description}
                                    </p>
                                {/if}
                            </label>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
        <div class="col-xs-12 no-padding card" id="payments">
            <h4>{'ms2_frontend_payments' | lexicon}:</h4>
            <div class="form-group">
                <div class="col-xs-12 no-padding">
                    {foreach $payments as $payment}
                        <div class="checkbox">
                            <label class="payment input-parent">
                                <input type="radio" name="payment" value="{$payment.id}" id="payment_{$payment.id}"
                                       {$payment.id == $order.payment ? 'checked' : ''}>
                                {if $payment.logo?}
                                    <img src="{$payment.logo}" alt="{$payment.name}" title="{$payment.name}"/>
                                {else}
                                    {$payment.name}
                                {/if}
                                {if $payment.description?}
                                    <p class="small">
                                        {$payment.description}
                                    </p>
                                {/if}
                            </label>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
    <div class="col-xs-12 col-lg-4 card" id="credits">
        <h4>{'ms2_frontend_credentials' | lexicon}:</h4>
        {foreach ['email','receiver','phone'] as $field}
            <div class="form-group input-parent">
                <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                       name="{$field}" value="{$form[$field]}"
                       class="form-control{($field in list $errors) ? ' error' : ''}">
            </div>
        {/foreach}
        {foreach ['index','region','city'] as $field}
            <div class="form-group input-parent">
                <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                       name="{$field}" value="{$form[$field]}"
                       class="form-control{($field in list $errors) ? ' error' : ''}">
            </div>
        {/foreach}
        {foreach ['street','building','room'] as $field}
            <div class="form-group input-parent">
                <input type="text" id="{$field}" placeholder="{('ms2_frontend_' ~ $field) | lexicon}"
                       name="{$field}" value="{$form[$field]}"
                       class="form-control{($field in list $errors) ? ' error' : ''}">
            </div>
        {/foreach}
        <div class="form-group input-parent">
            <textarea name="comment" id="comment" placeholder="{'ms2_frontend_comment' | lexicon}"
                      class="form-control{('comment' in list $errors) ? ' error' : ''}">{$form.comment}</textarea>
        </div>
    </div>
    <div class="col-xs-12 col-lg-4 card" id="confirm">   
        <div class="col-md-offset-2">
            <h3>Итого:</h3>
            <p>Сумма: <span class="right-align"><span id="ms2_order_cost">{$order.cost ?: 0}</span> <i class="fa fa-rub"></i></span></p>
            <button type="submit" name="ms2_action" value="order/submit" class="btn btn-success ms2_link">
                {'ms2_frontend_order_submit' | lexicon}
            </button>
        </div>
    </div>
</form>