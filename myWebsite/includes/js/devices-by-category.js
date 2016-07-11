$("document").ready(
    function(){
        $.ajax({ 
            method: "POST", 
            crossDomain: true, 
    
    $( "#prodotto" ).empty();
            
    var myParam = location.search.split('idcategoria=')[1];
    
    $.ajax({
        method: "POST",
        crossDomain: true,
        
        url: "http://timfmlhypermedia.altervista.org/includes/php/getProdottiCategoria.php?id="+myParam,
        async: true,
        
        success: function(response) {
            var prodotti=JSON.parse(response);

            var count=0;
            var i=0;
      
            
            for(i=0;i<prodotti.length;i++) {
                
                var urlProdotto = "prodotto.html?idclasse=" + myClass + "?idcategoria=" + prodotti[i].idcategoria + "?idprodotti=" + prodotti[i].idprodotto;
                    
                var imgTemp = document.createElement("img");  
                    
                var urlImmagine = "images/" + prodotti[i].fotoprodotto;
                imgTemp.setAttribute('src', urlImmagine);
                imgTemp.setAttribute("class", "img-responsive");
                   
                var nomeTemp = document.createElement("a");
                nomeTemp.setAttribute('class', 'btn btn-primary btn-block');
                nomeTemp.setAttribute("href", urlProdotto);
                var nome = document.createTextNode(prodotti[i].nomeprodotto);
                nomeTemp.appendChild(nome);
                    
                var descrTemp = document.createElement("p");
                var descr = document.createTextNode("$"+prodotti[i].prezzoprodotto);
                descrTemp.appendChild(descr);
                    
                var prodotto = document.createElement("div");
                prodotto.setAttribute("class", "col-sm-3 feature");
                    
                var prodottoPanel = document.createElement("div");
                prodottoPanel.setAttribute("class", "panel");
                prodottoPanel.setAttribute("id", "panel-product");
                    
                    
                prodottoPanel.appendChild(imgTemp);
                prodottoPanel.appendChild(descrTemp);
                prodottoPanel.appendChild(nomeTemp);
                    
                prodotto.appendChild(prodottoPanel);

                var container = document.getElementById("prodotto");
              
                    
                    container.appendChild(prodotto);
                    
                    
            }
             
        },
        error: function(request,error) 
        {
            console.log("Error");
        }
    });

}