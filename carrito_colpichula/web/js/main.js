const   formulario = document.querySelector('#formulario-tarjeta');


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
}
