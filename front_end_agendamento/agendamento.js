function carregaAgencias(){
    // 

    /*
    pensando "estruturado"
    res = fetch("http://localhost:8080/agencias)
    lista = res.json();
    preenche(lista);
    */
    fetch("http://localhost:8080/agencias")
         .then(res => res.json())   // se eu receber uma resposta, vou ter q extrair o JSON da resposta
         .then(lista => preenche(lista)) // se der cert, passo isso para uma função que irá gerar dinamicamente meu select
}

function preenche(lista){

    var htmlSelect = `<select id="txtAgencia" class="form-control" oninput="montahoras()">`;

    for (i=0; i<lista.length; i++){
        var ag = lista[i]; // apenas para facilitar a manipulacao
        htmlSelect = htmlSelect + `<option value="${ag.id}">${ag.nome}</option>`;
    }
    htmlSelect = htmlSelect + `</select>`;
    document.getElementById("selectAgencia").innerHTML =htmlSelect;
}

function montahoras(){
    var horaInicial = 10;
    var horaFinal   = 14;
    var htmlHora = `<select id="txtHoraInicio" class="form-control" oninput="gerahorafinal()">`;

    for (hora = horaInicial ; hora < horaFinal; hora++){
        htmlHora = htmlHora + `<option value="${hora}:00">${hora}:00</option>
                               <option value="${hora}:30">${hora}:30</option>`;
    }
    htmlHora = htmlHora + `<option value="${hora}:00">${hora}:00</option>
                         </select>`;
    document.getElementById("divHoraInicial").innerHTML = htmlHora;
}

function gerahorafinal(){
    var horaInicial = document.getElementById("txtHoraInicio").value;
    console.log("Hora selecionada = "+horaInicial);
    var hI = parseInt(horaInicial.substr(0,2));
    var mI = parseInt(horaInicial.substr(3,4));
    if (mI == 0){
        mI = 30;
    }
    else {
        mI = "00";
        hI = hI+1;
    }
    document.getElementById("txtHoraFim").value = hI+":"+mI;
}
