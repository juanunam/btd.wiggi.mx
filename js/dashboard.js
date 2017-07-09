var nodo = '<div class="col-md-6 col-xs-6 col-sm-6 col-lg-4 "<div class="bot_singular"><a  onclick="getFrame({1})"><img class="img img-responsive" src="img/bot.png" alt="servicios"><label>{0}</label></a></div></div>';
function getFrame(id){
	codigo = "TU CODIGO ES: <iframe src ='http://sandbox.btd.wiggi.mx/botHTML.html?id={1}' height='400px' width='400px'></iframe>";
	codigo = codigo.replace('{1}',id)
	alert(codigo)
}
$(document).ready(function(res){
	$.ajax({
        url:'php/api.php?command=getAllBots',
        type:"POST",
        data:{},
        success:function(resp){
        	data = JSON.parse(resp).data;
        	$('#botContainer').html('');
        	for (var i in data) {
        		var copia = nodo.replace('{0}',data[i].name);
        		 copia = copia.replace('{1}',data[i].id);
        		$('#botContainer').append(copia);
        	}
           console.log(JSON.parse(resp));
        }
      })

})