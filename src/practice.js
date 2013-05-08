#! /usr/bin/env rhino
version(170);
load("datagen.js");
print("test");

function bind(f, o) {
    if (f.bind) return f.bind(o);
    else return function() {
        return f.apply(o, arguments);
    };
}

function f(y) { return this.x + y }
var o = { x : 1};
var g = bind(f, o);
print(g(2))

var cc = [[1,2,3],[4,5,6],[7,8,9]];
var hoge = cols2rows(cc);
print(hoge);
// print(hoge[1].join())
print(hoge.map(csvrow))

var b = [1,2,3]
print(csvrow(b))
print(b.join())
/*
var joins = mapper(csvrow);
joins(hoge);
*/

makecsv(cc, "hoge.csv");

