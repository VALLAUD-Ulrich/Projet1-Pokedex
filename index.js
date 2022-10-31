const express = require('express');
const app = express();
const port = process.env.PORT ?? 3000;

const router = require('./app/routers');

app.use(router);


app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
    }); 
