/* Máscaras ER */
function myFunction() {
    var element = document.body;
    element.classList.toggle("dark-mode");
  }
function mascara(o,f){
    v_obj=o
    v_fun=f
    setTimeout("execmascara()",1)
}
function execmascara(){
    v_obj.value=v_fun(v_obj.value)
}
function mtel(v){
    v=v.replace(/\D/g,""); //Remove tudo o que não é dígito
    v=v.replace(/^(\d{2})(\d)/g,"($1) $2"); //Coloca parênteses em volta dos dois primeiros dígitos
    v=v.replace(/(\d)(\d{4})$/,"$1-$2"); //Coloca hífen entre o quarto e o quinto dígitos
    return v;
}
function id( el ){
	return document.getElementById( el );
}
window.onload = function(){
	id('telefone').onkeyup = function(){
		mascara( this, mtel );
	}
}
function formatar(mascara, documento){
    var i = documento.value.length;
    var saida = mascara.substring(i)
    if (texto.substring(0,1) != saida) 
        documento.value += texto.substring(0,1);
}
function janela(){
    alert("Dados enviados com sucesso");
}

const swiper = new Swiper('.swiper', {
    // Optional parameters
    direction: 'horizontal',
    loop: true,
    speed: 400,
    spaceBetween: 100,
  
    // If we need pagination
    pagination: {
      el: '.swiper-pagination',
    },
  
    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  
    // And if we need scrollbar
    scrollbar: {
      el: '.swiper-scrollbar',
    },
  });

function cpfMask(cpf) {
    cpf = cpf.replace(/\D/g, ''); // Remove tudo o que não é dígito
    cpf = cpf.replace(/(\d{3})(\d)/, '$1.$2'); // Adiciona o primeiro ponto
    cpf = cpf.replace(/(\d{3})(\d)/, '$1.$2'); // Adiciona o segundo ponto
    cpf = cpf.replace(/(\d{3})(\d{1,2})$/, '$1-$2'); // Adiciona o hífen
    return cpf;
}

function CpfValidate() {
  const cpfInput = document.getElementById('CPF');
  cpfInput.value = cpfMask(cpfInput.value);
}
const barra = document.getElementById('fundodoheader').style.display;
var x = document.getElementById("myLinks");

var on = true;
function apertarsvg() {
  if (on){
    document.getElementById('fundodoheader').style.display = "none";
    on = false
  }
  else
  {
    document.getElementById('fundodoheader').style.display = "block";
    on = true
  }
  document.getElementById('svgon').classList.toggle("fa-x");
  
}
