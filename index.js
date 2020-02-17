const express = require('express');
const cors = require('cors');
const port = 4000;
const app = express();
const bodyParser = require('body-parser');
const path = require('path');

// temp
const mysql = require('mysql');

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cors());
app.use(express.static(path.join(__dirname, 'public')));

// mysql connection area
let con = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database : 'flashcards'
});

app.get('/card/all', (req, res, next) => {

    con.query('select * from cards', function(err, data) {
        if(err) console.log(err);
        res.json(data);
    });  
});

app.get('/card/:id', (req, res, next) => {
    con.query('select * from cards where id = ?', [req.params.id], function(err, data) {
        if(err) console.log(err);
        if(data.length > 0) {
            res.json(data[0]);
        } else {
            res.json({});
        }
    });  
});

app.post('/card', (req, res, next) => {

    con.query('insert into cards (content, `interval`, repetitions, easeFactor, exibition) values (?, ?, ?, ?, ?)', [req.body.content, req.body.interval, req.body.repetitions, req.body.easeFactor, req.body.exibition], function(err, data) {
        if(err) console.log(err);
        res.json(data);
    }); 
});

app.put('/card', (req, res, next) => {

    con.query('update cards set content = ?, `interval` = ?, repetitions = ?, easeFactor = ?, exibition = ? where id = ?', [req.body.content, req.body.interval, req.body.repetitions, req.body.easeFactor, req.body.exibition, req.body.id], function(err, data) {
        if(err) console.log(err);
        res.json(data);
    }); 
});

app.delete('/card/:id', (req, res, next) => {

    con.query('delete from cards where id = ?', [req.params.id], function(err, data) {
        if(err) console.log(err);
        res.json(data);
    }); 
});

app.listen(port, console.log("Server listening..."));