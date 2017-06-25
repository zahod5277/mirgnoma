$(document).on('mse2_load', function (e, data) {
    var view = $('.fa-th-active').data('view');
    if (view === 'list') {
        $(".productRow:not('.listRow')").addClass('listRow');
    }    
});

function setView(View){
    $('.fa-th').removeClass('fa-th-active');
    $('.fa-th[data-view="'+View+'"]').addClass('fa-th-active');
    if (View === 'list') {
        $(".productRow").addClass('listRow');
    } else {
        $(".productRow").removeClass('listRow');
    }
    localStorage.setItem('display',View);
}

function GetIEVersion() {
  var sAgent = window.navigator.userAgent;
  var Idx = sAgent.indexOf("MSIE");

  // If IE, return version number.
  if (Idx > 0) 
    return parseInt(sAgent.substring(Idx+ 5, sAgent.indexOf(".", Idx)));

  // If IE 11 then look for Updated user agent string.
  else if (!!navigator.userAgent.match(/Trident\/7\./)) 
    return 11;

  else
    return 0; //It is not IE
}

$(document).ready(function () {
    $('.bx-slider').bxSlider({
        controls: 'true'
    });
    if (window.location.href != 'https://mirgnoma.ru/'){
        var view = localStorage.getItem('display');
        if (view === null){
            view = 'th';
        }
        setView(view);    
    }
    if (GetIEVersion() === 0){
        var $zoom = $('.zoom').magnify();
    }
    $('#mainImage').on('click', function(){
        $.fancybox.open([
            {href: $(this).attr('href')}
        ])
    });
    $('.thumbnail').on('click',function(){
        var thumb = $(this).data('image'),
            zoom = $(this).data('zoom-image');
        $("#mainImage").attr('href',zoom);
        $("#mainImage img").attr('src',thumb);
        $zoom.destroy();
        $zoom.magnify();
        return false;
        });
    $('.fa-th').on('click', function(){
      setView($(this).data('view'));
    });
    $('.filter_title').on('click', function () {
        $(this).siblings('.filter-row').toggle('fast');
        $(this).find('.fa-chevron-right').toggleClass('chevronOpened');
    });
    //так себе скрипт для сокрытия не нужных полей
    var fields = new Object();
    fields["self"] = 'email,receiver,phone';
    fields["delivery"] = "email,receiver,phone,street,building";
    fields["post"] = "email,receiver,phone,index,region,city,street,building,room";
    // + - количество
    $('.countChanger').on('click', function () {
        var act = $(this).data('action'),
                input = $(this).siblings('input[name="count"]'),
                min = $(input).data('min'),
                max = $(input).data('max'),
                val = parseInt($(input).val());
        if (act == 'minus') {
            if ((val) > 1) {
                $(input).val(val - 1);
            }
        } else if (act == 'plus') {
            if ((val) < max) {
                $(input).val(val + 1);
            }
        }
        $(input).trigger('change');
        return false;
    });
    //
    $('input[name="delivery"]').on("change", function () {
        var val = $(this).val();
        var show = [];
        switch (val) {
            case '1':
                show = fields["self"].split(',');
                break;
            case '2':
                show = fields["delivery"].split(',');
                break;
            case '3':
                show = fields["post"].split(',');
                break;
        }
        $('#credits .form-control').hide();
        for (var el in show) {
            $('#' + show[el]).show();
        }
    });

});