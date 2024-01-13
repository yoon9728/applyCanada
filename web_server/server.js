const express = require('express');
const path = require('path');
const app = express();
const port = 3000;

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

app.get('/', (req, res) => {
  // index.html 파일을 제공합니다. 이 파일은 'public' 폴더 내에 있어야 합니다.
  res.sendFile(path.join(__dirname, '..', 'index.html'));
});