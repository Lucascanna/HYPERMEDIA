$("document").ready(
    function(){
        
    var idDevice = location.search.split('iddevice=')[1];
        
    $.ajax({
        method: "POST",          
        crossDomain: true, 
        
        url: "includes/php/query.php",
        data: {query: "SELECT * FROM products, productscategories " +
        "WHERE products.idCategory=productscategories.idCategory AND products.idProduct = '"+ idDevice +"'"},
     
        success: function(response) {
            var device=JSON.parse(response);
            
            //setting orientation info
            var categoryInfo=document.getElementById("category-info");
            var urlCategoryInfo="devices-by-category.html?idcategory=" +device[0].idCategory;
            var categoryInfoLink=document.createElement("a");
            categoryInfoLink.setAttribute("href",urlCategoryInfo);
            var categoryInfoName=document.createTextNode(device[0].nameCategory);
            categoryInfoLink.appendChild(categoryInfoName);
            categoryInfo.appendChild(categoryInfoLink);
            var deviceInfo=document.getElementById("device-info");
            var deviceInfoName=document.createTextNode(device[0].nameProduct);
            deviceInfo.appendChild(deviceInfoName);
            
            //setting A2A links
            var characteristicsLink=document.getElementById("technical-characteristics");
            var characteristicsurl="device-characteristics.html?iddevice="+device[0].idProduct;
            characteristicsLink.setAttribute("href", characteristicsurl);
            
            //creating device image
            var deviceImage = document.createElement("img");
            var urlImage = "images/" + device[0].photoProduct;
            deviceImage.setAttribute('src', urlImage);
            deviceImage.setAttribute("class", "img-responsive");
            var deviceImageContainer = document.getElementById("device-image");
            deviceImageContainer.appendChild(deviceImage);

            //creating device name
            var deviceName = document.createElement("h2");
            var nameText = document.createTextNode(device[0].nameProduct);
            deviceName.appendChild(nameText);
            var deviceNameContainer = document.getElementById("device-name");
            deviceNameContainer.appendChild(deviceName);
            
            //creating device description
            var deviceDescription = document.createElement("p");
            var descriprionText = document.createTextNode(device[0].descriptionProduct);
            deviceDescription.appendChild(descriprionText);
            var deviceDescriptionContainer = document.getElementById("device-description"); deviceDescriptionContainer.appendChild(deviceDescription);
            
            //creating device price
            var devicePrice = document.createElement("h4");
            var priceText = document.createTextNode("$"+device[0].priceProduct);
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
        data: {query: "SELECT * FROM products, smartlife, productSmartlife " +
               "WHERE products.idProduct = '"+ idDevice +"' AND products.idProduct = productSmartlife.idProduct AND smartlife.idSmartlife = productSmartlife.idSmartlife"},
        
		success: function (response) {
			var smartlife = JSON.parse(response);
            
            var availableSmartLifeContainer = document.getElementById("available-smart-life");

			for (i = 0; i < smartlife.length; i++) {
                
                //creating buttons for available smart life services
                var smartLifeButton = document.createElement("a");
				var nameText = document.createTextNode(smartlife[i].nameSmartlife);
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
        data: {query:   "SELECT * FROM products, assistance, productAssistance " +
                        "WHERE products.idProduct = '" + idDevice +"' AND products.idProduct = productAssistance.idProduct AND assistance.idAssistance = productAssistance.idAssistance"},
        
        success: function (response) {
			var assistance = JSON.parse(response);
        
            var availableAssistenceContainer = document.getElementById("available-assistance");

			for (i = 0; i < assistance.length; i++) {

                //creating buttons for available assistence services
                var assistanceButton = document.createElement("a");
				var nameText = document.createTextNode(assistance[i].nameAssistance);
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
