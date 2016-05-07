---
title: MooTools
excerpt: a collection of JavaScript utilities designed for the intermediate to advanced JavaScript developer. It allows you to write powerful and flexible code with its elegant, well documented, and coherent APIs
---

# MooTools

[MooTools](http://mootools.net/) (My Object-Oriented Tools) is a lightweight, object-oriented JavaScript framework. It is released under the free, open-source MIT License. It is used on more than 4% of all websites, and is one of the most popular JavaScript libraries.

> **MooTools** is a collection of JavaScript utilities designed for the intermediate to advanced JavaScript developer. It allows you to write powerful and flexible code with its elegant, well documented, and coherent APIs.
> 
> **MooTools** code is extensively documented and easy to read, enabling you to extend the functionality to match your requirements.
>
> — Official MooTools site.

## History

Valerio Proietti first authored the framework and released it in September 2006 taking as his inspiration [Prototype](/_glossary/PROTOTYPE.md) and Dean Edward's [base2](http://code.google.com/p/base2/). MooTools originated from [Moo.fx](https://en.wikipedia.org/wiki/Moo.fx), a popular plug-in Proietti produced for Prototype in October 2005, which is still maintained and used.

Whereas Prototype extended—prototyped—many of JavaScript's native String, Array, and Function objects with additional methods, Proietti desired a framework that (at the time) further extended the native Element object as well to offer greater control of the [Document Object Model](/_glossary/DOM.md) (DOM).

## Components

MooTools includes a number of components, but not all need to be loaded for each application. Some of the component categories are:

- **Core**: A collection of utility functions that all the other components require.
- **More**: An official collection of add-ons that extend the Core and provide enhanced functionality.
- **Class**: The base library for Class object instantiation.
- **Natives**: A collection of JavaScript Native Object enhancements. The Natives add functionality, compatibility, and new methods that simplify coding.
- **Element**: Contains a large number of enhancements and compatibility standardization to the HTML Element object.
- **Fx**: An advanced effects-API to animate page elements.
- **Request**: Includes [XHR](/_glossary/XHR.md) interface, Cookie, [JSON](/_glossary/JSON.md), and HTML retrieval-specific tools for developers to exploit.
- **Window**: Provides a cross-browser interface to client-specific information, such as the dimensions of the window.

## Browser compatibility

MooTools is compatible and tested with:

- Safari 3+
- Internet Explorer 6+
- Mozilla Firefox 2+
- Opera 9+
- Chrome 4+

## Benefits

MooTools provides the user with a number of advantages over native JavaScript. These include:

- An extensible and modular framework allowing developers to choose their own customized combination of components.
- MooTools follows object-oriented practices and the DRY principle.
- An advanced effects component, with optimized transitions such as easing equations used by many Flash developers.
- Enhancements to the DOM, enabling developers to easily add, modify, select, and delete DOM elements. Storing and retrieving information with Element storage is also supported.

The framework includes built-in functions for manipulation of CSS, DOM elements, native JavaScript objects, Ajax requests, DOM effects, and more. MooTools also provides a detailed, coherent application programming interface (API) as well as a custom downloads module allowing developers to download only the modules and dependencies they need for a particular app.

## Emphasis on modularity and reusability

Every JavaScript framework has its philosophy, and MooTools is interested in taking full advantage of the flexibility and power of JavaScript in a way that emphasizes greater modularity and code reuse. MooTools accomplishes these goals in a way that is intuitive to a developer coming from a class-based inheritance language like Java with the MooTools **Class **object.

**Class** is an object of key/value pairs that can contain either properties or methods (functions). **Class** is effortlessly mixed and extended with other Class instantiations allowing for the greatest focus of MooTools: Code reuse achieved through maximizing the power of JavaScript's prototypical inheritance, but in a **Class** object syntax more familiar to classical inheritance models.

## Object-oriented programming

MooTools contains a robust Class creation and inheritance system that resembles most classically based Object-oriented programming languages. For example, the following is MooTools' equivalent of the examples in Wikipedia's polymorphism page:

```js
var Animal = new Class({

    initialize: function(name) {
        this.name = name;
    }

});

var Cat = new Class({
    Extends: Animal,

    talk: function() {
        return 'Meow!';
    }

});

var Dog = new Class({

    Extends: Animal,

    talk: function() {
        return 'Arf! Arf';
    }

});

var animals = {
    a: new Cat('Missy'),
    b: new Cat('Mr. Bojangles'),
    c: new Dog('Lassie')
};

Object.each(animals, function(animal) {
    alert(animal.name + ': ' + animal.talk());
});
 
// alerts the following:
//
// Missy: Meow!
// Mr. Bojangles: Meow!
// Lassie: Arf! Arf!
```

----------
*Source:*

- [MooTools](https://en.wikipedia.org/wiki/MooTools)*. From Wikipedia, the free encyclopedia*
- [MooTools](http://mootools.net/)*. MooTools official site.*
