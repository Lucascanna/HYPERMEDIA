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
            
            //setting orientation info
            var categoryInfo=document.getElementById("category-info");
            var urlCategoryInfo="devices-by-category.html?idcategory=" +device[0].idcategoria;
            var categoryInfoLink=document.createElement("a");
            categoryInfoLink.setAttribute("href",urlCategoryInfo);
            var categoryInfoName=document.createTextNode(device[0].nomecategoria);
            categoryInfoLink.appendChild(categoryInfoName);
            categoryInfo.appendChild(categoryInfoLink);
            var deviceInfo=document.getElementById("device-info");
            var deviceInfoName=document.createTextNode(device[0].nomeprodotto);
            deviceInfo.appendChild(deviceInfoName);
            
            //setting A2A links
            var presentationLink=document.getElementById("active");
            var presentationurl="device-characteristics.html?iddevice="+device[0].idprodotto;
            presentationLink.setAttribute("href", presentationurl);
            
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
