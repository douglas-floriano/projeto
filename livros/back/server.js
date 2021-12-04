const http = require ('http');
const servidor = require('./config/aplicativo.js')

server.get('/', (req,res) =>{
    console.log('Rota Raiz Encontratda');
    res.json('Rota Raiz Encontrada!');
})

server.get('/autores', (req,res) =>{
    console.log('Rota Autores Encontratda');
    res.json('Rota Autores Encontrada!');
})

server.get('/editoras', (req,res) =>{
    console.log('Rota Editoras Encontratda');
    res.json('Rota Editoras Encontrada!');
})

http.createServer(servidor).listen(servidor.get('porta'), function(){
    console.log('\nServidor Rodando na Porta ' + server.get('porta'));
})

