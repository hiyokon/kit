#! /usr/bin/env rhino
// version(170);
var datagen = require("./datagen.js");

console.log("ap25s");

var n = 10;
var comments = [];

var comm_id = new Array(n);
var comm_date = new Array(n);
var prod_id = new Array(n);
var posi_f = new Array(n);
var nega_f = new Array(n);
var comm_pars = new Array(n);
var comm_cont = new Array(n);
var comm_url = new Array(n);
var empl_id = new Array(n);

comments.push(comm_id,comm_date,prod_id,posi_f,nega_f,comm_pars,comm_cont,comm_url,empl_id);

for (i=0; i < n; i++) {
    comm_id[i] = i + 1;
    comm_date[i] = i;
    prod_id[i] = ((i + 1) * 255 % 10) + 1;
    posi_f[i] = Math.random(2);
    nega_f[i] = Math.random(2);
    comm_pars[i] = "bob";
    comm_cont[i] = "like";
    comm_url[i] = "http://hoge.com";
    empl_id[i] = i;
}

datagen.makecsv(comments, "fuga.csv");






