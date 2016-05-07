---
title: Memoize
excerpt: an optimization used to speed up consecutive function calls by caching the result of calls with identical input
---

# Memoize

An optimization used to speed up consecutive function calls by caching the result of calls with identical input.

Here is an example of a memoizer function, taken from the book **JavaScript The Good Parts** by Douglas Crockford,
that caches the results from a fibonacci number generator function:

```js
var memoizer = function (memo, formula) {
  var recur = function (n) {
    var result = memo[n];
      if (typeof result !== 'number') {
        result = formula(recur, n);
        memo[n] = result;
      }
      return result;
  };
  return recur;
};

var fibonacci = memoizer([0, 1], function (recur, n) {
  return recur(n − 1) + recur(n − 2);
});
```

## References

* [Faster JavaScript Memoization For Improved Application Performance](https://addyosmani.com/blog/faster-javascript-memoization/), by Addy Osmani.
* [Implementing Memoization in JavaScript](http://www.sitepoint.com/implementing-memoization-in-javascript/)
* [Wikipedia article](https://en.wikipedia.org/wiki/Memoization) on Memoization.


## NPM Memoize Modules

* [mem](https://github.com/sindresorhus/mem)
* [Memoizee](https://github.com/medikoo/memoizee)
