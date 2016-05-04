---
title: IIFE
---

# IIFE

IIFE (for *Immediately Invoked Function Expression*) is a function that gets called immediately after declaration. It is most often used to create a scoping context (a context in which all variables and function definitions are scoped).

An IIFE can be written with the calling brackets (`()`) inside of the wrapping brackets:

```js
(function foo () {
  // [body]
}());
```

Or with the calling brackets on the outside:

```js
(function foo () {
  // [body]
})();
```

The examples above are both named IIFE’s (`foo`) but it is also quite common to write them anonymously (without a function name).
