$("document").ready(
    function(){
    
    $( "#device" ).empty();
    
    var idprodotti=1;    
    var category = location.search.split('idcategory=')[1];
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        
        url: "includes/php/getDevicesByCategory.php?id="+category, //Relative or absolute path to file.phpfile
        async: true,
        
        data: {prodotti:idprodotti},
        success: function(response) {
            var devices=JSON.parse(response);
            
            var i=0;
            
            for(i=0;i<devices.length;i++) {
                
    //           var urlProdotto = "device.html?idclasse=" + myClass + "?idcategoria=" + prodotti[i].idcategoria + "?idprodotti=" + prodotti[i].idprodotto;
                    
                //creating images dinamically
                var deviceImage = document.createElement("img");  
                var urlImage = "images/" + devices[i].fotoprodotto;
                deviceImage.setAttribute('src', urlImage);
                deviceImage.setAttribute("class", "img-responsive");
                   
                //creating name dinamically
                var deviceName = document.createElement("a");
                deviceName.setAttribute('class', 'btn btn-primary btn-block');
    //            deviceName.setAttribute("href", urlProdotto);
                var tempName = document.createTextNode(devices[i].nomeprodotto);
                deviceName.appendChild(tempName);
                    
                 //creating description dinamically
                var deviceDescription = document.createElement("p");
                var descriptionText = document.createTextNode("$"+devices[i].prezzoprodotto);
                deviceDescription.appendChild(descriptionText);
                    
                //creating a panel for the device
                var devicePanel = document.createElement("div");
                devicePanel.setAttribute("class", "panel");
                devicePanel.setAttribute("id", "panel-product");
                
                //appending all the elements to the panel
                devicePanel.appendChild(deviceImage);
                devicePanel.appendChild(deviceDescription);
                devicePanel.appendChild(deviceName);
                
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