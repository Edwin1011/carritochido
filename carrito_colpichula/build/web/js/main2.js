/*const   formulario = document.querySelector('#formulario-tarjeta');


// * Select del mes generado dinamicamente.
for(let i = 1; i <= 12; i++){
	let opcion = document.createElement('option');
	opcion.value = i;
	opcion.innerText = i;
	formulario.selectMes.appendChild(opcion);
}

// * Select del año generado dinamicamente.
const yearActual = new Date().getFullYear();
for(let i = yearActual; i <= yearActual + 8; i++){
	let opcion = document.createElement('option');
	opcion.value = i;
	opcion.innerText = i;
	formulario.selectYear.appendChild(opcion);
}

// * Input numero de tarjeta
formulario.inputNumero.addEventListener('keyup', (e) => {
	let valorInput = e.target.value;

	formulario.inputNumero.value = valorInput
	// Eliminamos espacios en blanco
	.replace(/\s/g, '')
	// Eliminar las letras
	.replace(/\D/g, '')
	// Ponemos espacio cada cuatro numeros
	.replace(/([0-9]{4})/g, '$1 ')
	// Elimina el ultimo espaciado
	.trim();

	if(valorInput[0] == 4){
		const imagen = document.createElement('img');
		imagen.src = 'img/logos/visa.png';
	} else if(valorInput[0] == 5){
		const imagen = document.createElement('img');
		imagen.src = 'img/logos/mastercard.png';
	}
});

// * Input nombre de tarjeta
formulario.inputNombre.addEventListener('keyup', (e) => {
	let valorInput = e.target.value;

	formulario.inputNombre.value = valorInput.replace(/[0-9]/g, '');
});

// * CCV
formulario.inputCCV.addEventListener('keyup', () => {

	formulario.inputCCV.value = formulario.inputCCV.value
	// Eliminar los espacios
	.replace(/\s/g, '')
	// Eliminar las letras
	.replace(/\D/g, '');
});
function validartarjeta() {
	var checkOK = "1234567890 ";
	var numero = document.getElementById("inputNumero")
	var checkStr = document.getElementById("inputNumero").value;
    var contador = 0;
    var puntos = 0;
    var chido = true;
	for (var i = 0 ; i < checkStr.length; i++) {
		var ch  = checkStr.charAt(i);
		for (var j = 0 ; j< checkOK.length; j++) {
			if (ch == checkOK.charAt(j)) {
				contador += 1;
            }
            
        }
        if(ch == ' '){ 
            puntos += 1;
        }
	}
	if (contador < checkStr.length ) {
		alert("Escriba solo numeros en el numero de tarjeta");
		//heading.style["color"] = "white";
        chido = false;
				return(false);
    }
    if( puntos > 3 || checkStr.length != 19 ){
        chido = false;
        alert("Inserte nuevamente el numero de tarjeta");
				return(false);
    }
    var checkOK2 = "abcdefghijklmnñopqrstuvwxyz ABCDEFGHIJKLMNÑOPQRSTUVWXYZ";
	var checkStr2 = document.getElementById("inputNombre").value;
    var contador2 = 0;
    var chido = true;
	for (var i = 0 ; i < checkStr2.length; i++) {
		var ch  = checkStr2.charAt(i);
		for (var j = 0 ; j< checkOK2.length; j++) {
			if (ch == checkOK2.charAt(j)) {
				contador2 += 1;
            }
            
        }
	}
	if (contador2 < checkStr2.length ) {
        alert("inserte de nuevo el segundo campo");
        chido = false;
				return(false);
    }
    if(checkStr2.length > 19 && checkStr2.length <1){
        alert("Escriba su nombre completamente")
        chido = false;
        return(false);
	}
	var checkOK = "1234567890";
	var checkStr = document.getElementById("inputCCV").value;
    var contador = 0;
    var chido = true;
	for (var i = 0 ; i < checkStr.length; i++) {
		var ch  = checkStr.charAt(i);
		for (var j = 0 ; j< checkOK.length; j++) {
			if (ch == checkOK.charAt(j)) {
				contador += 1;
            }
            
        }
	}
	if (contador < checkStr.length ) {
        alert("Escriba solo numeros en CCV");
        chido = false;
				return(false);
    }
    if( checkStr.length != 3 ){
        chido = false;
        alert("Inserte nuevamente el ccv");
				return(false);
    }	
}*/
function validarlogin(){
    var login = document.getElementById("login");
    var usuario = document.getElementById("usuario");
    var contra = document.getElementById("contraseña");
    var chido = false;
    var nom = /^[A-Z]+$/i;
    var accion = "VerificarCliente";
    var validarusu = function(e){
        if(usuario.value == ""){
            alert("Introduce el nombre de usuario por favor");
            e.preventDefault(e);
            chido = false;
        }else if(!nom.test(usuario.value)){
            alert("Solo letras en el campo usuario");
            e.preventDefault(e);
            chido = false;
        }else if(usuario.value.length >19){
            alert("Solo 19 letras en el campo usuario");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    var validarcontra = function(e){
        if(contra.value == ""){
            alert("Introduce la contraseña por favor");
            e.preventDefault(e);
            chido = false;
        }else if(contra.value.length >19){
            alert("Solo 19 letras en el campo contraseña");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    var validar = function(e){
        validarusu(e);
        validarcontra(e);
    };
    login.addEventListener("submit",validar);
    if(chido){
        /*login.action = accion;*/
    }else{
        
    }
    console.log(chido);
}
function validarregistro(){
    var regi = document.getElementById("registro");
    var nombre = document.getElementById("name");
    var appat = document.getElementById("apa");
    var apmat = document.getElementById("ama");
    var fecha = document.getElementById("f_n");
    var direc = document.getElementById("direc");
    var diren = document.getElementById("diren");
    var tel = document.getElementById("tel");
    var cel = document.getElementById("cel");
    var usuario = document.getElementById("usuario");
    var contra = document.getElementById("contraseña");
    var chido = false;
    var nom = /^[A-Z]+$/i;
    var num = /^([0-9])*$/;
    
    var validarnombre= function(e){
        if(nombre.value == ""){
            alert("Introduce el nombre por favor");
            e.preventDefault(e);
            chido = false;
        }else if(!nom.test(nombre.value)){
            alert("Solo letras en el campo nombre");
            e.preventDefault(e);
            chido = false;
        }else if(nombre.value.length >19){
            alert("Solo 19 letras en el campo nombre");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    var validarappat= function(e){
        if(appat.value == ""){
            alert("Introduce el apellido paterno por favor");
            e.preventDefault(e);
            chido = false;
        }else if(!nom.test(appat.value)){
            alert("Solo letras en el campo apellido paterno");
            e.preventDefault(e);
            chido = false;
        }else if(appat.value.length >19){
            alert("Solo 19 letras en el campo apellido paterno");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    var validarapmat= function(e){
        if(apmat.value == ""){
            alert("Introduce el apellido materno por favor");
            e.preventDefault(e);
            chido = false;
        }else if(!nom.test(apmat.value)){
            alert("Solo letras en el campo apellido materno");
            e.preventDefault(e);
            chido = false;
        }else if(apmat.value.length >19){
            alert("Solo 19 letras en el campo apellido materno");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    var validarfecha = function(e){
      var fechaf = fecha.value.split("/");
      var day = fechaf[0];
      var month = fechaf[1];
      var year = fechaf[2];
      var date = new Date(year,month,'0');
      if((day-0)>(date.getDate()-0)){
            alert("Ingrese otra fecha por favor");
            e.preventDefault(e);
            chido = false;
      }else if(fecha.value == ""){
          alert("Ingrese la fecha");
            e.preventDefault(e);
            chido = false;
      }
    };
    
    var validardirec= function(e){
        if(direc.value.length > 45){
            alert("Introduce solo 45 caracteres en la direccion");
            e.preventDefault(e);
            chido = false;
        }else if(direc.value == ""){
          alert("Ingrese la direccion");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    var validardiren= function(e){
        if(diren.value.length > 45){
            alert("Introduce solo 45 caracteres en la direccion de envio");
            e.preventDefault(e);
            chido = false;
        }else if(diren.value == ""){
          alert("Ingrese la direccion de envio");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    var validartel= function(e){
        if(tel.value == ""){
            alert("Introduce el telefono");
            e.preventDefault(e);
            chido = false;
        }else if(!num.test(tel.value)){
            alert("Solo numeros en el campo telefono");
            e.preventDefault(e);
            chido = false;
        }else if(tel.value.length >12 || tel.value.length <8){
            alert("Entre 8 y 12 numeros en el telefono");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    var validarcel= function(e){
        if(cel.value == ""){
            alert("Introduce el celular");
            e.preventDefault(e);
            chido = false;
        }else if(!num.test(cel.value)){
            alert("Solo numeros en el campo celular");
            e.preventDefault(e);
            chido = false;
        }else if(cel.value.length >12 || cel.value.length <8){
            alert("Entre 8 y 12 numeros en el celular");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    var validarusu = function(e){
        if(usuario.value == ""){
            alert("Introduce el nombre de usuario por favor");
            e.preventDefault(e);
            chido = false;
        }else if(!nom.test(usuario.value)){
            alert("Solo letras en el campo usuario");
            e.preventDefault(e);
            chido = false;
        }else if(usuario.value.length >19){
            alert("Solo 19 letras en el campo usuario");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    var validarcontra = function(e){
        if(contra.value == ""){
            alert("Introduce la contraseña por favor");
            e.preventDefault(e);
            chido = false;
        }else if(contra.value.length >19){
            alert("Solo 19 letras en el campo contraseña");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    var validar = function(e){
        validarnombre(e);
        validarappat(e);
        validarapmat(e);
        validarfecha(e);
        validardirec(e);
        validardiren(e);
        validartel(e);
        validarcel(e);
        validarusu(e);
        validarcontra(e);
    };
    regi.addEventListener("submit",validar);
    if(chido){
        /*login.action = accion;*/
    }else{
    }
    console.log(chido);
}

function validarmicro(){
    var form = document.getElementById("for");
    var stock = document.getElementById("stock");
    var numero = document.getElementById("numero");
    var chido = false;
    var num = /^([0-9])*$/;
    var accion = "VerificarCliente";
    var micro = function(e){
        if(numero.value == ""){
            alert("Introduce la cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(!num.test(numero.value)){
            alert("Solo numeros en el campo cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(numero.value > stock.value || numero.value < 1){
            alert("Introduzca nuevamente la cantidad respetando el stock");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    
    var validar = function(e){
        micro(e);
    };
    form.addEventListener("submit",validar);
    if(chido){
        /*login.action = accion;*/
    }else{
        
    }
    console.log(chido);
    console.log(stock.value);
}

function validarcontro(){
    var form = document.getElementById("for");
    var stock = document.getElementById("stock");
    var numero = document.getElementById("numero");
    var chido = false;
    var num = /^([0-9])*$/;
    var accion = "VerificarCliente";
    var contro = function(e){
        if(numero.value == ""){
            alert("Introduce la cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(!num.test(numero.value)){
            alert("Solo numeros en el campo cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(numero.value > stock.value || numero.value < 1){
            alert("Introduzca nuevamente la cantidad respetando el stock");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    
    var validar = function(e){
        contro(e);
    };
    form.addEventListener("submit",validar);
    if(chido){
        /*login.action = accion;*/
    }else{
        
    }
    console.log(chido);
    console.log(stock.value);
}

function validarconec(){
    var form = document.getElementById("for");
    var stock = document.getElementById("stock");
    var numero = document.getElementById("numero");
    var chido = false;
    var num = /^([0-9])*$/;
    var accion = "VerificarCliente";
    var conec = function(e){
        if(numero.value == ""){
            alert("Introduce la cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(!num.test(numero.value)){
            alert("Solo numeros en el campo cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(numero.value > stock.value || numero.value < 1){
            alert("Introduzca nuevamente la cantidad respetando el stock");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    
    var validar = function(e){
        conec(e);
    };
    form.addEventListener("submit",validar);
    if(chido){
        /*login.action = accion;*/
    }else{
        
    }
    console.log(chido);
    console.log(stock.value);
}

function validarcuerpo(){
    var form = document.getElementById("for");
    var stock = document.getElementById("stock");
    var numero = document.getElementById("numero");
    var chido = false;
    var num = /^([0-9])*$/;
    var accion = "VerificarCliente";
    var cuerpo = function(e){
        if(numero.value == ""){
            alert("Introduce la cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(!num.test(numero.value)){
            alert("Solo numeros en el campo cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(numero.value > stock.value || numero.value < 1){
            alert("Introduzca nuevamente la cantidad respetando el stock");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    
    var validar = function(e){
        cuerpo(e);
    };
    form.addEventListener("submit",validar);
    if(chido){
        /*login.action = accion;*/
    }else{
        
    }
    console.log(chido);
    console.log(stock.value);
}

function validarcuerpo(){
    var form = document.getElementById("for");
    var stock = document.getElementById("stock");
    var numero = document.getElementById("numero");
    var chido = false;
    var num = /^([0-9])*$/;
    var accion = "VerificarCliente";
    var cuerpo = function(e){
        if(numero.value == ""){
            alert("Introduce la cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(!num.test(numero.value)){
            alert("Solo numeros en el campo cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(numero.value > stock.value || numero.value < 1){
            alert("Introduzca nuevamente la cantidad respetando el stock");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    
    var validar = function(e){
        cuerpo(e);
    };
    form.addEventListener("submit",validar);
    if(chido){
        /*login.action = accion;*/
    }else{
        
    }
    console.log(chido);
    console.log(stock.value);
}

function validarEdit(){
    var form = document.getElementById("for");
    var numero = document.getElementById("numero");
    var chido = false;
    var num = /^([0-9])*$/;
    var accion = "VerificarCliente";
    var cuerpo = function(e){
        if(numero.value == ""){
            alert("Introduce la cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(!num.test(numero.value)){
            alert("Solo numeros en el campo cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(numero.value > 99 || numero.value < 1){
            alert("Introduzca nuevamente la cantidad respetando el rango (1-99)");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    
    var validar = function(e){
        cuerpo(e);
    };
    form.addEventListener("submit",validar);
    if(chido){
        /*login.action = accion;*/
    }else{
        
    }
    console.log(chido);
}

function validarEdit2(){
    var form = document.getElementById("for2");
    var numero = document.getElementById("numero2");
    var chido = false;
    var num = /^([0-9])*$/;
    var accion = "VerificarCliente";
    var cuerpo = function(e){
        if(numero.value == ""){
            alert("Introduce la cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(!num.test(numero.value)){
            alert("Solo numeros en el campo cantidad");
            e.preventDefault(e);
            chido = false;
        }else if(numero.value > 99 || numero.value < 1){
            alert("Introduzca nuevamente la cantidad respetando el rango (1-99)");
            e.preventDefault(e);
            chido = false;
        }else{
            chido= true;
        }
    };
    
    
    var validar = function(e){
        cuerpo(e);
    };
    form.addEventListener("submit",validar);
    if(chido){
        /*login.action = accion;*/
    }else{
        
    }
    console.log(chido);
}