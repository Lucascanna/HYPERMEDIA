$("document").ready(
    function(){
    
    $( "#device" ).empty();
            
    var category = location.search.split('idcategory=')[1];
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        
        url: "/includes/php/getSmartLifeByCategory.php?id="+category, //Relative or absolute path to file.phpfile
        async: true,
        
        success: function(response) {
            var devices=JSON.parse(response);
            
            var i=0;
            
            for(i=0;i<prodotti.length;i++) {
                
          //      var urlProdotto = "device.html?idclasse=" + myClass + "?idcategoria=" + prodotti[i].idcategoria + "?idprodotti=" + prodotti[i].idprodotto;
                    
                //creating images dinamically
                var image = document.createElement("img");  
                var urlImage = "images/" + smartlife[i].fotosmartlife;
                image.setAttribute('src', urlImage);
                image.setAttribute("class", "img-responsive");
                   
                //creating name dinamically
                var deviceName = document.createElement("a");
                deviceName.setAttribute('class', 'btn btn-primary btn-block');
                deviceName.setAttribute("href", urlSmartLife);
                var tempName = document.createTextNode(smartlife[i].nomesmartlife);
                deviceName.appendChild(tempName);
                    
                 //creating description dinamically
                var deviceDescription = document.createElement("p");
                var descriptionText = document.createTextNode("$"+smartlife[i].prezzosmartlife);
                deviceDescription.appendChild(descriptionText);
                    
                 //creating container for the device
                var device = document.createElement("div");
                device.setAttribute("class", "col-sm-3 feature");
                    
                var devicePanel = document.createElement("div");
                devicePanel.setAttribute("class", "panel");
                devicePanel.setAttribute("id", "panel-product");
                    
                //appending all the elements to the page
                devicePanel.appendChild(smartlifeImage);
                devicePanel.appendChild(smartlifeDescription);
                devicePanel.appendChild(smartlifeName);
                    
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

}