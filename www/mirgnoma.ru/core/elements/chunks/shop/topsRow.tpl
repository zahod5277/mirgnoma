<div class="productRow col-xs-6 col-lg-3">
    <h4 class="productTitle">
        {$pagetitle}
    </h4>
    <a href="{$_modx->makeUrl($id)}" title="{$pagetitle}" class="productImgLink">
         <img src="{$thumb}" alt="{$pagetitle}" class="img-fluid">
        </a>
    <div class="col-xs-12 col-lg-5 no-padding">
        <span class="price">
            {$price} <i class="fa fa-rub"></i>
        </span>
    </div>
    <div class="col-xs-12 col-lg-7 no-padding">
        <form method="post" class="ms2_form">
            <input type="hidden" name="count" value="1" class="form-control input-sm">
            <button class="btn btn-success" type="submit" name="ms2_action" value="cart/add">В корзину</button>
            <input type="hidden" name="id" value="{$id}">
            <input type="hidden" name="options" value="[]">
        </form>
    </div>
</div>