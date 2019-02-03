node debug index.js
npm -v -i -g npm@latest, npm init. npm publish, npm config ls, exports.


npm init, npm install <pkg> -g --save-dev (update,install)

Node: global, process,setTimeout,setInterval, module.exports

-----------Chrome Console API-------
* console.warn('%chello world','font-size:25px;color:red;');
* var data =[{a:1,b:2},{a:2,b:1}]    console.table(data);
* console.assert    console.count    console.log(document.body);

Command Line API (Chrome控制台)
* $(selector) = document.querySelector() = first dom
* $$(selector) = document.querySelectorAll() = all doms
* monitor & unmonitor - monitor("resize")
* debug & undebug - debug("resize") debugger

------------ NPM TEST -----------------
// index.js
var lodash = require('lodash');
var output = lodash.without([1,2,3],1);
console.log(output);



------------- JS Standard Library -------------