//Header
document.querySelector("header").innerHTML=`
<div class="logo">
<a href="index.html"><img src="./img/Logo.png" alt="Logo"></a> <!--Agregamos link a inicio desde el logo-->
</div>
<nav class="navbar">
<ul>
    <li><a href="somos.html">Quiénes Somos</a></li>
    <li><a href="especies.html">Agregar Especie</a></li>
    <li><a href="contacto.html">Contacto</a></li>

</ul>
</nav>
`

//Footer
document.querySelector("footer").innerHTML=`
<div class="mapa-sitio">
            <h5>Mapa de Sitio:</h5>
            <ul>
                <li><a href="index.html">Inicio</a></li>
                <li><a href="somos.html">Quiénes Somos</a></li>
                <li><a href="especies.html">Agregar Especie</a></li>
                <li><a href="exteriores.html">Plantas de exterior</a></li>
                <li><a href="interiores.html">Plantas de interior</a></li>
                <li><a href="acuaticas.html">Plantas Acuáticas</a></li>
                <li><a href="contacto.html">Contacto</a></li>

            </ul>
        </div>
        <div class="redes-sociales">
            <h5>Redes Sociales:</h5>
            <div class="redes">
                <a href="#"><img src="img/iconos/face.png" alt="" alt="Facebook" width="50px"></a>
                <a href="#"><img src="img/iconos/instagram.png" alt="Instagram" width="50px"></a>
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
