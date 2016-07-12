$("document").ready(
    function(){
    
    $( "#smartlife" ).empty();
            
    var category = location.search.split('idcategory=')[1];
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        
        url: "includes/php/getSmartLifeByCategory.php?id="+category, //Relative or absolute path to file.phpfile
        async: true,
        
        success: function(response) {
            var smartlife=JSON.parse(response);
            
            var i=0;
            
            for(i=0;i<smartlife.length;i++) {
                
          //      var urlSmartLife = "smart-life.html?idclasse=" + myClass + "?idcategoria=" + prodotti[i].idcategoria + "?idprodotti=" + prodotti[i].idprodotto;
                    
                //creating images dinamically
                var smartLifeImage = document.createElement("img");
                var urlImage = "images/" + smartlife[i].fotosmartlife;
                smartLifeImage.setAttribute('src', urlImage);
                smartLifeImage.setAttribute("class", "img-responsive");
                   
                //creating name dinamically
                var smartLifeName = document.createElement("h4");
                smartLifeName.setAttribute("class", "text-center");
    //            smartLifeName.setAttribute("href", urlSmartLife);
                var tempName = document.createTextNode(smartlife[i].nomesmartlife);
                smartLifeName.appendChild(tempName);
                    
                //creating discover button dinamically
                var discoverButton = document.createElement("a");
                var discover = document.createTextNode("Discover");
                discoverButton.appendChild(discover);
                discoverButton.setAttribute("class", "btn btn-primary btn-block");
                    
                //creating panel for the smart life
                 var smartLifePanel = document.createElement("div");
                smartLifePanel.setAttribute("class", "panel");
                smartLifePanel.setAttribute("id", "panel-product");
                
                //appending all the elements to the page
                smartLifePanel.appendChild(smartLifeImage);
                smartLifePanel.appendChild(smartLifeName);
                smartLifePanel.appendChild(discoverButton);
                
                //creating container for the smart life
                var smartLife = document.createElement("div");
                smartLife.setAttribute("class", "col-sm-3 feature");
                
                smartLife.appendChild(smartLifePanel);

                var container = document.getElementById("smartlife");
              
                    container.appendChild(smartLife);
            }
             
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

})