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
        data: {query: "SELECT * FROM products, smartlife, productsmartlife " +
               "WHERE products.idProduct = '"+ idDevice +"' AND products.idProduct = productsmartlife.idProduct AND smartlife.idSmartlife = productsmartlife.idSmartlife"},
        
		success: function (response) {
			var smartlife = JSON.parse(response);
            
            var availableSmartLifeContainer = document.getElementById("available-smart-life");

			for (i = 0; i < smartlife.length; i++) {
                
                //creating buttons for available smart life services
                var smartLifeButton = document.createElement("a");
				var nameText = document.createTextNode(smartlife[i].nameSmartlife);
				smartLifeButton.appendChild(nameText);
                var urlSmartLife = "smart-life.html?idsmartlife=" + smartlife[i].idSmartlife;
                smartLifeButton.setAttribute("href", urlSmartLife);
                smartLifeButton.setAttribute("class", "btn btn-small btn-primary");
                availableSmartLifeContainer.appendChild(smartLifeButton);
                
                //creating elements for smart life dropdown menu
                var dropdown1=document.getElementById("small-smart-life-menu");
                var smartLifeLink=document.createElement("a");
                var smartLifeItem=document.createElement("li");
                smartLifeLink.setAttribute("href", "smart-life.html?idsmartlife=" + smartlife[i].idSmartlife);
                var smartLifeName=document.createTextNode(smartlife[i].namesmartlife);
                smartLifeLink.appendChild(smartLifeName);
                smartLifeItem.appendChild(smartLifeLink);
                dropdown1.appendChild(smartLifeItem);
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
        data: {query:   "SELECT * FROM products, assistance, productassistance " +
                        "WHERE products.idProduct = '" + idDevice +"' AND products.idProduct = productassistance.idProduct AND assistance.idAssistance = productassistance.idAssistance"},
        
        success: function (response) {
			var assistance = JSON.parse(response);
        
            var availableAssistenceContainer = document.getElementById("available-assistance");

			for (i = 0; i < assistance.length; i++) {

                //creating buttons for available assistence sarvices
                var assistanceButton = document.createElement("a");
				var nameText = document.createTextNode(assistance[i].nameAssistance);
				assistanceButton.appendChild(nameText);
                var urlAssistance = "assistance.html?idassistance=" + assistance[i].idAssistance;
                assistanceButton.setAttribute("href", urlAssistance);
                assistanceButton.setAttribute("class", "btn btn-small btn-primary");
                availableAssistenceContainer.appendChild(assistanceButton);
                
                //creating elements for assistance dropdown menu
                var dropdown2=document.getElementById("small-assistance-menu");
                var assistanceLink=document.createElement("a");
                var assistanceItem=document.createElement("li");
                assistanceLink.setAttribute("href", "assistance.html?idassistance=" + assistance[i].idAssistance);
                var assistanceName=document.createTextNode(assistance[i].nameAssistance);
                assistanceLink.appendChild(assistanceName);
                assistanceItem.appendChild(assistanceLink);
                dropdown2.appendChild(assistanceItem);
			}
     
		},
		error: function (request, error) {
			console.log("Error");
		}
        
});
                
})
