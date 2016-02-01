# QUnit

[QUnit](https://qunitjs.com/) is a JavaScript unit testing framework. While heavily used by the jQuery Project for testing [jQuery](JQUERY.md), [jQuery UI](http://jqueryui.com/) and [jQuery Mobile](http://jquerymobile.com/), it is a generic framework to test any JavaScript code. It supports server-side (e.g. [node.js](NODEJS.md)) and client-side environments.

QUnit's assertion methods follow the [CommonJS](COMMONJS.md) unit testing specification, which itself was influenced to some degree by QUnit.

## History

QUnit was originally developed by John Resig as part of jQuery. In 2008 it was extracted from the jQuery unit test source code to form its own project and became known as "QUnit". This allowed others to start using it for writing their unit tests. While the initial version of QUnit used jQuery for interaction with the DOM, a rewrite in 2009 made QUnit completely standalone.

## Usage

- `QUnit.module(string)` - Defines a module, a grouping of one or more tests.
- `QUnit.test(string, function)` - Defines a test.

QUnit uses a set of assertion method to provide semantic meaning in unit tests:

- `assert.ok(boolean, string)` - Asserts that the provided value casts to boolean true.
- `assert.equal(value1, value2, message)` - Compares two values, using the double-equal operator.
- `assert.deepEqual(value1, value2, message)` - Compares two values based on their content, not just their identity.
- `assert.strictEqual(value1, value2, message)` - Strictly compares two values, using the triple-equal operator.

## Example

A basic example would be as follows:

```js
QUnit.test('a basic test example', function (assert) {
  var obj = {};

  assert.ok(true, 'Boolean true');       // passes
  assert.ok(1, 'Number one');            // passes
  assert.ok(false, 'Boolean false');     // fails

  obj.start = 'Hello';
  obj.end = 'Ciao';
  assert.equal(obj.start, 'Hello', 'Opening greet'); // passes
  assert.equal(obj.end, 'Goodbye', 'Closing greet'); // fails
});
```

----------

*Source:*

- [QUnit](https://en.wikipedia.org/wiki/QUnit)*. From Wikipedia, the free encyclopedia.*
- [QUnit: A JavaScript Unit Testing framework.](https://qunitjs.com/)