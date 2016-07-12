$("document").ready(
    function(){ 
        //var idcategoria=1;
        $.ajax({ 
            method: "POST", 
            crossDomain: true, 
            url: "includes/php/getDevicesCategories.php", //Relative or absolute path to file.phpfile 
            //data: {deviceCategories:idcategoria}, 
            success: function(response) { 
                
                var deviceCategories=JSON.parse(response);
                var container=document.getElementById("main");
                var i=0;
                
                for(i=0;i<deviceCategories.length;i++){
                    
                    //creating dynamic page elements
                    var currentRow=document.createElement("div");
                    currentRow.setAttribute("class", "row"); 
                    var firstColoumn=document.createElement("div");
                    firstColoumn.setAttribute("class", "col-sm-12");
                    var currentPanel=document.createElement("div");
                    currentPanel.setAttribute("class", "panel panel-primary");
                    var panelHeading=document.createElement("div");
                    panelHeading.setAttribute("class","panel-heading");
                    var panelContent=document.createElement("div");
                    panelContent.setAttribute("class","panel-body");
                    var img1=document.createElement("img");
                    img1.setAttribute("class","img-responsive");
                    var img2=document.createElement("img");
                    img2.setAttribute("class","img-responsive");
                    var img3=document.createElement("img");
                    img3.setAttribute("class","img-responsive");
                
                    
                    //filling elements with content
                    var name=document.createTextNode(deviceCategories[i].nomecategoria);
                    var devices=askForDevices(deviceCategories[i].idcategoria);
          /*          var urlimg1="images/"+devices[0].fotoprodotto;
                    img1.setAttribute("src", urlimg1);
                    var urlimg2="images/"+devices[1].fotoprodotto;
                    img1.setAttribute("src", urlimg2);
                    var urlimg3="images/"+devices[2].fotoprodotto;
                    img1.setAttribute("src", urlimg3);
                    
              */      
                    //appending elements each other
                    container.appendChild(currentRow);
                    currentRow.appendChild(firstColoumn);
                    firstColoumn.appendChild(currentPanel);
                    currentPanel.appendChild(panelHeading);
                    panelHeading.appendChild(name);
                    currentPanel.appendChild(panelContent);
                    panelContent.appendChild(img1);
                    panelContent.appendChild(img1);
                    panelContent.appendChild(img1);                  
                    
                }
                
            }, 
            error: function(request,error) { 
                console.log(request+":"+error);
            } 
        }); 
        return false; 
});

function askForDevices(idcategory){
    var result;
    $.ajax({
        method: "POST", 
        crossDomain: true, 
        url: "includes/php/getDevicesByCategory.php?id="+idcategory,
        success: function(response) {
            console.log(response);
            result=JSON.parse(response);
        },
        error: function(request,error) { 
                console.log(request+":"+error);
            }
    });

    return result;
}


