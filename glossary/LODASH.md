# Lodash

[Lodash](https://lodash.com/docs) is an utility library to simplify Javascript development by providing functions for
Javascript basic types, such as:
- Array manipulations: `map`, `reduce`, `filter`, `merge`, `difference`...
- String transformations: `capitalize`, `camelCase`, `truncate`, `template`...
- Collection querying: `find`, `where`, `contains`, `any`, `all`...
- Object manipulations: `pick`, `omit`, `forIn`, `pluck`...
- Property getters and setters: `property`, `method`, `get`, `set`
- Functional programing utilities: `partial`, `curry`, `compose`, `debounce`...

It also provides an API for chaining function calls in a "pipe-like" flavor:

```js
_.chain(myArray)
 .map(x => x * 3)
 .filter(x => x % 2)
 .sum()
 .value()
  // returns the sum of myArray after multiplying all elements by 3 and rejecting the odd numbers
```
