function what(e){
        var key = e.charCode ? e.charCode : e.keyCode ? e.keyCode : 0;

        console.log(e)
        if (key == 13) {
            $('#send').trigger('click');
        }
}
function getUrlParameter(sParam) {
    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : sParameterName[1];
        }
    }
};
/**
 * Created by jcrunge on 09/07/2017.
 */
 var outputHTML = '<div class="row" >    <div class="col-xs-2 col-md-2"></div>    <div class="col-xs-8  col-md-4">        <div class="alert list-group-item-success alert-info" role="alert" id="input" name="input">  {0}        </div>    </div>    <div class="col-xs-8 col-md-2"></div></div>';
var inputHTML= '<div class="row"> <div class="col-xs-8 col-md-2"></div>    <div class="col-xs-8 col-md-4"></div>    <div class="col-xs-8 col-md-4">        <div class="alert alert-info" role="alert" id="resp" name="resp">   {0}     </div>    </div></div>';
$(document).ready(function() {
   
    $("#send").click(function() {
        //$(".otroinput").remove();
        //$(".otroresp").remove();
        var input = $("#question").val();
        copyInput = inputHTML.replace('{0}',input);
        $("#body").append(copyInput);
        console.log(copyInput);
        $("#question").val("");
        /*$("#input").show();
        $("#resp").show();*/
        $.ajax({
            url: "php/bots/"+getUrlParameter("id")+".php",
            type: "POST",
            data: {
                input:input
            },
            success: function (resp) {
                resp = jQuery.parseJSON(resp);
                console.log(resp);
                resp = resp.data;
                for (var i in resp) {
                    copyOutput = outputHTML.replace('{0}',resp[i]);
                    $("#body").append(copyOutput)
                }
                console.log(resp);
               // $("#input").html(resp);
               // $("#resp").html(resp);
            }
        })
    });
});



