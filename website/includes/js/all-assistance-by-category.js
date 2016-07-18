$("document").ready(
    function(){ 
 
        $.ajax({ 
            method: "POST", 
            crossDomain: true, 
            url: "includes/php/query.php", //Relative or absolute path to file.phpfile  
            
            data: {query:   "SELECT * "+
                            "FROM categoriesassistance "+
                            "ORDER BY idCategory ASC "  },
            
            success: function(response) { 
                var categories=JSON.parse(response);

                var container=document.getElementById("main");
                
                var i=0;
                for(i=0;i<categories.length;i++){
                    
                    //setting links
                    var urlCategory="assistance-by-category.html?idcategory="+categories[i].idCategory;
                    
                    //putting a row for each category
                    var row=document.createElement("div");
                    row.setAttribute("class","row");
                    row.setAttribute("style", "margin-top:20px margin-right:0");
                    container.appendChild(row);
                    var link=document.createElement("a");
                    link.setAttribute("href",urlCategory);
                    row.appendChild(link);
                    var coloumnImg=document.createElement("div");
                    coloumnImg.setAttribute("class", "col-sm-1");
                    link.appendChild(coloumnImg);
                    var img=document.createElement("img");
                    img.setAttribute("class", "img-responsive");
                    img.setAttribute("src", "images/"+categories[i].photoCategory);
                    img.setAttribute("style", "margin-top: 21px")
                    coloumnImg.appendChild(img);
                    var coloumnText=document.createElement("div");
                    coloumnText.setAttribute("class", "col-sm-9");
                    link.appendChild(coloumnText);
                    var title=document.createElement("h3");
                    var titleText=document.createTextNode(categories[i].nameCategory);
                    var titleBold=document.createElement("b");
                    titleBold.appendChild(titleText);
                    title.appendChild(titleBold);
                    coloumnText.appendChild(title);
                    var description=document.createElement("h4");
                    var descriptionText=document.createTextNode(categories[i].descriptionCategory);
                    description.appendChild(descriptionText);
                    coloumnText.appendChild(description);

                }
                    
                    
                
                
            }, 
            error: function(request,error) { 
                console.log(request+":"+error);
            } 
        }); 
        return false; 
});