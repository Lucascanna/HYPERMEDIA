$("document").ready(
    function(){
        
    var idAssistance = location.search.split('idassistance=')[1];
        
    $.ajax({
        method: "POST",          
        crossDomain: true, 
        
        url: "includes/php/query.php",
        data: {query: "SELECT * FROM assistenza, categorieassistenza " +
        "WHERE assistenza.idassistenza=categorieassistenza.idcategoria AND assistenza.idassistenza = '"+ idAssistance +"'"},
     
        success: function(response) {
            var assistance=JSON.parse(response);
            
            //setting orientation info
            var categoryInfo=document.getElementById("category-info");
            var urlCategoryInfo="assistance-by-category.html?idcategory=" +assistance[0].idcategoria;
            var categoryInfoLink=document.createElement("a");
            categoryInfoLink.setAttribute("href", urlCategoryInfo);
            var categoryInfoName=document.createTextNode(assistance[0].nomecategoria);
            categoryInfoLink.appendChild(categoryInfoName);
            categoryInfo.appendChild(categoryInfoLink);
            var assistanceInfo=document.getElementById("assistance-info");
            var assistanceInfoName=document.createTextNode(assistance[0].nomeassistenza);
            assistanceInfo.appendChild(assistanceInfoName);
            
            
            //creating assistance service name
            var assistanceName = document.createElement("h2");
            var nameText = document.createTextNode(assistance[0].nomeassistenza);
            assistanceName.appendChild(nameText);
            var assistanceNameContainer = document.getElementById("assistance-name");
            assistanceNameContainer.appendChild(assistanceName);
            
            //creating assistance service description
            var assistanceDescription = document.createElement("p");
            var dssistanceText = document.createTextNode(assistance[0].descrizioneassistenza);
            assistanceDescription.appendChild(dssistanceText);
            var assistanceDescriptionContainer = document.getElementById("assistance-description");
            assistanceDescriptionContainer.appendChild(assistanceDescription);
        
            
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });
        

                
})
