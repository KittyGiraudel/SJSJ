# Prototype Pattern

The [prototype pattern](https://en.wikipedia.org/wiki/Prototype_pattern) is a creational design pattern in software development. It is used when the type of objects to create is determined by a [prototypical](PROTOTYPE.md) instance, which is cloned to produce new objects. This pattern is used to:

- avoid subclasses of an object creator in the client application, like the abstract factory pattern does.
- avoid the inherent cost of creating a new object in the standard way (e.g., using the `new` keyword) when it is prohibitively expensive for a given application.

To implement the pattern, declare an abstract base class that specifies a pure virtual `clone()` method. Any class that needs a "polymorphic constructor" capability derives itself from the abstract base class, and implements the clone() operation.

The client, instead of writing code that invokes the "new" operator on a hard-coded class name, calls the `clone()` method on the prototype, calls a [factory method](FACTORY_PATTERN.md) with a parameter designating the particular concrete derived class desired, or invokes the `clone()` method through some mechanism provided by another design pattern.

## Structure

![Prototype Pattern diagram](http://www.dofactory.com/images/diagrams/javascript/javascript-prototype.jpg)

The objects participating in this pattern are:

- **Client** - In sample code: the `run()` function.
 - creates a new object by asking a prototype to clone itself
- **Prototype** - In sample code: `CustomerPrototype`
 - creates an interfaces to clone itself
- **Clones** - In sample code: `Customer`
 - the cloned objects that are being created

## Example

In the sample code we have a `CustomerPrototype` object that clones objects given a prototype object. Its constructor function accepts a prototype of type `Customer`. Calling the clone method will generate a new `Customer` object with its property values initialized with the prototype values.

This is the classical implementation of the Prototype pattern, but JavaScript can do this far more effectively using its built-in [prototype facility](PROTOTYPE.md).

```js
function CustomerPrototype(proto) {
    this.proto = proto;
 
    this.clone = function () {
        var customer = new Customer();
 
        customer.first = proto.first;
        customer.last = proto.last;
        customer.status = proto.status;
 
        return customer;
    };
}
 
function Customer(first, last, status) {
    this.first = first;
    this.last = last;
    this.status = status;
 
    this.say = function () {
        alert('name: ' + this.first + ' ' + this.last +
              ', status: ' + this.status);
    };
}
 
function run() {
    var proto = new Customer('n/a', 'n/a', 'pending');
    var prototype = new CustomerPrototype(proto);
 
    var customer = prototype.clone();
    customer.say();
}

run();
```

----------

*Source:*
- [Prototype pattern](https://en.wikipedia.org/wiki/Prototype_pattern)*. From Wikipedia, the free encyclopedia.*
- [Prototype](http://www.dofactory.com/javascript/prototype-design-pattern)*. Prototype JavaScript Design Pattern with examples.*