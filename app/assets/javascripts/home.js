$(function (){

    $('.edit').click(function (){
        $('.editable').attr('contenteditable','true');
    });

    $('.save').click(function (){
        $('.editable').attr('contenteditable','false');
        var html = '<html>\n';
        html += $('html').html() + '\n';
        html += '</html>\n';

        console.log(html);
    });

});
