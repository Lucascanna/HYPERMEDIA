$("document").ready(
    function(){
        
    var idDevice = location.search.split('iddevice=')[1];
        
    $.ajax({
        method: "POST",          
        crossDomain: true, 
        
        url: "includes/php/getDevice.php?id="+idDevice,
        async: true,
     
        success: function(response) {
            var device=JSON.parse(response);
            
            //creating device image
            var deviceImage = document.createElement("img");
            var urlImage = "images/" + device[0].fotoprodotto;
            deviceImage.setAttribute('src', urlImage);
            deviceImage.setAttribute("class", "img-responsive");
            var deviceImageContainer = document.getElementById("device-image");
            deviceImageContainer.appendChild(deviceImage);
            
            //creating "buy" button
            var buyButton = document.createElement("a");
     //       buyButton.setAttribute("href", );
            var text = document.createTextNode("Buy");
            buyButton.appendChild(text);
            buyButton.setAttribute("class", "btn btn-primary btn-block");
     //       buyButton.setAttribute("href","buy.html?idclasse=1&idcategoria=" + myprodotto.idcategoria +"&idprodotti=" + myprodotto.idprodotto);
            var buttonContainer = document.getElementById("buy-button");
            buttonContainer.appendChild(buyButton);
            

            //creating device name
            var deviceName = document.createElement("h2");
            var nameText = document.createTextNode(device[0].nomeprodotto);
            deviceName.appendChild(nameText);
            var deviceNameContainer = document.getElementById("device-name"); deviceNameContainer.appendChild(deviceName);
            
            //creating device description
            var deviceDescription = document.createElement("p");
            var descriprionText = document.createTextNode(device[0].descrizioneprodotto);
            deviceDescription.appendChild(descriprionText);
            var deviceDescriptionContainer = document.getElementById("device-description"); deviceDescriptionContainer.appendChild(deviceDescription);
            
            //creating device price
            var devicePrice = document.createElement("h4");
            var priceText = document.createTextNode("$"+device[0].prezzoprodotto);
            devicePrice.appendChild(priceText);
            var devicePriceContainer = document.getElementById("device-price"); devicePriceContainer.appendChild(devicePrice);

            
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
        

    $.ajax({
		method: "POST",
		crossDomain: true,
        
		url: "includes/php/getDeviceAvailableSmartLife.php?id="+idDevice,
        async: true,
        
		success: function (response) {
			var smartlife = JSON.parse(response);
            
            //creating a row for the available smart life buttons
            var availableSmartLifeContainer = document.getElementById("available-smart-life");

			for (i = 0; i < smartlife.length; i++) {
                
                if(i % 5 == 0){
                    currentRow = document.createElement("div");
                    currentRow.setAttribute("class", "row");
                    availableSmartLifeContainer.appendChild(currentRow);
                }
                
                //creating buttons for available smart life services
                var smartLifeButton = document.createElement("a");
				var nameText = document.createTextNode(smartlife[i].nomesmartlife);
				smartLifeButton.appendChild(nameText);
        //      var urlDevice = "prodottoSmartLife.html?idclasse=2?idcategoria=" +prodotti[i].idcategoria           + "?idprodotti=" + prodotti[i].idsmartlife;
		//		nomeTemp.setAttribute("href", urlDevice);
                smartLifeButton.setAttribute("class", "btn btn-small btn-primary");
                currentRow.appendChild(smartLifeButton);
			}
            
		},
		error: function (request, error) {
			console.log("Error");
		}
	});
        
    $.ajax({
		method: "POST",
		crossDomain: true,
        
		url: "includes/php/getDeviceAvailableAssistance.php?id="+idDevice,
        async: true,
        
        success: function (response) {
			var assistance = JSON.parse(response);
        
		    //creating a row for the available smart life buttons
            var availableAssistenceContainer = document.getElementById("available-assistance");

			for (i = 0; i < assistance.length; i++) {
                
                if(i % 5 == 0){
                    currentRow = document.createElement("div");
                    currentRow.setAttribute("class", "row");
                    availableAssistenceContainer.appendChild(currentRow);
                }

                //creating buttons for available assistence services
                var assistanceButton = document.createElement("a");
				var nameText = document.createTextNode(assistance[i].nomeassistance);
				assistanceButton.appendChild(nameText);
        //      var urlDevice = "prodottoSmartLife.html?idclasse=2?idcategoria=" +prodotti[i].idcategoria           + "?idprodotti=" + prodotti[i].idsmartlife;
		//		nomeTemp.setAttribute("href", urlDevice);
                assistanceButton.setAttribute("class", "btn btn-small btn-primary");
                currentRow.appendChild(assistanceButton);
			}
     
		},
		error: function (request, error) {
			console.log("Error");
		}
        
});
                
})
