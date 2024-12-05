const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
app.use(bodyParser.json());
app.use(cors());

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'game_suit'
});

db.connect(err => {
    if (err) throw err;
    console.log('MySQL Connected...');
});

// Get all game history
app.get('/history', (req, res) => {
    const sql = 'SELECT * FROM history';
    db.query(sql, (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});

// Add a new game record
app.post('/history', (req, res) => {
    const { user_choice, computer_choice, result } = req.body;
    const sql = 'INSERT INTO history (user_choice, computer_choice, result) VALUES (?, ?, ?)';
    db.query(sql, [user_choice, computer_choice, result], (err, result) => {
        if (err) throw err;
        res.json({ id: result.insertId, user_choice, computer_choice, result });
    });
});

// Delete a game record
app.delete('/history/:id', (req, res) => {
    const { id } = req.params;
    const sql = 'DELETE FROM history WHERE id = ?';
    db.query(sql, [id], (err, result) => {
        if (err) throw err;
        res.json({ message: 'Record deleted' });
    });
});

app.put('/history/:id', (req, res) => {
    const { id } = req.params;
    const { user_choice, computer_choice, result } = req.body;
    const sql = 'UPDATE history SET user_choice = ?, computer_choice = ?, result = ? WHERE id = ?';
    db.query(sql, [user_choice, computer_choice, result, id], (err, result) => {
        if (err) throw err;
        res.json({ id, user_choice, computer_choice, result });
    });
});

app.listen(3000, () => {
    console.log('Server started on port 3000');
});