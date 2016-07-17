$("document").ready(
    function(){
    
    $( "#smartlife" ).empty();
            
    var category = location.search.split('idcategory=')[1];
    var queryString;
        
    if(category == 5){
        queryString =   "SELECT * FROM smartlife " +
                        "WHERE smartlife.promotionsSmartlife = 1 "+
                        "ORDER BY smartlife.idSmartlife ASC  ";  
    }
    else{
        queryString =   "SELECT DISTINCT * FROM smartlife, smartlifecategories " +
                        "WHERE smartlife.idCategory=smartlifecategories.idCategory AND smartlife.idCategory = '"+category+"' " +
                        "ORDER BY smartlife.idSmartlife ASC"  ;
    }
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        
        url: "includes/php/query.php", //Relative or absolute path to file.phpfile
        data: {query: queryString},
        
        success: function(response) {
            var smartlife=JSON.parse(response);
            
            var i=0;
            
            //setting orientation info
            var info=document.getElementById("active-info");
            var infoName;
            if(category==5)
                infoName=document.createTextNode("Promotions");
            else
                infoName=document.createTextNode(smartlife[0].nameCategory);
            info.appendChild(infoName);
            
            for(i=0;i<smartlife.length;i++) {
                                    
                //creating images dinamically
                var smartLifeImage = document.createElement("img");
                var urlImage = "images/" + smartlife[i].photoSmartlife;
                smartLifeImage.setAttribute('src', urlImage);
                smartLifeImage.setAttribute("class", "img-responsive");
        
    
                //creating name dinamically
                var smartLifeName = document.createElement("h4");
                smartLifeName.setAttribute("class", "text-center");
                var tempName = document.createTextNode(smartlife[i].nameSmartlife);
                smartLifeName.appendChild(tempName);
                    
                //creating discover button dinamically
                var discoverButton = document.createElement("a");
                var urlSmartLife = "smart-life.html?idsmartlife=" + smartlife[i].idSmartlife;
                discoverButton.setAttribute("href",urlSmartLife);
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