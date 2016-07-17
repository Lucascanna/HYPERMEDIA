$("document").ready(
    function(){
    
    $( "#assistance" ).empty();
            
    var category = location.search.split('idcategory=')[1];
    var queryString;
        
    if(category==4){
        queryString = "SELECT * FROM assistance " +
                      "WHERE assistance.highlightsBoolean = 1 " +
                      "ORDER BY assistance.idAssistance ASC  "  ; 
    }
        
    else{
        queryString = "SELECT DISTINCT * FROM assistance, categoriesAssistance " +
                      "WHERE assistance.idCategory=categoriesAssistance.idCategory AND assistance.idCategory = '"+category+"' " +
                      "ORDER BY assistance.idAssistance ASC"  ;
    }
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        
        url: "includes/php/query.php", //Relative or absolute path to file.phpfile
        data: {query: queryString},
        
        success: function(response) {
            var assistances=JSON.parse(response);
            
            var i=0;
            
            //setting orientation info
            var info=document.getElementById("active-info");
            var infoName;
            if(category==4)
                infoName=document.createTextNode("Highlights");
            else{
                infoName=document.createTextNode(assistances[0].nameCategory);
            }
            
            info.appendChild(infoName);
            
            for(i=0;i<assistances.length;i++) {
                                    
                //creating name dinamically
                var assistanceName = document.createElement("h4");
                assistanceName.setAttribute("class", "text-center");
                var tempName = document.createTextNode(assistances[i].nameAssistance);
                assistanceName.appendChild(tempName);
                    
                //creating discover button dinamically
                var discoverButton = document.createElement("a");
                var urlAssistance = "assistance.html?idassistance=" + assistances[i].idAssistance;
                discoverButton.setAttribute("href",urlAssistance);
                var discover = document.createTextNode("Discover");
                discoverButton.appendChild(discover);
                discoverButton.setAttribute("class", "btn btn-primary btn-block");
                    
                //creating panel for the assistance
                var assistancePanel = document.createElement("div");
                assistancePanel.setAttribute("class", "panel");
                assistancePanel.setAttribute("id", "panel-product");
                
                //appending all the elements to the page
                assistancePanel.appendChild(assistanceName);
                assistancePanel.appendChild(discoverButton);
                
                //creating container for the assistance
                var assistance = document.createElement("div");
                assistance.setAttribute("class", "col-sm-3 feature");
                
                assistance.appendChild(assistancePanel);

                var container = document.getElementById("assistance");
              
                    container.appendChild(assistance);
            }
             
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

})