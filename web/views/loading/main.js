document.addEventListener('DOMContentLoaded', (event) => {
  function cargarPreguntas() {
    fetch('http://localhost:3000/preguntas')
      .then(response => {
        if (!response.ok) {
          throw new Error('Network response was not ok ' + response.statusText);
        }
        return response.json();
      })
      .then(data => {
        localStorage.setItem('preguntas', JSON.stringify(data));
        document.getElementById('progress-bar').style.width = '100%';
        setTimeout(() => {
          window.location.href = './../question/question.html';
        }, 1000);
      })
      .catch(error => {
        console.error('Error al obtener los datos:', error);
      });
  }
  setTimeout(cargarPreguntas, 2000);
});
