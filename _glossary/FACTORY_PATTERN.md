---
title: Factory Pattern
excerpt: a creational pattern that uses factory methods to deal with the problem of creating objects without having to specify the exact class of the object that will be created
---

# Factory Pattern

In class-based programming, the **factory method pattern** is a creational pattern that uses factory methods to deal with the problem of creating objects without having to specify the exact class of the object that will be created. This is done by creating objects by calling a factory method—either specified in an interface and implemented by child classes, or implemented in a base class and optionally overridden by derived classes—rather than by calling a constructor.

## Definition

> Define an interface for creating an object, but let subclasses decide which class to instantiate. The Factory method lets a class defer instantiation it uses to subclasses.
> — [Gang Of Four](https://en.wikipedia.org/wiki/Gang_of_Four_(software))

Creating an object often requires complex processes not appropriate to include within a composing object. The object’s creation may lead to a significant duplication of code, may require information not accessible to the composing object, may not provide a sufficient level of abstraction, or may otherwise not be part of the composing object’s concerns. The factory method design pattern handles these problems by defining a separate method for creating the objects, which subclasses can then override to specify the derived type of product that will be created.

The factory method pattern may rely on inheritance, as object creation is delegated to subclasses that implement the factory method to create objects.

## Structure

![Factory Method Pattern](https://upload.wikimedia.org/wikipedia/ru/f/f0/FactoryMethodPattern.png)

- **Product**
 - it defines the interface of objects created by the abstract;
- **ConcreteProduct**
 - implements the `Product`;
- **Creator**
 - Ii declares the factory method that returns an object of type `Product`. It may also include the implementation of this method as “*default*”;
 - it can cause a factory method to create an object of type `Product`;
- **ConcreteCreator**
 - it overrides the factory method so that he created and returns an object of class `ConcreteProduct`.

## Example

```js
class Product() {
  getName() {
    return null;
  }
}

class ConcreteProductA extends Product {
  getName() {
    return 'ConcreteProductA';
  }
}

class ConcreteProductB extends Product {
  getName() {
    return 'ConcreteProductB';
  }
}

class Creator() {
  factoryMethod() {
    return null;
  }
}

class ConcreteCreatorA extends Creator {
  factoryMethod() {
    return new ConcreteProductA();
  }
}

class ConcreteCreatorB extends Creator {
  factoryMethod() {
    return new ConcreteProductB();
  }
}

// An array of creators
let creators = [new ConcreteCreatorA(), new ConcreteCreatorB()];

// Iterate over creators and create products
for (let i = 0; i < creators.length; i++) {
  let product = creators[i].factoryMethod();
  console.log(product.getName());
}
```

*Source: [Factory method pattern](https://en.wikipedia.org/wiki/Factory_method_pattern). Wikipedia®*
