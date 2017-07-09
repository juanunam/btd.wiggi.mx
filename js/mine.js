var getUrlParameter = function getUrlParameter(sParam) {
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
 $(document).ready(function() {
    var $flowchart = $('#canvasFlow');
    var $container = $flowchart.parent();
    var cx = $flowchart.width() / 2;
    var cy = $flowchart.height() / 2;
    
    
    // Panzoom initialization...
    $flowchart.panzoom();
    
    // Centering panzoom
    $flowchart.panzoom('pan', -cx + $container.width() / 2, -cy + $container.height() / 2);

    // Panzoom zoom handling...
    var possibleZooms = [1];
    var currentZoom = 2;
    $container.on('mousewheel.focal', function( e ) {
        e.preventDefault();
        var delta = (e.delta || e.originalEvent.wheelDelta) || e.originalEvent.detail;
        var zoomOut = delta ? delta < 0 : e.originalEvent.deltaY > 0;
        currentZoom = Math.max(0, Math.min(possibleZooms.length - 1, (currentZoom + (zoomOut * 2 - 1))));
        $flowchart.flowchart('setPositionRatio', possibleZooms[currentZoom]);
        $flowchart.panzoom('zoom', possibleZooms[currentZoom], {
            animate: false,
            focal: e
        });
    });
    
    /*var data = {
      operators: {
        operator1: {
          top: cy - 100,
          left: cx - 200,
          properties: {
            title: 'Operator 1',
            inputs: {},
            outputs: {
              output_1: {
                label: 'Output 1',
              }
            }
          }
        },
        operator2: {
          top: cy,
          left: cx + 140,
          properties: {
            title: 'Operator 2',
            inputs: {
              input_1: {
                label: 'Input 1',
              },
              input_2: {
                label: 'Input 2',
              },
            },
            outputs: {}
          }
        },
      },
      links: {
        link_1: {
          fromOperator: 'operator1',
          fromConnector: 'output_1',
          toOperator: 'operator2',
          toConnector: 'input_2',
        },
      }
    }; */
    
    var data ={
      operators: {
        0: {
          top: cy - 280,
          left: cx - 400,
          properties: {
            title: 'Inicio',
            inputs: {},
            outputs: {
              output_1: {
                label: 'Inicio',
              }
            }
          }
        }
      }
    }
    // Apply the plugin on a standard, empty div...
    $flowchart.flowchart({
      data: data
    });
    $('.delete_draggable').on('click',function(response){
      $flowchart.flowchart('deleteSelected');
    })

    $('.generar_draggable').on('click',function(response){
      var nodes  = $flowchart.flowchart('getData');
      
      
      $.ajax({
        url:'php/code.php?name='+getUrlParameter('name')+'&description='+getUrlParameter('description'),
        type:"POST",
        data:nodes,
        success:function(resp){
          alert('La inserción fue un exito!');
        }
      })

    })
    $flowchart.parent().siblings('.delete_selected_button').click(function() {
      $flowchart.flowchart('deleteSelected');
      console.log('entry');
    });
    
    
    var $draggableOperators = $('.draggable_operator');
    
    function getOperatorData($element) {
      var nbInputs = parseInt($element.data('nb-inputs'));
      var nbOutputs = parseInt($element.data('nb-outputs'));
      var type = ($element.data('nb-type'));
      var data = {
        properties: {
          title: $element.text(),
          inputs: {},
          outputs: {}
        } 
      };
      
      var i = 0;
      for (i = 0; i < nbInputs; i++) {
        data.properties.inputs['input_' + i] = {
          label: 'Input ' + (i + 1)
        };
      }
      for (i = 0; i < nbOutputs; i++) {
        console.log(type);
        if(type == 'if'){

          data.properties.outputs[i==0?'Si':'No'] = {
            label: i==0?'Si':'No' 
          };
        }else{
        data.properties.outputs['output_' + i] = {
          label: 'Output ' + (i + 1)
        };

        }
      }
      
      return data;
    }
    
    var operatorId = 0;
     /* $("#closeModal").on('click',function(){
        console.log($draggableOperators.find("#multiplexor"));
        $draggableOperators.find("#multiplexor").attr("data-nb-outputs",$("#enterMul").val());

        console.log($("#enterMul").val());
      });*/
    $draggableOperators.draggable({
        cursor: "move",
        opacity: 0.7,
        
        helper: 'clone', 
        appendTo: 'body',
        zIndex: 1000,
        
        helper: function(e) {
          var $this = $(this);
          var data = getOperatorData($this);
          return $flowchart.flowchart('getOperatorElement', data);
        },
        stop: function(e, ui) {
            var $this = $(this);
            var elOffset = ui.offset;
            var containerOffset = $container.offset();
            if (elOffset.left > containerOffset.left &&
                elOffset.top > containerOffset.top && 
                elOffset.left < containerOffset.left + $container.width() &&
                elOffset.top < containerOffset.top + $container.height()) {

                var flowchartOffset = $flowchart.offset();

                var relativeLeft = elOffset.left - flowchartOffset.left;
                var relativeTop = elOffset.top - flowchartOffset.top;

                var positionRatio = $flowchart.flowchart('getPositionRatio');
                relativeLeft /= positionRatio;
                relativeTop /= positionRatio;
                
                var data = getOperatorData($this);
                data.left = relativeLeft;
                data.top = relativeTop;
                if(data.properties.title == 'Si contiene..'){
                  data.properties.type = "if";
                  response = window.prompt("Ingresa los keywords","como,me,llamo");
                  if(response != null){
                      data.properties.title+=':<br/>'+response;
                      data.properties.keywords = response.split(',');

                  } 
                }
                if(data.properties.title == 'Entonces contestar'){
                  data.properties.type = "output";
                  response = window.prompt("Ingresa la respuesta","Tu nombre es juan");
                  if(response != null){
                      data.properties.title+=':<br/>'+response;
                      data.properties.response = response;

                  } 
                }
                if(data.properties.title == 'Multiplexor'){
                  data.properties.type = "multiplexor";
                }
                console.log(data)
                $flowchart.flowchart('addOperator', data);
            }
        }
    });
    
    
  });