//Header
document.querySelector("header").innerHTML=`
<div class="logo">
<a href="index.html"><img src="./img/Logo.png" alt="Logo"></a> <!--Agregamos link a inicio desde el logo-->

</div>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- Load an icon library to show a hamburger menu (bars) on small screens -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<div class="topnav" id="myTopnav">
  <a href="index.html"></a>
  <a href="somos.html">Quienes Somos</a>
  <a href="especies.html">Agregar Especie</a>
  <a href="contacto.html">Contacto</a>

  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

`
/*Línea reemplazada, la dejo comentada por si se necesita:
<li><a  id="proximamente" data-toggle="tooltip" data-placement="bottom" title="Próximamente en línea">Agregar Especie</a></li>
*/

//Footer
document.querySelector("footer").innerHTML=`
<div class="mapa-sitio">
            <h5>Mapa de Sitio:</h5>
            <ul>
                <li><a href="index.html">Inicio</a></li>
                <li><a href="somos.html">Quiénes Somos</a></li>
                <li><a href="especies.html" title="Próximamente en línea">Agregar Especie</a></li>
                <li><a href="exteriores.html">Plantas de exterior</a></li>
                <li><a href="interiores.html">Plantas de interior</a></li>
                <li><a href="acuaticas.html">Plantas Acuáticas</a></li>
                <li><a href="contacto.html">Contacto</a></li>

            </ul>
        </div>
        <div class="redes-sociales">
            <h5>Redes Sociales:</h5>
            <div class="redes">
                <a href="https://www.facebook.com"><img src="img/iconos/face.png" alt="Facebook" width="50px"></a>
                <a href="https://www.instagram.com"><img src="img/iconos/instagram.png" alt="Instagram" width="50px"></a>
                <a href="https://wa.me/1125277424" target="_blank"><img src="img/iconos/whatsapp.png" alt="WhatsApp"
                        width="50px"></a>
            </div>
        </div>
`


document.addEventListener('DOMContentLoaded', function() {
    const form = document.getElementById('contact-form');
    form.addEventListener('submit', function(event) {
        event.preventDefault();
        if (validateForm()) {
            this.submit();
        }
    });

    function validateForm() {
        const inputs = ['nombre', 'email', 'direccion', 'telefono', 'area', 'mensaje', 'login-form-captcha'];
        for (const inputId of inputs) {
            const value = document.getElementById(inputId).value.trim();
            if (value === '') {
                alert('Por favor, complete todos los campos obligatorios.');
                return false;
            }
        }
        return true; // Añadir un retorno de valor true si el formulario pasa la validación
    }

    const main = document.querySelector('main');
});

$(document).ready(function() {
    $('#privacyCheckbox').change(function() {
        $('#submitButton').prop('disabled', !this.checked);
    });

    $('#contactForm').submit(function(event) {
        event.preventDefault();
        alert('Formulario enviado con éxito!');
        $('#contactForm')[0].reset();
        $('#submitButton').prop('disabled', true);
    });
});

$('#prv_ck').change(function() {
    console.log('ok changed');
    $("#disabledInput").attr('disabled', !this.checked);
});

function dropDownSearch()
{
    elementClickSearh = '.nav2-search-icon';
    elementSlideSearh = '#search_widget';
    activeClassSearh = 'active';
}

$(document).ready(function() {
    dropDownSearch();
});


/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
      x.className += " responsive";
    } else {
      x.className = "topnav";
    }
  }




