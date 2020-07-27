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




-------------------------------------------------
MDN Promise:

Promise对象代表异步操作的最终结果。
用Chaining代替层层嵌套Callback, 用Catch()方法代替一个大的try-catch块。
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises

Essentially, a promise is a returned object to which you attach callbacks, instead of passing callbacks into a function.
The arguments to then are optional, and catch(failureCallback) is short for then(null, failureCallback). 
You might see this expressed with arrow functions instead:(Important: Always return results)


## callback和promise新旧写法对比
============================================================================
createAudioFileAsync(audioSettings, successCallback, failureCallback);
VS：
createAudioFileAsync(audioSettings).then(successCallback, failureCallback);


setTimeout(() => saySomething("10 seconds passed"), 10*1000);
VS1：
const wait = ms => new Promise(resolve => setTimeout(resolve, ms)); //new Promise((resolve, reject)
wait(10*1000).then(() => saySomething("10 seconds")).catch(failureCallback);

VS2：
let myFirstPromise = new Promise((resolve, reject) => {setTimeout(function(){resolve("Success!");}, 250);});
myFirstPromise.then((successMessage) => {console.log("Yay! " + successMessage);});

=================================================================

* Use: 
then(), then(), catch(), finilly(),
* Define:
Promise.resolve() and Promise.reject() 手工创建resolve或reject的result.
Promise.all() and Promise.race() 异步并行操作All或Any.


异步函数： async function 返回一个AsyncFunction object.然后在event loop后返回一个Promise对象，用await可以在Promise对象中取结果。
常见错误：  forgetting the await keyword.  Forgot to terminate chain with a catch!