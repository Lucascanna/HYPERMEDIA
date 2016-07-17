$("document").ready(
    function(){
    
    $( "#device" ).empty();
    
    var category = location.search.split('idcategory=')[1];
    var queryString;
    if(category == 5){
        queryString =   " SELECT * FROM products "+
                        "WHERE products.promotionProduct = 1 " +
                        "ORDER BY products.idProduct ASC " ;  
    }
    else{
        queryString =   " SELECT DISTINCT * FROM products, productscategories "+
                        "WHERE products.idCategory=productscategories.idCategory AND products.idCategory = '"+ category + "'"+
                        "ORDER BY products.idProduct ASC  ";
    }
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        
        url: "includes/php/query.php", //Relative or absolute path to file.phpfile
        data: { query: queryString},
        
        success: function(response) {
            var devices=JSON.parse(response);
            
            var i=0;
        
            //setting orientation info
            var info=document.getElementById("active-info");
            var infoName;
            if(category==5)
                infoName=document.createTextNode("Promotions");
            else
                infoName=document.createTextNode(devices[0].namecategory);
            info.appendChild(infoName);
            
            for(i=0;i<devices.length;i++) {
                                    
                //creating images dinamically
                var deviceImage = document.createElement("img"); 
                var urlImage = "images/" + devices[i].photoProduct;
                deviceImage.setAttribute('src', urlImage);
                deviceImage.setAttribute("class", "img-responsive");
        
                //setting the link to the image
                var urlProdotto = "device.html?iddevice=" + devices[i].idProduct;
                var deviceLink = document.createElement("a");
                deviceLink.setAttribute("href", urlProdotto);
                deviceLink.appendChild(deviceImage);
                   
                //creating name dinamically
                var deviceName = document.createElement("h4");
                deviceName.setAttribute("class", "text-center");
                var tempName = document.createTextNode(devices[i].nameProduct);
                deviceName.appendChild(tempName);
                    
                //creating price dinamically
                var devicePrice = document.createElement("p");
                devicePrice.setAttribute("class", "text-center");
                var priceText = document.createTextNode("$"+devices[i].priceProduct);
                devicePrice.appendChild(priceText);
                    
                //creating a panel for the device
                var devicePanel = document.createElement("div");
                devicePanel.setAttribute("class", "panel");
                devicePanel.setAttribute("id", "panel-product");
                
                //appending all the elements to the panel
                devicePanel.appendChild(deviceLink);
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