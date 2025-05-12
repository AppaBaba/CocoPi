
var http = require('http'); // include http module
var url = require('url');   // include url module
var disp = require('./disp');
 
// create a server
http.createServer(OnReq).listen(8085); //WebApp85 listens on port 8085
// print message to console
console.log('WebApp85 running at http://127.0.0.1:8085/');

function OnReq(req, res){
    var pn = url.parse(req.url).pathname;
    console.log('pathname ' + pn);
    disp.PageDisp(res, pn);
}