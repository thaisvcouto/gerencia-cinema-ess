import express from 'express';
import userRouter from './src/routes/user.routes';

const server = express();

server.use(function (req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With, content-type');
    next();
});

server.use(express.json());
server.use('/user', userRouter);

server.listen(3000, () => {
    console.log(`Servidor executando na porta 3000`);
});