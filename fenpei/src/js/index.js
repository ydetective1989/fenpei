$('.res').on('click','button',function(){
    $('input','.res')[0].select();
    document.execCommand('copy');

})