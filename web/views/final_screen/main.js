document.addEventListener('DOMContentLoaded', () => {
    const resultadoContainer = document.getElementById('resultado-container');
    const mensajeElement = document.getElementById('mensaje');
    const puntuacionElement = document.getElementById('puntuacion');
  
    const preguntas = JSON.parse(localStorage.getItem('preguntas')).data;
    const respuestasCorrectas = JSON.parse(localStorage.getItem('respuestasCorrectas'));
  
    const aciertos = respuestasCorrectas.filter(respuesta => respuesta === true).length;
  
    let mensaje = '';
    if (aciertos >= 8) {
      mensaje = '¡Excelente trabajo! Has obtenido 8 o más aciertos.';
    } else if (aciertos >= 5) {
      mensaje = 'Buen trabajo, has obtenido entre 5 y 7 aciertos.';
    } else if (aciertos >= 1) {
      mensaje = 'Has obtenido entre 1 y 4 aciertos. Sigue practicando.';
    } else {
      mensaje = 'No has obtenido ningún acierto. No te desanimes y sigue intentándolo.';
    }
  
    mensajeElement.textContent = mensaje;
    puntuacionElement.textContent = `Aciertos: ${aciertos} de 10`;
  
    localStorage.removeItem('preguntas');
    localStorage.removeItem('respuestasCorrectas');
  });
  