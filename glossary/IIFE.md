IIFE (Immediately Invoked Function Expression) is a function that gets called immediately after declaration.  Is most often used to create a scoping context.

An IIFE be written with the calling brackets inside of the wrapping brackets:
```javascript
(function foo() {
  // [body]
}());
```

Or with the calling brackets on the outside
```javascript
(function foo() {
  // [body]
})();
```

The examples above are both named IIFE's but it's also quite common to write them anonymously.
