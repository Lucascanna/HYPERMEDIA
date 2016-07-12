$("document").ready(
    function(){ 
        
        $.ajax({ 
            method: "POST", 
            crossDomain: true, 
            url: "includes/php/getDevicesAndCategories.php", //Relative or absolute path to file.phpfile  
            
            success: function(response) { 
                var devices=JSON.parse(response);
                var container=document.getElementById("main");
                var i=0;
                var j=0;
                var count=0;
                var categories=[];
                var uniqueCategories=[];
                
                for(i=0;i<devices.length;i++)
                    categories[i]=devices[i].nomecategoria;
                
                uniqueCategories=categories.filter(function(item,position){
                    return categories.indexOf(item)==position;
                });
                
                
                for(i=0;i<categories.length;i++){
                    
                    //creating dynamic elements of the page
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
                    
                    
                    //filling elements with content
                    var name=document.createTextNode(devices[i].nomecategoria);
                    panelHeading.appendChild(name);
                    count=0;
                    for(j=0; devices.length;j++){
                        if(count==3)
                            break;
                        if(devices[j].nomecategoria==uniqueCategories[i]){
                            var img=document.createElement("img");
                            img.setAttribute("class","img-responsive");
                            var urlimg="images/"+devices[j].fotoprodotto;
                            img.setAttribute("src",urlimg);
                            panelContent.appendChild(img);
                            count++;
                        }
                    }
                
                    //appending elements each other
                    container.appendChild(currentRow);
                    currentRow.appendChild(firstColoumn);
                    firstColoumn.appendChild(currentPanel);
                    currentPanel.appendChild(panelHeading);
                    currentPanel.appendChild(panelContent);               
                    
                }
                
            }, 
            error: function(request,error) { 
                console.log(request+":"+error);
            } 
        }); 
        return false; 
});




