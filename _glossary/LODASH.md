---
title: Lodash
description: an utility toolkit to extend JavaScript primitive types
---

# Lodash

[Lodash](https://lodash.com) is a small [modularized](https://www.npmjs.com/browse/keyword/lodash-modularized) library which provides a bunch of helpers to work with Javascript data types (string, object, etc.) in a much more simpler way. Every single helper can be required and used itself without requiring the whole library. Additionally, it makes Javascript code look elegant and more efficient by offering functional style, method chaining and [more](https://lodash.com/#features).

Think of Lodash as an utility library to simplify Javascript development by providing functions for Javascript basic types, such as:
- Array manipulations: `map`, `reduce`, `filter`, `merge`, `difference`…
- String transformations: `capitalize`, `camelCase`, `truncate`, `template`…
- Collection querying: `find`, `where`, `contains`, `any`, `all`…
- Object manipulations: `pick`, `omit`, `forIn`, `pluck`…
- Property getters and setters: `property`, `method`, `get`, `set`…
- Functional programing utilities: `partial`, `curry`, `compose`, `debounce`…

It also provides an API for chaining function calls in a “pipe-like” flavor:

```js
_.chain(myArray)
 .map(x => x * 3)
 .filter(x => x % 2)
 .sum()
 .value()
  // returns the sum of myArray after multiplying all elements by 3 and rejecting the odd numbers
```

It may be seen as alternative of [Underscore](/_glossary/UNDERSCORE.md).
