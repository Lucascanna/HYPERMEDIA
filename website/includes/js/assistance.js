$("document").ready(
    function(){
        
    var idAssistance = location.search.split('idassistance=')[1];
        
    $.ajax({
        method: "POST",          
        crossDomain: true, 
        
        url: "includes/php/query.php",
        data: {query: "SELECT * FROM assistance, categoriesAssistance " +
        "WHERE assistance.idCategory=categoriesAssistance.idCategory AND assistance.idAssistance = '"+ idAssistance +"'"},
     
        success: function(response) {
            var assistance=JSON.parse(response);
            
            //setting orientation info
            var categoryInfo=document.getElementById("category-info");
            var urlCategoryInfo="assistance-by-category.html?idcategory=" +assistance[0].idCategory;
            var categoryInfoLink=document.createElement("a");
            categoryInfoLink.setAttribute("href", urlCategoryInfo);
            var categoryInfoName=document.createTextNode(assistance[0].nameCategory);
            categoryInfoLink.appendChild(categoryInfoName);
            categoryInfo.appendChild(categoryInfoLink);
            var assistanceInfo=document.getElementById("assistance-info");
            var assistanceInfoName=document.createTextNode(assistance[0].nameAssistance);
            assistanceInfo.appendChild(assistanceInfoName);
            
            
            //creating assistance service name
            var assistanceName = document.createElement("h2");
            var nameText = document.createTextNode(assistance[0].nameAssistance);
            assistanceName.appendChild(nameText);
            var assistanceNameContainer = document.getElementById("assistance-name");
            assistanceNameContainer.appendChild(assistanceName);
            
            //creating assistance service description
            var assistanceDescription = document.createElement("p");
            var dssistanceText = document.createTextNode(assistance[0].descriptionAssistance);
            assistanceDescription.appendChild(dssistanceText);
            var assistanceDescriptionContainer = document.getElementById("assistance-description");
            assistanceDescriptionContainer.appendChild(assistanceDescription);
        
            
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
        data: {query: "SELECT * FROM assistance, products, productassistance " +
               "WHERE assistance.idAssistance = '"+ idAssistance +"' AND assistance.idAssistance = productassistance.idAssistance AND products.idProduct = productassistance.idProduct"},
        
		success: function (response) {
			var devices = JSON.parse(response);
            
            var availableDevicesContainer = document.getElementById("available-devices-panel");

			for (i = 0; i < devices.length; i++) {
                
                console.log(devices[i].idProduct);
                
                //creating buttons for available devices
                var deviceButton = document.createElement("a");
				var nameText = document.createTextNode(devices[i].nameProduct);
				deviceButton.appendChild(nameText);
                var urlDevice = "device.html?iddevice=" + devices[i].idProduct;
                deviceButton.setAttribute("href", urlDevice);
                deviceButton.setAttribute("class", "btn btn-small btn-primary");
                availableDevicesContainer.appendChild(deviceButton);
                
                //creating elements for dropdown menu
                var dropdown=document.getElementById("small-devices-menu");
                var deviceLink=document.createElement("a");
                var deviceItem=document.createElement("li");
                deviceLink.setAttribute("href", "device.html?iddevice=" + devices[i].idProduct);
                var deviceName=document.createTextNode(devices[i].nameProduct);
                deviceLink.appendChild(deviceName);
                deviceItem.appendChild(deviceLink);
                dropdown.appendChild(deviceItem);
			}
            
		},
		error: function (request, error) {
			console.log("Error");
		}
	});
                
})
