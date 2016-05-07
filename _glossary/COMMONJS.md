---
title: CommonJS
excerpt: a project with the goal of specifying an ecosystem for JavaScript outside the browser (for example, on the server or for native desktop applications)
---

# CommonJS

**CommonJS** is a project with the goal of specifying an ecosystem for JavaScript outside the browser (for example, on the server or for native desktop applications).

Server side JavaScript has been around for a long time, and potentially offers some unique and interesting advantages over other languages because the same language is spoken by both client and server.

Unfortunately, though, server side JavaScript is very fragmented. A script that accesses files can’t be used without modification on both rhino and [V8](/_glossary/V8.md). Spidermonkey and JavaScriptCore can’t both load in additional modules in the same way. A JavaScript web framework is very much tied to its interpreter and is often forced to create a bunch of APIs that Python, Ruby and Java programmers take for granted.

The goal for this project is to create a standard library that will ultimately allow web developers to choose among any number of web frameworks and tools and run that code on the platform that makes the most sense for their application.

## History

The project was started by Mozilla engineer Kevin Dangoor in January 2009 and initially named **ServerJS**.

> What I’m describing here is not a technical problem. It’s a matter of people getting together and making a decision to step forward and start building up something bigger and cooler together.
> — Kevin Dangoor

In August 2009, the project was renamed **CommonJS** to show the broader applicability of the APIs. Specifications are created and approved in an open process. A specification is only considered final after it has been finished by multiple implementations. **CommonJS** is not affiliated with the [ECMA](/_glossary/ECMASCRIPT.md) International group TC39 working on ECMAScript, but some members of TC39 participate in the project.

In May 2013, Isaac Z. Schlueter, the author of [npm](/_glossary/NPM.md), the package manager for [Node.js](/_glossary/NODEJS.md), said **CommonJS** is being made obsolete by Node.js, and is avoided by the core Node.js developers.

## Example usage

As an example, `foo.js` loads the module `circle.js` in the same directory.

The contents of `foo.js`:

```js
const circle = require('./circle.js');
console.log( `The area of a circle of radius 4 is ${circle.area(4)}`);
```

The contents of `circle.js`:

```js
const PI = Math.PI;

exports.area = function (r) {
  return PI * r * r;
};

exports.circumference = function (r) {
  return 2 * PI * r;
};
```

The module `circle.js` has exported the functions `area(..)` and `circumference(..)`. To add functions and objects to the root of your module, you can add them to the special `exports` object.

Variables local to the module will be private, as though the module was wrapped in a function. In this example the variable `PI` is private to `circle.js`.

If you want the root of your module’s export to be a function (such as a constructor) or if you want to export a complete object in one assignment instead of building it one property at a time, assign it to `module.exports` instead of `exports`.

Below, `bar.js` makes use of the square module, which exports a constructor:

```js
const square = require('./square.js');
var mySquare = square(2);
console.log(`The area of my square is ${mySquare.area()}`);
```

The `square` module is defined in `square.js`:

```js
// Assigning to exports will not modify module, must use module.exports
module.exports = function (width) {
  return {
    area: function () {
      return (width * width);
    }
  };
}
```

The module system is implemented in the `require('module')` module.

*This section was taken from [Node.js documentation site](https://nodejs.org/docs/latest/api/modules.html).*
