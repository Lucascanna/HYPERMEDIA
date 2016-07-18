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
            
            var container=document.getElementById("assistance");
            
            for(i=0;i<assistances.length;i++){
                var urlAssistance = "assistance.html?idassistance=" + assistances[i].idAssistance;
                
                var minorCol=document.createElement("div");
                minorCol.setAttribute("class", "col-sm-2");
                
                var mainCol=document.createElement("div");
                mainCol.setAttribute("class", "col-sm-4");
                
                var assistanceName = document.createElement("a");
                assistanceName.setAttribute("class", "text-center");
                assistanceName.setAttribute("href", urlAssistance);
                var tempName = document.createTextNode(assistances[i].nameAssistance);
                assistanceName.appendChild(tempName);
                    
                var panel = document.createElement("div");
                panel.setAttribute("class", "panel");
                    
                panel.appendChild(assistanceName);
                mainCol.appendChild(panel);

                if(i%2==0){
                    var row = document.createElement("div");
                    row.setAttribute("class", "row text-center");
                    
                    row.appendChild(minorCol);
                    row.appendChild(mainCol);
                    
                    container.appendChild(row);
                }
                
                else{
                    row.appendChild(mainCol);
                    row.appendChild(minorCol);
                }     
            }
             
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

})