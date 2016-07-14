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
            var characteristicsLink=document.getElementById("technical-characteristics");
            var characteristicsurl="device-characteristics.html?iddevice="+device[0].idprodotto;
            characteristicsLink.setAttribute("href", characteristicsurl);
            
            //creating device image
            var deviceImage = document.createElement("img");
            var urlImage = "images/" + device[0].fotoprodotto;
            deviceImage.setAttribute('src', urlImage);
            deviceImage.setAttribute("class", "img-responsive");
            var deviceImageContainer = document.getElementById("device-image");
            deviceImageContainer.appendChild(deviceImage);

            //creating device name
            var deviceName = document.createElement("h2");
            var nameText = document.createTextNode(device[0].nomeprodotto);
            deviceName.appendChild(nameText);
            var deviceNameContainer = document.getElementById("device-name");
            deviceNameContainer.appendChild(deviceName);
            
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
        
		url: "includes/php/query.php",
        data: {query: "SELECT * FROM prodotti, smartlife, prodottosmartlife " +
               "WHERE prodotti.idprodotto = '"+ idDevice +"' AND prodotti.idprodotto = prodottosmartlife.idprodotto AND smartlife.idsmartlife = prodottosmartlife.idsmartlife"},
        
		success: function (response) {
			var smartlife = JSON.parse(response);
            
            var availableSmartLifeContainer = document.getElementById("available-smart-life");

			for (i = 0; i < smartlife.length; i++) {
                
                //creating buttons for available smart life services
                var smartLifeButton = document.createElement("a");
				var nameText = document.createTextNode(smartlife[i].nomesmartlife);
				smartLifeButton.appendChild(nameText);
        //      var urlDevice = "prodottoSmartLife.html?idclasse=2?idcategoria=" +prodotti[i].idcategoria           + "?idprodotti=" + prodotti[i].idsmartlife;
		//		nomeTemp.setAttribute("href", urlDevice);
                smartLifeButton.setAttribute("class", "btn btn-small btn-primary");
                availableSmartLifeContainer.appendChild(smartLifeButton);
			}
            
		},
		error: function (request, error) {
			console.log("Error");
		}
	});
        
    $.ajax({
		method: "POST",
		crossDomain: true,
        
		url: "includes/php/query.php",
        data: {query:   "SELECT * FROM prodotti, assistenza, prodottoassistenza " +
                        "WHERE prodotti.idprodotto = '" + idDevice +"' AND prodotti.idprodotto = prodottoassistenza.idprodotto AND assistenza.idassistenza = prodottoassistenza.idassistenza"},
        
        success: function (response) {
			var assistance = JSON.parse(response);
        
            var availableAssistenceContainer = document.getElementById("available-assistance");

			for (i = 0; i < assistance.length; i++) {

                //creating buttons for available assistence services
                var assistanceButton = document.createElement("a");
				var nameText = document.createTextNode(assistance[i].nomeassistenza);
				assistanceButton.appendChild(nameText);
        //      var urlDevice = "prodottoSmartLife.html?idclasse=2?idcategoria=" +prodotti[i].idcategoria           + "?idprodotti=" + prodotti[i].idsmartlife;
		//		nomeTemp.setAttribute("href", urlDevice);
                assistanceButton.setAttribute("class", "btn btn-small btn-primary");
                availableAssistenceContainer.appendChild(assistanceButton);
			}
     
		},
		error: function (request, error) {
			console.log("Error");
		}
        
});
                
})
