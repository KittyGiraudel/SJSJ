# Facade Pattern

The [Facade Pattern](https://en.wikipedia.org/wiki/Facade_pattern) (**or façade pattern**) is a software design pattern commonly used with *object-oriented programming*. The name is by analogy to an architectural facade.

A facade is an object that provides a simplified interface to a larger body of code, such as a class library. A facade can:

- make a software library easier to use, understand and test, since the facade has convenient methods for common tasks;
- make the library more readable, for the same reason;
- reduce dependencies of outside code on the inner workings of a library, since most code uses the facade, thus allowing more flexibility in developing the system;
- wrap a poorly designed collection of APIs with a single well-designed API.

The Facade design pattern is often used when a system is very complex or difficult to understand because the system has a large number of interdependent classes or its source code is unavailable. This pattern hides the complexities of the larger system and provides a simpler interface to the client. It typically involves a single wrapper class which contains a set of members required by client. These members access the system on behalf of the facade client and hide the implementation details.

## Usage

A Facade is used when an easier or simpler interface to an underlying object is desired. Alternatively, an [adapter](https://en.wikipedia.org/wiki/Adapter_pattern) can be used when the wrapper must respect a particular interface and must support polymorphic behavior. A [decorator](https://en.wikipedia.org/wiki/Decorator_pattern) makes it possible to add or alter behavior of an interface at run-time.

| Pattern | Intent |
|---|---|
| Adapter | Converts one interface to another so that it matches what the client is expecting |
| Decorator | Dynamically adds responsibility to the interface by wrapping the original code |
| Facade | Provides a simplified interface |

The facade pattern is typically used when:

- a simple interface is required to access a complex system;
- the abstractions and implementations of a subsystem are tightly coupled;
- need an entry point to each level of layered software; or
- a system is very complex or difficult to understand.

## Structure

![Example of Facade design pattern in UML](https://upload.wikimedia.org/wikipedia/en/5/57/Example_of_Facade_design_pattern_in_UML.png)

**Facade**: The facade class abstracts Packages 1, 2, and 3 from the rest of the application.
**Clients**: The objects are using the Facade Pattern to access resources from the Packages.

## Example

This is an abstract example of how a client (“you”) interacts with a facade (the “computer”) to a complex system (internal computer parts, like CPU and HardDrive).

```js
/* Complex parts */

class CPU {
    freeze() { /* code here */ }
    jump(position) { /* code here */ }
    execute() { /* code here */ }
}

class Memory {
    load(position, data) { /* code here */ }
}

class HardDrive {
    read(lba, size) { /* code here */ }
}

/* Facade */

class ComputerFacade {
  constructor() {
    this.processor = new Cput();
    this.ram = new Memory();
    this.hd = new HardDrive();
	}

  start() {
    this.processor.freeze();
    this.ram.load(this.BOOT_ADDRESS, this.hd.read(this.BOOT_SECTOR, this.SECTOR_SIZE));
    this.processor.jump(this.BOOT_ADDRESS);
    this.processor.execute();
  }
}

/* Client */

let computer = new ComputerFacade();
computer.start();

```

*Source: [Facade pattern](https://en.wikipedia.org/wiki/Facade_pattern). Wikipedia®*
