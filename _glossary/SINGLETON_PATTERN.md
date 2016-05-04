---
title: Singleton Pattern
description: a design pattern that restricts the instantiation of a class to one object
---

# Singleton Pattern

In software engineering, the [singleton pattern](https://en.wikipedia.org/wiki/Singleton_pattern) is a design pattern that restricts the instantiation of a class to one object. This is useful when exactly one object is needed to coordinate actions across the system. The concept is sometimes generalized to systems that operate more efficiently when only one object exists, or that restrict the instantiation to a certain number of objects. The term comes from the [mathematical concept of a singleton](https://en.wikipedia.org/wiki/Singleton_(mathematics)).

The Singleton Pattern limits the number of instances of a particular object to just one. This single instance is called the singleton.

Singletons are useful in situations where system-wide actions need to be coordinated from a single central place. An example is a database connection pool. The pool manages the creation, destruction, and lifetime of all database connections for the entire application ensuring that no connections are 'lost'.

Singletons reduce the need for global variables which is particularly important in JavaScript because it limits namespace pollution and associated risk of name collisions. The [Module pattern](MODULE_PATTERN.md) is JavaScript's manifestation of the Singleton pattern.

## Common uses

- The [Abstract Factory](https://en.wikipedia.org/wiki/Abstract_factory_pattern), [Builder](https://en.wikipedia.org/wiki/Builder_pattern), and [Prototype](/_glossary/PROTOTYPE_PATTERN.md) patterns can use Singletons in their implementation.
- [Facade](/_glossary/FACADE_PATTERN.md) objects are often singletons because only one Facade object is required.
- [State](https://en.wikipedia.org/wiki/State_pattern) objects are often singletons.
Singletons are often preferred to global variables because:
 - They do not pollute the global namespace (or, in languages with namespaces, their containing namespace) with unnecessary variables.
 - They permit lazy allocation and initialization, whereas global variables in many languages will always consume resources.

## Structure

![Singleton Pattern structure](http://www.dofactory.com/images/diagrams/javascript/javascript-singleton.jpg)

The objects participating in this pattern are:

- ``Singleton`` - In sample code: `Singleton`
 - defines `getInstance()` which returns the unique instance.
 - responsible for creating and managing the instance object.

## Example

The Singleton object is implemented as an [immediate anonymous function](/_glossary/IIFE.md). The function executes immediately by wrapping it in brackets followed by two additional brackets. It is called anonymous because it doesn't have a name.

#### Example 1

```js
var Singleton = (function() {
	var instance;

	// Private methods and fields
	// ...	

	// Constructor
	function Singleton() {
		if ( !instance )
			instance = this;
		else return instance;

		// Public fields
	}

	// Public methods
	Singleton.prototype.test = function() {};

	return Singleton;
})();

function run() {
    var instance1 = new Singleton()
    var instance2 = new Singleton()
 
    console.assert(instance1 === instance2);
}

run();
```

#### Example 2

The `getInstance` method is Singleton's gatekeeper. It returns the one and only instance of the object while maintaining a private reference to it which is not accessible to the outside world.

The `getInstance` method demonstates another design pattern called **Lazy Load**. **Lazy Load** checks if an instance has already been created; if not, it creates one and stores it for future reference. All subsequent calls will receive the stored instance. Lazy loading is a CPU and memory saving technique by creating objects only when absolutely necessary.

```js
var Singleton = (function () {
    var instance;
 
    function createInstance() {
        var object = new Object('I am the instance');

        return object;
    }
 
    return {
        getInstance: function () {
            if (!instance) {
                instance = createInstance();
            }

            return instance;
        }
    };
})();
 
function run() {
    var instance1 = Singleton.getInstance();
    var instance2 = Singleton.getInstance();
 
    console.assert(instance1 === instance2);
}

run();
```

----------

*Source:*
- [Singleton pattern](https://en.wikipedia.org/wiki/Singleton_pattern)*. From Wikipedia, the free encyclopedia.*
- [Singleton](http://www.dofactory.com/javascript/singleton-design-pattern)*. Singleton JavaScript Design Pattern with examples.*
