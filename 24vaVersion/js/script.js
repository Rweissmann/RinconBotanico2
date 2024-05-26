document.addEventListener('DOMContentLoaded', function () {
    // Insertar el contenido del encabezado
    document.querySelector('header').innerHTML += `
        <div class="logo">
            <a href="index.html"><img src="./img/Logo.png" alt="Logo"></a>
        </div>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <div class="topnav" id="myTopnav">
            <a href="index.html"></a>
            <a href="somos.html">Quiénes Somos</a>
            <a href="especies.html">Agregar Especie</a>
            <a href="contacto.html">Contacto</a>
        
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
            </a>
        </div>
    `;

    // Insertar el contenido del pie de página
    document.querySelector('footer').innerHTML += `
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
                <a href="https://wa.me/1125277424" target="_blank"><img src="img/iconos/whatsapp.png" alt="WhatsApp" width="50px"></a>
            </div>
        </div>
    `;

    
    
    // Toggle responsive class for menu
    window.myFunction = function () {
        var x = document.getElementById('myTopnav');
        if (x.className === 'topnav') {
            x.className += ' responsive';
        } else {
            x.className = 'topnav';
        }
    };
});

// Form Validation
const form = document.getElementById('contact-form');
form.addEventListener('submit', function (event) {
    event.preventDefault();
    if (validateForm()) {
        alert('Formulario enviado con éxito!');
        this.submit();
    }
});

function validateForm() {
    const inputs = ['nombre', 'email', 'direccion', 'telefono', 'area', 'mensaje'];
    for (const inputId of inputs) {
        const value = document.getElementById(inputId).value.trim();
        if (value === '') {
            alert('Por favor, complete todos los campos obligatorios.');
            return false;
        }
    }
    return true;
}

// Enable/Disable Submit Button
const termsCheckbox = document.getElementById('politica_privacidad');
const submitBtn = document.getElementById('submitBtn');

termsCheckbox.addEventListener('change', () => {
    if (termsCheckbox.checked) {
        submitBtn.disabled = false;
        submitBtn.classList.add('enabled');
    } else {
        submitBtn.disabled = true;
        submitBtn.classList.remove('enabled');
    }
});
