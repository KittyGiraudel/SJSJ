# Closure

A closure is function that closes over its environment. It has access to the state of the environment, but the variables inside the closure are private.

Example:

```js
(function (){
  var scopeVar="Hello";

  (function closure(){
    var closureVar=" World";
     console.log(scopeVar+closureVar);    
  })()
})();
```

`scopeVar` is accessible inside the outer and the inner function, but `closureVar` is only accessible inside the inner function.
