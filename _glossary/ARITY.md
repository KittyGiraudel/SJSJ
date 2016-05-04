---
title: Arity
---

# Arity

Arity (from Latin) is the term used to refer to the number of arguments or operands in a function or operation, respectively. You're most likely to come across this word in the realm of JavaScript when it’s used to mention the number of arguments expected by a JavaScript function.

There’s even a property named [arity](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Function/arity), of the `Function` object that returns the number of expected arguments in a function. It’s now obsolete though and replaced by `length`.

As an example, the following function has an arity of 3.

```js
function getName(first, middle, last) {
  return first + ' ' + middle + ' ' + last;
}
```

Source: https://gist.github.com/nucliweb/8de961282f64095b1a57.
