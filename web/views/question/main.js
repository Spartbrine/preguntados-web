document.addEventListener('DOMContentLoaded', () => {
  const preguntas = JSON.parse(localStorage.getItem('preguntas')).data;
  const maxPreguntas = 10;
  let preguntaActual = 0;
  let tiempoRestante = 15;
  let intervalo;
  let respuestasCorrectas = [];

  if (!preguntas || preguntas.length === 0) {
    window.location.href = 'index.html';
    return;
  }

  function mezclar(array) {
    for (let i = array.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
  }

  const preguntasMezcladas = mezclar(preguntas).slice(0, maxPreguntas);

  const container = document.getElementById('pregunta-container');
  const nextButton = document.getElementById('next-button');
  const timer = document.getElementById('timer');

  function mostrarPregunta() {
    if (preguntaActual >= preguntasMezcladas.length) {
      localStorage.setItem('respuestasCorrectas', JSON.stringify(respuestasCorrectas));
      window.location.href = './../final_screen/screen.html';
      return;
    }

    const item = preguntasMezcladas[preguntaActual];
    const respuestas = [
      { texto: item.correct_answer, correcta: true },
      { texto: item.incorrect_answer1, correcta: false },
      { texto: item.incorrect_answer2, correcta: false },
      { texto: item.incorrect_answer3, correcta: false },
      { texto: item.incorrect_answer4, correcta: false }
    ];

    const respuestasMezcladas = mezclar(respuestas);

    container.innerHTML = `
      <p><strong>Pregunta ${preguntaActual + 1}:</strong> ${item.question}</p>
      <ul class="list-group">
        ${respuestasMezcladas.map(respuesta => `
          <li class="list-group-item respuesta" data-correcta="${respuesta.correcta}">${respuesta.texto}</li>
        `).join('')}
      </ul>
    `;

    document.querySelectorAll('.respuesta').forEach(element => {
      element.addEventListener('click', verificarRespuesta);
    });

    nextButton.classList.add('d-none');
    tiempoRestante = 15;
    actualizarTimer();
    intervalo = setInterval(actualizarTimer, 1000);
  }

  function verificarRespuesta(event) {
    clearInterval(intervalo);

    const respuestaSeleccionada = event.target;
    const esCorrecta = respuestaSeleccionada.dataset.correcta === 'true';

    if (esCorrecta) {
      respuestaSeleccionada.classList.add('correcta');
      respuestasCorrectas.push(true);
    } else {
      respuestaSeleccionada.classList.add('incorrecta');
      container.querySelector(`.list-group-item[data-correcta="true"]`).classList.add('correcta');
      respuestasCorrectas.push(false);
    }

    document.querySelectorAll('.respuesta').forEach(element => {
      element.removeEventListener('click', verificarRespuesta);
      element.style.pointerEvents = 'none';
    });

    nextButton.classList.remove('d-none');
  }

  function actualizarTimer() {
    timer.textContent = `Tiempo restante: ${tiempoRestante}s`;

    if (tiempoRestante <= 0) {
      clearInterval(intervalo);
      respuestasCorrectas.push(false); 
      preguntaActual++;
      mostrarPregunta(); 
    }

    tiempoRestante--;
  }

  nextButton.addEventListener('click', () => {
    preguntaActual++;
    mostrarPregunta();
  });

  mostrarPregunta();
});
