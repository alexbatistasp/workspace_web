function validaUser(){
    var user = localStorage.getItem("userSCHED");
    if (!user){
        window.location = "index.html";
    }
    var userObj =JSON.parse(user);  
    console.log("DEBUG = link: "+userObj.linkfoto);  
    document.getElementById("fotoUser").innerHTML = `<img src="${userObj.linkfoto}"width="100%">`;
    document.getElementById("bioUser").innerHTML = `<h4> ${userObj.nome} </h4>
    <p> Email: ${userObj.email} </p>
    <p> Racf : ${userObj.racf} </p>
    `;

}