$("document").ready(
    function(){ 
        
        var idDevice = location.search.split('idsmartlife=')[1];

        $.ajax({ 
            method: "POST", 
            crossDomain: true, 
            url: "includes/php/getSmartLife.php?id=" +idDevice, //Relative or absolute path to file.phpfile  
            
            success: function(response) { 
                
                console.log(response);
                var smartlife=JSON.parse(response);
                
                

                var container=document.getElementById("main");
                
                
                var img=document.createElement("img");
                img.setAttribute("src","images/big-"+smartlife[0].fotosmartlife);
                
                container.appendChild(img);
                
                
            }, 
            error: function(request,error) { 
                console.log(request+":"+error);
            } 
        }); 
        return false; 
});