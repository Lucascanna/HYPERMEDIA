$("document").ready(
    function(){ 
 
        $.ajax({ 
            method: "POST", 
            crossDomain: true, 
            url: "includes/php/query.php", //Relative or absolute path to file.phpfile  
            
            data: {query:   "  SELECT * "+
                            "FROM smartlifecategories, smartlife "+
                            "WHERE smartlifecategories.idCategory = smartlife.idCategory "+
                            "ORDER BY smartlife.idSmartlife ASC "  },
            
            success: function(response) { 
                var smartlife=JSON.parse(response);

                var container=document.getElementById("main");
                var i=0;
                var j=0;
                var count=0;
                var categories=[];
                var uniqueCategories=[];
                var promotionSmartlife=[];
                
                //getting all categories
                for(i=0;i<smartlife.length;i++){
                    var obj={idcategory:smartlife[i].idCategory, namecategory:smartlife[i].nameCategory};
                    categories[i]=obj;
                }
                    
                
                //deleting categories duplicates
               uniqueCategories=categories.filter(function(item,position){
                    return arrayObjectIndexOf(categories,item.idcategory,"idcategory")==position;
                });
                
                
                //getting 3 promotion smartlifes
                count=0;
                for(i=0;i<smartlife.length;i++){
                    if(count==3)
                        break;
                    if(smartlife[i].promotionsSmartlife==1){
                        promotionSmartlife[count]=smartlife[i];
                        count++;
                    }
                }
                              
                //creating categories panels
                for(i=0;i<uniqueCategories.length;i++){
                    
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
                    var rowImages=document.createElement("div");
                    rowImages.setAttribute("class","row");
                    var rowButton=document.createElement("div");
                    rowButton.setAttribute("class","row");
                    var colButton=document.createElement("div");
                    colButton.setAttribute("class","col-sm-4");
                    var button=document.createElement("a");
                    button.setAttribute("class","btn btn-primary btn-block");
                    var urlButton="smart-life-by-category.html?idcategory="+uniqueCategories[i].idcategory;
                    button.setAttribute("href", urlButton);
                    var nameButton=document.createTextNode("Go to "+uniqueCategories[i].namecategory);
                    button.appendChild(nameButton);
                    
                    //filling elements with content
                    var name=document.createTextNode(uniqueCategories[i].namecategory);
                    panelHeading.appendChild(name);
                    count=0;
                    for(j=0; j<smartlife.length;j++){
                        if(count==3)
                            break;
                        if(smartlife[j].nameCategory==uniqueCategories[i].namecategory){
                            var img=document.createElement("img");
                            img.setAttribute("class","img-responsive");
                            img.setAttribute("id", "img-categories");
                            var urlimg="images/"+smartlife[j].photoSmartlife;
                            img.setAttribute("src",urlimg);
                            var coloumnImage=document.createElement("div");
                            coloumnImage.setAttribute("class", "col-sm-4 text-center");
                            rowImages.appendChild(coloumnImage);
                            coloumnImage.appendChild(img);
                            count++;
                        }
                    }
                
                    //appending elements each other
                    container.appendChild(currentRow);
                    currentRow.appendChild(firstColoumn);
                    firstColoumn.appendChild(currentPanel);
                    currentPanel.appendChild(panelHeading);
                    currentPanel.appendChild(panelContent); 
                    panelContent.appendChild(rowImages);
                    var emptyCol=document.createElement("div");
                    emptyCol.setAttribute("class", "col-sm-4");
                    rowButton.appendChild(emptyCol);
                    rowButton.appendChild(colButton);
                    colButton.appendChild(button);
                    panelContent.appendChild(rowButton);
                    
                }
                
                //creating promotion panel
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
                var rowImages=document.createElement("div");
                rowImages.setAttribute("class","row");
                var rowButton=document.createElement("div");
                rowButton.setAttribute("class","row");
                var colButton=document.createElement("div");
                colButton.setAttribute("class","col-sm-4");
                var button=document.createElement("a");
                button.setAttribute("class","btn btn-primary btn-block");
                var urlButton="smart-life-by-category.html?idcategory=5";
                button.setAttribute("href", urlButton);
                var nameButton=document.createTextNode("Go to Promotions");
                button.appendChild(nameButton);
                
                
                var name=document.createTextNode("Promotion");
                panelHeading.appendChild(name);
                for(i=0;i<promotionSmartlife.length;i++){
                    var img=document.createElement("img");
                    img.setAttribute("class","img-responsive");
                    img.setAttribute("id", "img-categories");
                    var urlimg="images/"+promotionSmartlife[i].photoSmartlife;
                    img.setAttribute("src",urlimg);
                    var coloumnImage=document.createElement("div");
                    coloumnImage.setAttribute("class", "col-sm-4");
                    rowImages.appendChild(coloumnImage);
                    coloumnImage.appendChild(img);
                }
                
                container.appendChild(currentRow);
                currentRow.appendChild(firstColoumn);
                firstColoumn.appendChild(currentPanel);
                currentPanel.appendChild(panelHeading);
                currentPanel.appendChild(panelContent); 
                panelContent.appendChild(rowImages);
                var emptyCol=document.createElement("div");
                emptyCol.setAttribute("class", "col-sm-4");
                rowButton.appendChild(emptyCol);
                rowButton.appendChild(colButton);
                colButton.appendChild(button);
                panelContent.appendChild(rowButton);
                
                
            }, 
            error: function(request,error) { 
                console.log(request+":"+error);
            } 
        }); 
        return false; 
});


 function arrayObjectIndexOf(myArray, searchTerm, property) {
    for(var i = 0, len = myArray.length; i < len; i++) {
        if (myArray[i][property] === searchTerm) return i;
    }
    return -1;

}

