$("document").ready(
    function(){
    
    $( "#device" ).empty();
    
    var category = location.search.split('idcategory=')[1];
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        
        url: "includes/php/getDevicesByCategory.php?id="+category, //Relative or absolute path to file.phpfile
        async: true,
        
        success: function(response) {
            var devices=JSON.parse(response);
            
            var i=0;
        
            //setting orientation info
            var info=document.getElementById("active-info");
            var infoName=document.createTextNode(devices[0].nomecategoria);
            info.appendChild(infoName);
            
            for(i=0;i<devices.length;i++) {
                
    //           var urlProdotto = "device.html?idclasse=" + myClass + "?idcategoria=" + prodotti[i].idcategoria + "?idprodotti=" + prodotti[i].idprodotto;
                    
                //creating images dinamically
                var deviceImage = document.createElement("img"); 
                var urlImage = "images/" + devices[i].fotoprodotto;
                deviceImage.setAttribute('src', urlImage);
                deviceImage.setAttribute("class", "img-responsive");
    //            deviceImage.setAttribute("href", urlProdotto);
                   
                //creating name dinamically
                var deviceName = document.createElement("h4");
                deviceName.setAttribute("class", "text-center");
    //            deviceName.setAttribute("href", urlProdotto);
                var tempName = document.createTextNode(devices[i].nomeprodotto);
                deviceName.appendChild(tempName);
                    
                //creating price dinamically
                var devicePrice = document.createElement("p");
                devicePrice.setAttribute("class", "text-center");
                var priceText = document.createTextNode("$"+devices[i].prezzoprodotto);
                devicePrice.appendChild(priceText);
                    
                //creating a panel for the device
                var devicePanel = document.createElement("div");
                devicePanel.setAttribute("class", "panel");
                devicePanel.setAttribute("id", "panel-product");
                
                //appending all the elements to the panel
                devicePanel.appendChild(deviceImage);
                devicePanel.appendChild(deviceName);
                devicePanel.appendChild(devicePrice);
                
                //creating container for the device
                var device = document.createElement("div");
                device.setAttribute("class", "col-sm-3 feature");
                
                device.appendChild(devicePanel);

                var container = document.getElementById("device");
              
                    container.appendChild(device);
            }
             
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

})