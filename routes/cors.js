const express = require('express');
const cors = require('cors');
const app = express();
const util = require('util');

const whitelist = ['http://localhost:3000', 'http://localhost:3001', 'https://localhost:3443'];
var corsOptionsDelegate = (req, callback) => {
    var corsOptions;
    console.log(req.header('Origin'));
    if(whitelist.indexOf(req.header('Origin')) !== -1) {
        corsOptions = { origin: true };
    }
    else {
        corsOptions = { origin: false };
    }
    callback(null, corsOptions);
};

// if we want to allow all origins
exports.cors = cors();

// if we want to allow only the whitelisted origins
exports.corsWithOptions = cors(corsOptionsDelegate);