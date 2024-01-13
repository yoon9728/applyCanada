const express = require('express');
const app = express();
const port = 3000;

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

app.get('/', (req, res) => {
    res.send('Hello, World!');
  });

app.get('/information', (req, res) => {
    res.send('Hello, informatino!');
  });

app.get('/board', (req, res) => {
    res.send('Hello, board!');
  });
