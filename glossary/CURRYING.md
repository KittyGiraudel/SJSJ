# Currying

Currying is the process of converting functions with multiple arguments into a chain of functions with a single argument,
by using the power of [closures](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures)
and [higher-order](http://www.sitepoint.com/higher-order-functions-javascript/) functions.

This process is done by calling the function with one parameter, and return a new function with the parameter
already bound inside a closure.

For example, let's say we have an `add` function that takes two parameters `a` and `b`:
```js
// The native function definition would be to have a and b as parameters:
add(3, 5)

// After currying the function, we can then apply it like so:
curryAdd(3)(5)
```

This is an interesting technique allowing to *partially call* a function, leaving the rest of the call for later.

For instance, with our previous `curryAdd` function:
```js
var add3 = curryAdd(3);
var add10 = curryAdd(10);

// Then we can call
add3(5) // => 8
add10(5) // => 15
```


Examples of libraries providing currying: [Lodash](https://lodash.com/docs#curry), [Wu](https://fitzgen.github.io/wu.js/#curryable), [Ramda](http://ramdajs.com/docs/#curry)
