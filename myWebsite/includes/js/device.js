$("document").ready(
    function(){
        
    var idDevice = location.search.split('idDevice=')[1];
    
    $.ajax({
        method: "POST",          
        crossDomain: true, 
        
        url: "includes/php/getDevice.php?id="+idDevice,
        async: true,
     
        success: function(response) {
            var myprodotto=JSON.parse(response);
            
            //creating device image
            var deviceImage = document.createElement("img");
            var urlImage = "images/" + myprodotto.fotoprodotto;
            deviceImage.setAttribute('src', urlImg);
            deviceImage.setAttribute("class", "img-responsive");
            
            //creating "buy" button
      //      document.getElementById("buy").setAttribute("href","buy.html?idclasse=1&idcategoria=" + myprodotto.idcategoria +"&idprodotti=" + myprodotto.idprodotto);
            
            //creating container for the image
            var deviceImageContainer = document.getElementById("device-image");
            priceText.appendChild(imgTemp);


            //creating device name
            var deviceName = document.createElement("h2");
            var nameText = document.createTextNode(myprodotto.nomeprodotto);
            deviceName.appendChild(nameText);
            
            //creating device description
            var deviceDescription = document.createElement("p");
            var descriprionText = document.createTextNode(myprodotto.descrizioneprodotto);
            deviceDescription.appendChild(descriprionText);
            
            //creating device price
            var devicePrice = document.createElement("p");
            var priceText = document.createTextNode("$"+myprodotto.prezzoprodotto);
            devicePrice.appendChild(priceText);

            //creating container for name, description and price
            var deviceInfoContainer = document.getElementById("panel-device-infos"); deviceInfoContainer.appendChild(deviceName);
            deviceInfoContainer.appendChild(deviceDescriprion);
            deviceInfoContainer.appendChild(devicePrice);        
            
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

})