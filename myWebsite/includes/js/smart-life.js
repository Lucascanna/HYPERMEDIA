$("document").ready(
    function(){ 
        
        var idDevice = location.search.split('idsmartlife=')[1];

        $.ajax({ 
            method: "POST", 
            crossDomain: true, 
            url: "includes/php/getSmartLife.php?id=" +idDevice, //Relative or absolute path to file.phpfile  
            
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
        return false; 
});