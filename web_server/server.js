const express = require('express');
const app = express();
const mysql = require('mysql');
const path = require('path');
const dbconfig = require('./config/dbconfig.json');
const bcrypt = require('bcrypt');
const saltRounds = 10;

const pool = mysql.createPool({
  connectionLimit: 10,
  host: dbconfig.host,
  user: dbconfig.user,
  password: dbconfig.password,
  database: dbconfig.database
});

app.use(express.static(path.join(__dirname, 'main_page')));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.post('/process_login', (req, res) => {
  const { email, password } = req.body;

  pool.getConnection((err, conn) => {
    if (err) {
      console.error("MySQL getConnection error, aborted: ", err);
      res.status(500).send('Database Connection Failed');
      return;
    }

    const sql = 'SELECT * FROM users WHERE email = ?';
    conn.query(sql, [email], (err, results) => {
      conn.release();

      if (err) {
        console.error('SQL Error occurred:', err);
        res.status(500).send('<h1>Server Error</h1>');
        return;
      }

      if (results.length > 0) {
        bcrypt.compare(password, results[0].password, (err, result) => {
          if (result) {
            res.end();
          } else {
            res.status(401).send('Incorrect password.');
          }
        });
      } else {
        res.status(404).send('User not found.');
      }
    });
  });
});

app.post('/produce/adduser', (req, res) => {
  const { name, email, password } = req.body;

  bcrypt.hash(password, saltRounds, (err, hash) => {
    if (err) {
      console.error('Hashing error:', err);
      res.status(500).send('Server Error');
      return;
    }

    pool.getConnection((err, conn) => {
      if (err) {
        console.error("MySQL getConnection error, aborted: ", err);
        res.status(500).send('Database Connection Failed');
        return;
      }

      const sql = 'INSERT INTO users (name, email, password) VALUES (?, ?, ?)';
      conn.query(sql, [name, email, hash], (err, result) => {
        conn.release();

        if (err) {
          console.error('SQL Error occurred:', err);
          res.status(500).send('<h1>Server Error</h1>');
          return;
        } else if (result.affectedRows > 0) {
          console.log("Insertion successful");
          res.redirect('/'); 
        } else {
          console.log('Insertion failed');
          res.status(500).send('<h1>Signup Failed</h1>');
        }
      });
    });
  });
});


app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'main_page', 'signin.html'));
});

app.get('/pr', (req, res) => {
  res.sendFile(path.join(__dirname, 'main_page', 'pr.html'));
});

app.get('/finance', (req, res) => {
  res.sendFile(path.join(__dirname, 'main_page', 'finance.html'));
});

app.get('/cost', (req, res) => {
  res.sendFile(path.join(__dirname, 'main_page', 'cost.html'));
});

app.get('/QnA', (req, res) => {
  res.sendFile(path.join(__dirname, 'main_page', 'QnA.html'));
});

app.get('/home', (req, res) => {
  res.sendFile(path.join(__dirname, 'main_page', 'Home.html'));
});

app.get('/signup', (req, res) => {
  res.sendFile(path.join(__dirname, 'main_page', 'signUp.html'));
});

app.get('/api/scholarships', (req, res) => {
  pool.query('SELECT * FROM Scholarships', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/workstudy', (req, res) => {
  pool.query('SELECT * FROM WorkWhileStudying', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/studentloan', (req, res) => {
  pool.query('SELECT * FROM StudentLoans', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/restaurant', (req, res) => {
  pool.query('SELECT * FROM Restaurants', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/market', (req, res) => {
  pool.query('SELECT * FROM Markets', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/transportation', (req, res) => {
  pool.query('SELECT * FROM Transportation', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/utilities', (req, res) => {
  pool.query('SELECT * FROM Utilities', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/sportsandleisure', (req, res) => {
  pool.query('SELECT * FROM SportsAndLeisure', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/childcare', (req, res) => {
  pool.query('SELECT * FROM Childcare', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/clothingandshoes', (req, res) => {
  pool.query('SELECT * FROM ClothingAndShoes', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/rentpermonth', (req, res) => {
  pool.query('SELECT * FROM RentPerMonth', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/salariesandfinancing', (req, res) => {
  pool.query('SELECT * FROM SalariesAndFinancing', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/pgwp', (req, res) => {
  pool.query('SELECT * FROM PGWP_Info', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/ontarioPRPath', (req, res) => {
  pool.query('SELECT * FROM OntarioGraduatesPRPathways', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/immigration', (req, res) => {
  pool.query('SELECT * FROM ImmigrationLevelsPlan', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});

app.get('/api/economicprogram', (req, res) => {
  pool.query('SELECT * FROM EconomicPrograms', (err, results) => {
    if (err) {
      res.status(500).json({ error: err.message });
      return;
    }
    res.json(results);
  });
});



const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
