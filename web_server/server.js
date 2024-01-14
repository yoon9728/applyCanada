const express = require('express');
const app = express();
const cors = require('cors');
const path = require('path');

app.use(cors());
// 'web_server' 폴더를 정적 파일 경로로 설정
app.use(express.static(path.join(__dirname, 'main_page')));

// 'index.html'을 루트 경로로 제공
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'main_page', 'signin.html'));
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
