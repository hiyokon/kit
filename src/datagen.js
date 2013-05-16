#! /etc/bin/env rhino

function csvrow(a) {
    var row="";
    for(var i=0; i < a.length; i++) {
        if (i < a.length-1) {
            row = row + a[i] + ",";
        }
        else {
            row = row + a[i] + "\n";
        }
    }
    return row;
}

function bind(f, o) {
    if (f.bind) return f.bind(o);
    else return function() {
        return f.apply(o, arguments);
    };
}

function cols2rows(aa) {
    function arrayAt(a) {
        return a[this.x]
    }
    var rows=[]
    for (i=0; i < aa[0].length; i++) {
        var ati = bind(arrayAt, {x:i});
        rows[i] = aa.map(ati);
        // or -> rows.push(aa.map(ati);
        // console.log(rows);
    }
    return rows
}

function mapper(f) {
    return function (a) {return map(a, f);};
}

exports.makecsv = function makecsv(aa, filename) {
//var file = new java.io.File(filename);
//var out = new java.io.FileWriter(file);
var bb = cols2rows(aa);
for (i=0; i < aa.length; i++) {
//out.write(csvrow(bb[i]));
console.log(csvrow(bb[i]));
};
//out.close();
}
