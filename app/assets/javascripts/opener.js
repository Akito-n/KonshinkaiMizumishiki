$(function(){
    $('#search-opener').on('click', function(){
        $('.hide').fadeToggle(1000);
        $('#search-opener').toggleClass('search-open');
        if ($('#search-opener').hasClass('search-open')){
            $('#search-opener').html('検索を閉じる');
        }else{
            $('#search-opener').html('検索ボタン');
        }
    });
});