const express = require('express');
const mysql = require('mysql');
const app = express();
const port = 3000;
const cors = require('cors');
app.use(cors());

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'dbquestions'
});

db.connect((err) => {
  if (err) throw err;
  console.log('Conectado a la base de datos');
});

app.get('/preguntas', (req, res) => {
  const query = `
    SELECT q.question, q.answer AS correct_answer, 
           iq.incorrect_answer1, iq.incorrect_answer2, 
           iq.incorrect_answer3, iq.incorrect_answer4
    FROM questions q
    JOIN incorrect_answers iq ON q.id = iq.id_question;
  `;
  db.query(query, (err, results) => {
    if (err) {
      console.error('Error en la consulta:', err);
      res.status(500).json({ error: 'Error en la consulta' });
      return;
    }
    console.log('Resultados de la consulta:', results);
    res.json({ data: results });
  });
});

app.listen(port, () => {
  console.log(`Servidor corriendo en http://localhost:${port}`);
});
