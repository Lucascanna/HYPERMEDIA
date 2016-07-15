$("document").ready(
    function(){
        
    var idDevice = location.search.split('iddevice=')[1];
        
     $.ajax({
        method: "POST",          
        crossDomain: true, 
        
        url: "includes/php/query.php",
        data: {query: "SELECT * FROM prodotti, categorieprodotti " +
        "WHERE prodotti.idcategoria=categorieprodotti.idcategoria AND prodotti.idprodotto = '"+ idDevice +"'"},
        
        success: function(response) {
            var device=JSON.parse(response);
            
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
            var presentationLink=document.getElementById("presentation");
            var presentationurl="device.html?iddevice="+device[0].idprodotto;
            presentationLink.setAttribute("href", presentationurl);
            
            //creating device name
            var deviceName = document.createElement("h2");
            var nameText = document.createTextNode(device[0].nomeprodotto);
            deviceName.appendChild(nameText);
            var deviceNameContainer = document.getElementById("device-name");
            deviceNameContainer.appendChild(deviceName);
            
            //creating the table with all the technical characteristics
            var characteristicsTable = document.createElement("table");
            characteristicsTable.setAttribute("class", "table table-bordered");
            var tableBody = document.createElement("tbody");
            characteristicsTable.appendChild(tableBody);
            
            var i=0;
            for (Object in device[0]) {
                if (i>4 && i<17) {
                    var row = document.createElement("tr");          
                    var column1 = document.createElement("td");
                    var column1Text = document.createTextNode(Object.charAt(0).toUpperCase() + Object.substring(1));
                    column1.appendChild(column1Text);
                    var column2 = document.createElement("td");
                    var column2Text = document.createTextNode(device[0][Object]);
                    column2.appendChild(column2Text);
                    row.appendChild(column1);
                    row.appendChild(column2);
                    tableBody.appendChild(row);
                }
                i++;
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
