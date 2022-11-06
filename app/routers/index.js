const express = require('express');
const router = express.Router();
const controllerAllGenerations = require('../controllers/controllerAllGenerations');



router.get('/', (req, res) => {
    res.send('Hello World!');
});

// route all generations
router.get('/generations', controllerAllGenerations.getAllGenerations);



module.exports = router;