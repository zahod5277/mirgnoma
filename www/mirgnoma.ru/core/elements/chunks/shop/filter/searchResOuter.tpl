<div class="row msearch2 no-padding" id="mse2_mfilter">
    <div class="col-xs-12 col-lg-4" id="filterBar">
        <form action="[[~[[*id]]]]" method="post" id="mse2_filters">
            [[+filters]]
            [[+filters:isnot=``:then=`
            <div class="clearfix"></div>
            `]]
        </form>
    </div>

    <div class="col-xs-12 col-lg-8 no-padding" id="categoryProducts">
        <div class="row-fluid">
            [[+tpls:notempty=`
            <div id="mse2_tpl" class="span4 col-md-4">
                <a href="#" data-tpl="0" class="[[+tpl0]]">[[%mse2_chunk_default]]</a> /
                <a href="#" data-tpl="1" class="[[+tpl1]]">[[%mse2_chunk_alternate]]</a>
            </div>
            `]]
        </div>

        <div id="mse2_selected_wrapper" class="col-xs-12">
            <div id="mse2_selected">[[%mse2_selected]]:
                <span></span>
            </div>
        </div>

        <div id="mse2_results" class="col-xs-12 no-padding">
            {$results}
        </div>

        <div class="mse2_pagination col-xs-12">
            [[!+page.nav]]
        </div>

    </div>
</div>