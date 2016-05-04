---
title: Revealing Module Pattern
---

# Revealing Module Pattern

This pattern is the same concept as the [module pattern](/glossary/MODULE_PATTERN.md) in that it focuses on public & private methods. The only difference is that the revealing module pattern was engineered as a way to ensure that all methods and variables are kept private until they are explicitly exposed; usually through an object literal returned by the closure from which it's defined. Personally, I like this approach for vanilla JavaScript as it puts a clear emphasis on both the intent of the developer and the module itself.

## Advantages

- Cleaner approach for developers
- Supports private data
- Less clutter in the global namespace
- Localization of functions and variables through closures
- The syntax of our scripts are even more consistent
- Explicitly defined public methods and variables which lead to increased readability

## Disadvantages

- Private methods are unaccessible.
- Private methods and functions lose extendability since they are unaccessible (see my comment in the previous bullet point).
- It's harder to patch public methods and variables that are referred to by something private.

## Example

```js
var MyModule = (function(window, undefined) {
    function myMethod() {
        console.log('my method');
    }

    function myOtherMethod() {
        console.log('my other method');
    }

    // explicitly return public methods when this object is instantiated
    return {
        someMethod: myMethod,
        someOtherMethod: myOtherMethod
    };
})(window);

//  example usage
MyModule.myMethod(); // undefined
MyModule.myOtherMethod(); // undefined
MyModule.someMethod(); // prints 'my method'
MyModule.someOtherMethod(); // prints 'my other method'
```

This pattern can also be implemented using a privately shared cache:

```js
var MyModule = (function(window,undefined) {
    // this object is used to store private variables and methods across multiple instantiations
    var privates = {};

    function MyModule() {
        this.myMethod = function myMethod() {
            console.log('my method');
        };

        this.myOtherMethod = function myOtherMethod() {
            console.log('my other method');
        };
    }

    return MyModule;
})(window);

// example usage
var myMod = new MyModule();
myMod.myMethod(); // prints 'my method'
myMod.myOtherMethod(); // prints 'my other method'
```

----------

*Source:*

- [The Revealing Module Pattern](https://carldanley.com/js-revealing-module-pattern/)
- [The Module Pattern](https://carldanley.com/js-module-pattern/#file-module-pattern-example-2-js-L1)
