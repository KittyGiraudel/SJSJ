---
title: Module Pattern
description: a design pattern used to implement the concept of software modules, defined by modular programming, in a programming language with incomplete direct support for the concept
---

# Module Pattern

In software engineering, the [module pattern](https://en.wikipedia.org/wiki/Module_pattern) is a design pattern used to implement the concept of software modules, defined by modular programming, in a programming language with incomplete direct support for the concept.

This pattern can be implemented in several ways depending on the host programming language, such as the singleton design pattern, object-oriented static members in a class and procedural global functions.

## Structure

The module software design pattern provides the features and syntactic structure defined by the modular programming paradigm to programming languages that have incomplete support for the concept.

![Module Pattern structure](https://upload.wikimedia.org/wikipedia/commons/7/73/Module-software-design-pattern.png)

## Concept

In software development, source code can be organized into components that accomplish a particular function or contain everything necessary to accomplish a particular task. Modular programming is one of those approaches.

The concept of a "module" is not fully supported in many common programming languages.

## Features

In order to consider that a Singleton or any group of related code implements this pattern, the following features must be supplied:

- A portion of the code must have global or public access and be designed for use as global/public code. Additional private or protected code can be executed by the main public code.
- A module must have an initializer function that is equivalent to, or complementary to an object constructor method. This feature is not supported by regular namespaces.
- A module must have a finalizer function that is equivalent to, or complementary to an object destructor method. This feature is not supported by regular namespaces.
- Supporting members may require initialization/finalization code that is executed by the module's initializer/finalizer function.
- Most members are functions that perform operations on elements external to the class, provided as arguments by calling functions. Such functions are "utilities", "tools" or "libraries".

## Example

JavaScript does not have built-in support for modules, but the community has created impressive work-arounds. The two most popular standards are:

- [CommonJS Modules](/_glossary/COMMONJS.md): The dominant implementation of this standard is in Node.js ([Node.js](/_glossary/NODEJS.md) modules have a few features that go beyond CommonJS). Characteristics:
 - Compact syntax
 - Designed for synchronous loading
 - Main use: server
- [Asynchronous Module Definition (AMD)](/_glossary/AMD.md): The most popular implementation of this standard is [RequireJS](/_glossary/REQUIREJS.md). Characteristics:
 - Slightly more complicated syntax, enabling AMD to work without eval() (or a compilation step).
 - Designed for asynchronous loading
 - Main use: browsers

In the middle of 2015, [TC39](https://github.com/tc39) have accepted the new standard **ECMAScript 2015** (**ES6**) which supports built-in modules through the new syntax.

#### CommonJS example

##### Definition

```js
// helper/MathHelper.js
module.exports = {
    add: function(left, right) {
        return left + right;
    },

    times: function(left, right) {
        return left * right;
    }
}
```

##### Implementation

```js
// program.js
var mathHelper = require('./helper/MathHelper');

console.log(mathHelper.add(5, 8)); // 13
console.log(mathHelper.times(3, 4)); // 12
```

#### AMD example

##### Definition

```js
// helper/MathHelper.js
define(function() {
    return {
        add: function(left, right) {
            return left + right;
        },

        times: function(left, right) {
            return left * right;
        }
    }
});
```

##### Implementation

```js
// program.js
requirejs(['helper/MathHelper'], function(matHelper) {
    console.log(mathHelper.add(5, 8)); // 13
    console.log(mathHelper.times(3, 4)); // 12
});
```

#### ES6 example

##### Definition

```js
// helper/MathHelper.js
export function add(left, right) {
    return left + right;
}

export function times(left, right) {
    return left * right;
}
```

##### Implementation

```js
// program.js
import { add, times } from './helper/MathHelper';

console.log(add(5, 8)); // 13
console.log(times(3, 4)); // 12
```

## Module as a design pattern

The Module pattern can be considered a creational pattern and a structural pattern. It manages the creation and organization of other elements, and groups them as the structural pattern does.

An object that applies this pattern can provide the equivalent of a namespace, providing the initialization and finalization process of a static class or a class with static members with cleaner, more concise syntax and semantics.

It supports specific cases where a class or object can be considered structured, procedural data. And, vice versa, migrate structured, procedural data, and considered as object-oriented.

----------

*Source:*
- [Module pattern](https://en.wikipedia.org/wiki/Module_pattern)*. From Wikipedia, the free encyclopedia*
- [ECMAScript 6 modules: the final syntax](http://www.2ality.com/2014/09/es6-modules-final.html)*. ②ality – JavaScript and more*
