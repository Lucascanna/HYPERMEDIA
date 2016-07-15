$("document").ready(
    function(){ 

        $.ajax({ 
            method: "POST", 
            crossDomain: true, 
            url: "includes/php/query.php", //Relative or absolute path to file.phpfile  
            
            data: { query:  "SELECT * " +
                            "FROM productscategories, products " +
                            "WHERE productscategories.idCategory = products.idCategory " +
                            "ORDER BY products.idProduct ASC " },
            
            success: function(response) { 
                var devices=JSON.parse(response);

                var container=document.getElementById("main");
                var i=0;
                var j=0;
                var count=0;
                var categories=[];
                var uniqueCategories=[];
                var promotionDevices=[];
                
                //getting all categories
                for(i=0;i<devices.length;i++){
                    var obj={idcategory:devices[i].idCategory, namecategory:devices[i].nameCategory};
                    categories[i]=obj;
                }
                    
                
                //deleting categories duplicates
               uniqueCategories=categories.filter(function(item,position){
                    return arrayObjectIndexOf(categories,item.idcategory,"idcategory")==position;
                });
                
                
                //getting 3 promotion devices
                count=0;
                for(i=0;i<devices.length;i++){
                    if(count==3)
                        break;
                    if(devices[i].promotionProduct==1){
                        promotionDevices[count]=devices[i];
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
                    var urlButton="devices-by-category.html?idcategory="+uniqueCategories[i].idcategory;
                    button.setAttribute("href", urlButton);
                    var nameButton=document.createTextNode("Go to "+uniqueCategories[i].namecategory);
                    button.appendChild(nameButton);
                    
                    //filling elements with content
                    var name=document.createTextNode(uniqueCategories[i].namecategory);
                    panelHeading.appendChild(name);
                    count=0;
                    for(j=0; j<devices.length;j++){
                        if(count==3)
                            break;
                        if(devices[j].nameCategory==uniqueCategories[i].namecategory){
                            var img=document.createElement("img");
                            img.setAttribute("class","img-responsive");
                            img.setAttribute("id", "img-categories");
                            var urlimg="images/"+devices[j].photoProduct;
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
                var urlButton="devices-by-category.html?idcategory=5";
                button.setAttribute("href", urlButton);
                var nameButton=document.createTextNode("Go to Promotions");
                button.appendChild(nameButton);
                
                
                var name=document.createTextNode("Promotion");
                panelHeading.appendChild(name);
                for(i=0;i<promotionDevices.length;i++){
                    var img=document.createElement("img");
                    img.setAttribute("class","img-responsive");
                    img.setAttribute("id", "img-categories");
                    var urlimg="images/"+promotionDevices[i].photoProduct;
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




