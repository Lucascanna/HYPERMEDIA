$("document").ready(
    function(){ 
        
        var idSmartlife = location.search.split('idsmartlife=')[1];

        $.ajax({ 
            method: "POST", 
            crossDomain: true, 
            url: "includes/php/query.php", //Relative or absolute path to file.phpfile 
            data: {query: "SELECT * FROM smartlife, categoriesmartlife "+
                "WHERE categoriesmartlife.idcategoria=smartlife.idcategoria AND smartlife.idsmartlife = '"+ idSmartlife+ "'"},
            
            success: function(response) { 
                
                //put the query result in an array of js objects
                var smartlife=JSON.parse(response);
                
                //setting orientation info
                var categoryInfo=document.getElementById("category-info");
                var urlCategoryInfo="smart-life-by-category.html?idcategory=" +smartlife[0].idcategoria;
                var categoryInfoLink=document.createElement("a");
                categoryInfoLink.setAttribute("href",urlCategoryInfo);
                var categoryInfoName=document.createTextNode(smartlife[0].nomecategoria);
                categoryInfoLink.appendChild(categoryInfoName);
                categoryInfo.appendChild(categoryInfoLink);
                var smartlifeInfo=document.getElementById("smartlife-info");
                var smartlifeInfoName=document.createTextNode(smartlife[0].nomesmartlife);
                smartlifeInfo.appendChild(smartlifeInfoName);
                
                //setting the faq link
                var faqLink=document.getElementById("faq-link");
                var faqurl="smart-life-faq.html?idsmartlife="+smartlife[0].idsmartlife;
                faqLink.setAttribute("href", faqurl);
                
                //setting main image of the page
                var img=document.getElementById("big-image");
                img.setAttribute("src","images/big-"+smartlife[0].fotosmartlife);
                
                //setting description and activation text
                var headerDescription=document.getElementById("header-description");
                var text=document.createTextNode(smartlife[0].nomesmartlife);
                headerDescription.appendChild(text);
                var textDescription=document.getElementById("text-description");
                text=document.createTextNode(smartlife[0].descrizionelongsmartlife);
                textDescription.appendChild(text);
                var textActivation=document.getElementById("text-activation");
                text=document.createTextNode(smartlife[0].regoleattivazionesmartlife);
                textActivation.appendChild(text);
                
                
                
                          
            }, 
            error: function(request,error) { 
                console.log(request+":"+error);
            } 
        });
        
        $.ajax({
		method: "POST",
		crossDomain: true,
        
		url: "includes/php/query.php",
        data: {query: "SELECT * FROM prodotti, smartlife, prodottosmartlife " +
               "WHERE smartlife.idsmartlife = '"+ idSmartlife +"' AND prodotti.idprodotto = prodottosmartlife.idprodotto AND smartlife.idsmartlife = prodottosmartlife.idsmartlife"},
        
		success: function (response) {
			var availableDevices = JSON.parse(response);
            
            var availableDevicesContainer = document.getElementById("available-devices");
            var count=0;
            var row;
            
			for (i = 0; i < availableDevices.length; i++) {
                //creating buttons for available smart life services
                if(count%4==0){
                    row=document.createElement("div");
                    row.setAttribute("class","row");
                    availableDevicesContainer.appendChild(row);
                    var coloumn=document.createElement("div");
                    coloumn.setAttribute("class","col-sm-3");
                    row.appendChild(coloumn);
                    var deviceButton = document.createElement("a");
                    deviceButton.setAttribute("id","btn-related-groups");
                    var nameText = document.createTextNode(availableDevices[i].nomeprodotto);
                    deviceButton.appendChild(nameText);
                    var urlDevice = "device.html?iddevice=" + availableDevices[i].idprodotto;
                    deviceButton.setAttribute("href", urlDevice);
                    deviceButton.setAttribute("class", "btn btn-primary btn-block btn-small");
                    coloumn.appendChild(deviceButton);
                    count++;
                }
                else{
                    var coloumn=document.createElement("div");
                    coloumn.setAttribute("class","col-sm-3");
                    row.appendChild(coloumn);
                    var deviceButton = document.createElement("a");
                    deviceButton.setAttribute("id","btn-related-groups");
                    var nameText = document.createTextNode(availableDevices[i].nomeprodotto);
                    deviceButton.appendChild(nameText);
                    var urlDevice = "device.html?iddevice=" + availableDevices[i].idprodotto;
                    deviceButton.setAttribute("href", urlDevice);
                    deviceButton.setAttribute("class", "btn btn-primary btn-block btn-small");
                    coloumn.appendChild(deviceButton);
                    count++;
                }
                
                //creating elements for dropdown menu
                var dropdown=document.getElementById("small-menu");
                var deviceLink=document.createElement("a");
                var deviceItem=document.createElement("li");
                deviceLink.setAttribute("href", "device.html?iddevice=" + availableDevices[i].idprodotto);
                var deviceName=document.createTextNode(availableDevices[i].nomeprodotto);
                deviceLink.appendChild(deviceName);
                deviceItem.appendChild(deviceLink);
                dropdown.appendChild(deviceItem);
                
                
			}
            
		},
		error: function (request, error) {
			console.log("Error");
		}
	});
        return false; 
});