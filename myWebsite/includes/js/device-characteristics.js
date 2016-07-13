$("document").ready(
    function(){
        
    var idDevice = location.search.split('iddevice=')[1];
        
     $.ajax({
        method: "POST",          
        crossDomain: true, 
        
        url: "includes/php/getDeviceTechnicalCharacteristics.php?id="+idDevice,
        async: true,
        
        success: function(response) {
            var technicalCharacteristics=JSON.parse(response);            
            
            //creating the table with all the technical characteristics
            var characteristicsTable = document.createElement("table");
            characteristicsTable.setAttribute("class", "table table-bordered");
            var tableBody = document.createElement("tbody");
            characteristicsTable.appendChild(tableBody);
 
            for (Object in technicalCharacteristics) {
                if (device[Object] != "") {
                    var tr = document.createElement("tr");          
                    var title = document.createElement("td");
                    var titleText = document.createTextNode(Object.charAt(0).toUpperCase() + Object.substring(1));
                    title.appendChild(tableBody);
                    var body = document.createElement("td");
                    var bodyText = document.createTextNode(myprodotto[Object]);
                    body.appendChild(bodyText);
                    tr.appendChild(title);
                    tr.appendChild(body);
                    tableBody.appendChild(tr);
                }
            }
  
            var deviceCharacteristics=document.getElementById("device-characteristics");
            deviceCharacteristics.appendChild(characteristicsTable);

        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
                
})
