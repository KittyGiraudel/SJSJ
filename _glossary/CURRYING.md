---
title: Currying
excerpt: the process to transform a function with multiple parameters into a chain of functions of one parameter
---

# Currying

Currying is the technique of translating the evaluation of a function that takes N arguments into evaluating a sequence of N functions, each with a single argument.

This process is done by calling the function with one parameter, and return a new function with the parameter already bound inside a [closure](/_glossary/CLOSURE.md).

For example, let’s say we have an `add` function that takes two parameters `a` and `b`:

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

[Lodash](/_glossary/LODASH.md), [Wu](https://fitzgen.github.io/wu.js/#curryable) and [Ramda](/_glossary/RAMDA.md) are 3 of the many libraries that provide currying.

## Currying with Javascript Libraries

Most Javascript libraries don't stick to this pure definition of currying, and instead mix in a bit of partial application. What this means is that they allow you to call the curried functions with more than one argument at a time. As you give it arguments, it will continue returning new curried functions until you've given it all the arguments it expects, at which point it will apply them to the function. It's really auto-curried partial application.

Thus, the following are equivalent:

```js
foo(1)(2)(3)(4)(5);
foo(1, 2, 3, 4, 5);
foo(1)(2, 3, 4, 5);
foo(1, 2)(3)(4, 5);
```

It's "syntactic sugar" that most libraries use, and for them the end result is the same as when you call `foo(1)(2)(3)(4)(5)`.
