# Design Patterns

In software engineering, a [design pattern](https://en.wikipedia.org/wiki/Software_design_pattern) is a general reusable solution to a commonly occurring problem within a given context in software design. A design pattern is not a finished design that can be transformed directly into source or machine code. It is a description or template for how to solve a problem that can be used in many different situations. Patterns are formalized best practices that the programmer can use to solve common problems when designing an application or system. Object-oriented design patterns typically show relationships and interactions between classes or objects, without specifying the final application classes or objects that are involved. Patterns that imply mutable state may be unsuited for functional programming languages, some patterns can be rendered unnecessary in languages that have built-in support for solving the problem they are trying to solve, and object-oriented patterns are not necessarily suitable for non-object-oriented languages.

Design patterns may be viewed as a structured approach to computer programming intermediate between the levels of a programming paradigm and a concrete algorithm.

## Types

Design patterns reside in the domain of modules and interconnections. At a higher level there are architectural patterns which are larger in scope, usually describing an overall pattern followed by an entire system.

There are many types of design patterns, for instance:

- **Algorithm strategy patterns** addressing concerns related to high-level strategies describing how to exploit application characteristics on a computing platform.
- **Computational design patterns** addressing concerns related to key computation identification.
- **Execution patterns** which address issues related to lower-level support of application execution, including strategies for executing streams of tasks and for the definition of building blocks to support task synchronization.
- **Implementation strategy patterns** addressing concerns related to implementing source code to support
 1. program organization, and
 2. the common data structures specific to parallel programming.
- **Structural design patterns** addressing concerns related to global structures of applications being developed.

## History

Patterns originated as an architectural concept by [Christopher Alexander](https://en.wikipedia.org/wiki/Christopher_Alexander) (1977/79). In 1987, [Kent Beck](https://en.wikipedia.org/wiki/Kent_Beck) and [Ward Cunningham](https://en.wikipedia.org/wiki/Ward_Cunningham) began experimenting with the idea of applying patterns to programming – specifically pattern languages – and presented their results at the [OOPSLA](https://en.wikipedia.org/wiki/OOPSLA) conference that year. In the following years, Beck, Cunningham and others followed up on this work.

Design patterns gained popularity in computer science after the book [Design Patterns: Elements of Reusable Object-Oriented Software](https://en.wikipedia.org/wiki/Design_Patterns_(book)) was published in 1994 by the so-called "Gang of Four" (Gamma et al.), which is frequently abbreviated as "GoF". That same year, the first Pattern Languages of Programming Conference was held and the following year, the Portland Pattern Repository was set up for documentation of design patterns. The scope of the term remains a matter of dispute. Notable books in the design pattern genre include:

- [Gamma, Erich](https://en.wikipedia.org/wiki/Erich_Gamma); [Helm, Richard](https://en.wikipedia.org/wiki/Richard_Helm); [Johnson, Ralph](https://en.wikipedia.org/wiki/Ralph_Johnson_(computer_scientist)); [Vlissides, John](https://en.wikipedia.org/wiki/John_Vlissides) (1995). [Design Patterns: Elements of Reusable Object-Oriented Software](https://en.wikipedia.org/wiki/Design_Patterns_(book)). Addison-Wesley. ISBN 0-201-63361-2.
- [Brinch Hansen, Per](https://en.wikipedia.org/wiki/Per_Brinch_Hansen) (1995). *Studies in Computational Science: Parallel Programming Paradigms.* Prentice Hall. ISBN 0-13-439324-4.
- Buschmann, Frank; Meunier, Regine; Rohnert, Hans; Sommerlad, Peter (1996). *Pattern-Oriented Software Architecture, Volume 1: A System of Patterns.* John Wiley & Sons. ISBN 0-471-95869-7.
- [Schmidt, Douglas C.](https://en.wikipedia.org/wiki/Douglas_C._Schmidt); Stal, Michael; Rohnert, Hans; Buschmann, Frank (2000). *Pattern-Oriented Software Architecture, Volume 2: Patterns for Concurrent and Networked Objects.* John Wiley & Sons. ISBN 0-471-60695-2.
- [Fowler, Martin](https://en.wikipedia.org/wiki/Martin_Fowler) (2002). *Patterns of Enterprise Application Architecture.* Addison-Wesley. ISBN 978-0-321-12742-6.
- Hohpe, Gregor; Woolf, Bobby (2003). [Enterprise Integration Patterns: Designing, Building, and Deploying Messaging Solutions.](https://en.wikipedia.org/wiki/Enterprise_Integration_Patterns) Addison-Wesley. ISBN 0-321-20068-3.
- Freeman, Eric T; Robson, Elisabeth; Bates, Bert; [Sierra, Kathy](https://en.wikipedia.org/wiki/Kathy_Sierra) (2004). *Head First Design Patterns.* O'Reilly Media. ISBN 0-596-00712-4.

Although design patterns have been applied practically for a long time, formalization of the concept of design patterns languished for several years.

## Practice

Design patterns can speed up the development process by providing tested, proven development paradigms. Effective software design requires considering issues that may not become visible until later in the implementation. Reusing design patterns helps to prevent subtle issues that can cause major problems, and it also improves code readability for coders and architects who are familiar with the patterns.

In order to achieve flexibility, design patterns usually introduce additional levels of indirection, which in some cases may complicate the resulting designs and hurt application performance.

By definition, a pattern must be programmed anew into each application that uses it. Since some authors see this as a step backward from software reuse as provided by components, researchers have worked to turn patterns into components. Meyer and Arnout were able to provide full or partial componentization of two-thirds of the patterns they attempted.

Software design techniques are difficult to apply to a broader range of problems. Design patterns provide general solutions, documented in a format that does not require specifics tied to a particular problem.

## Classification and list

Design patterns were originally grouped into the categories: *creational patterns*, *structural patterns*, and *behavioral patterns*, and described using the concepts of delegation, aggregation, and consultation. For further background on object-oriented design, see coupling and cohesion, inheritance, interface, and polymorphism. Another classification has also introduced the notion of architectural design pattern that may be applied at the architecture level of the software such as the Model–View–Controller pattern.

### Creational patterns

| Name | Description |
| --- | --- |
| [Abstract factory](https://en.wikipedia.org/wiki/Abstract_factory_pattern) | Provide an interface for creating families of related or dependent objects without specifying their concrete classes. |
| [Builder](https://en.wikipedia.org/wiki/Builder_pattern) | Separate the construction of a complex object from its representation, allowing the same construction process to create various representations. |
| [Factory method](FACTORY_PATTERN.md) | Define an interface for creating a single object, but let subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses (dependency injection). |
| [Lazy initialization](https://en.wikipedia.org/wiki/Lazy_initialization) | Tactic of delaying the creation of an object, the calculation of a value, or some other expensive process until the first time it is needed. This pattern appears in the GoF catalog as "virtual proxy", an implementation strategy for the Proxy pattern. |
| [Multiton](https://en.wikipedia.org/wiki/Multiton_pattern) | Ensure a class has only named instances, and provide a global point of access to them. |
| [Object pool](https://en.wikipedia.org/wiki/Object_pool_pattern) | Avoid expensive acquisition and release of resources by recycling objects that are no longer in use. Can be considered a generalisation of connection pool and thread pool patterns. |
| [Prototype](PROTOTYPE_PATTERN.md) | Specify the kinds of objects to create using a prototypical instance, and create new objects by copying this prototype. |
| [Resource acquisition is initialization](https://en.wikipedia.org/wiki/Resource_Acquisition_Is_Initialization) | Ensure that resources are properly released by tying them to the lifespan of suitable objects. |
| [Singleton](SINGLETON_PATTERN.md) | Ensure a class has only one instance, and provide a global point of access to it. |

### Structural patterns

| Name | Description |
| --- | --- |
| [Adapter](https://en.wikipedia.org/wiki/Adapter_pattern) or Wrapper or Translator | Convert the interface of a class into another interface clients expect. An adapter lets classes work together that could not otherwise because of incompatible interfaces. The enterprise integration pattern equivalent is the translator. |
| [Bridge](https://en.wikipedia.org/wiki/Bridge_pattern) | Decouple an abstraction from its implementation allowing the two to vary independently. |
| [Composite](https://en.wikipedia.org/wiki/Composite_pattern) | 	Compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of objects uniformly. |
| [Decorator](https://en.wikipedia.org/wiki/Decorator_pattern) | 	Attach additional responsibilities to an object dynamically keeping the same interface. Decorators provide a flexible alternative to subclassing for extending functionality. |
| [Facade](FACADE_PATTERN.md) | Provide a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use. |
| [Flyweight](https://en.wikipedia.org/wiki/Flyweight_pattern) | Use sharing to support large numbers of similar objects efficiently. |
| [Front controller](https://en.wikipedia.org/wiki/Front_controller) | The pattern relates to the design of Web applications. It provides a centralized entry point for handling requests. |
| [Marker](https://en.wikipedia.org/wiki/Marker_interface_pattern) | Empty interface to associate metadata with a class. |
| [Module](MODULE_PATTERN.md) | 	Group several related elements, such as classes, singletons, methods, globally used, into a single conceptual entity. |
| [Proxy](https://en.wikipedia.org/wiki/Proxy_pattern) | Provide a surrogate or placeholder for another object to control access to it. |
| [Twin](https://en.wikipedia.org/wiki/Twin_pattern) | Twin allows modeling of multiple inheritance in programming languages that do not support this feature. |

### Behavioural patterns

| Name | Description |
| --- | --- |
| [Blackboard](https://en.wikipedia.org/wiki/Blackboard_design_pattern) | Artificial intelligence pattern for combining disparate sources of data (see blackboard system) |
| [Chain of responsibility](https://en.wikipedia.org/wiki/Chain_of_responsibility_pattern) | Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it. |
| [Command](https://en.wikipedia.org/wiki/Command_pattern) | Encapsulate a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undoable operations. |
| [Interpreter](https://en.wikipedia.org/wiki/Interpreter_pattern) | Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language. |
| [Iterator](https://en.wikipedia.org/wiki/Iterator_pattern) | Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation. |
| [Mediator](MEDIATOR_PATTERN.md) | Define an object that encapsulates how a set of objects interact. Mediator promotes loose coupling by keeping objects from referring to each other explicitly, and it lets you vary their interaction independently. |
| [Memento](https://en.wikipedia.org/wiki/Memento_pattern) | Without violating encapsulation, capture and externalize an object's internal state allowing the object to be restored to this state later. |
| [Null object](https://en.wikipedia.org/wiki/Null_Object_pattern) | Avoid null references by providing a default object. |
| [Observer](OBSERVER_PATTERN.md) or [Publish/subscribe](https://en.wikipedia.org/wiki/Publish/subscribe) | Define a one-to-many dependency between objects where a state change in one object results in all its dependents being notified and updated automatically. |
| [Servant](https://en.wikipedia.org/wiki/Design_pattern_Servant) | Define common functionality for a group of classes. |
| [Specification](https://en.wikipedia.org/wiki/Specification_pattern) | Recombinable business logic in a Boolean fashion. |
| [State](https://en.wikipedia.org/wiki/State_pattern) | Allow an object to alter its behavior when its internal state changes. The object will appear to change its class. |
| [Strategy](https://en.wikipedia.org/wiki/Strategy_pattern) | Define a family of algorithms, encapsulate each one, and make them interchangeable. Strategy lets the algorithm vary independently from clients that use it. |
| [Template method](https://en.wikipedia.org/wiki/Template_method_pattern) | Define the skeleton of an algorithm in an operation, deferring some steps to subclasses. Template method lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure. |
| [Visitor](https://en.wikipedia.org/wiki/Visitor_pattern) | Represent an operation to be performed on the elements of an object structure. Visitor lets you define a new operation without changing the classes of the elements on which it operates. |

### Concurrency patterns

| Name | Description |
| --- | --- |
| [Active Object](https://en.wikipedia.org/wiki/Active_object) | Decouples method execution from method invocation that reside in their own thread of control. The goal is to introduce concurrency, by using asynchronous method invocation and a scheduler for handling requests. |
| [Balking](https://en.wikipedia.org/wiki/Balking_pattern) | Only execute an action on an object when the object is in a particular state. |
| [Binding properties](https://en.wikipedia.org/wiki/Binding_properties_pattern) | Combining multiple observers to force properties in different objects to be synchronized or coordinated in some way. |
| [Block chain](https://en.wikipedia.org/wiki/Block_chain_(database)) | Decentralized way to store data and agree on ways of processing it in a Merkle tree, optionally using Digital signature for any individual contributions. |
| [Double-checked locking](https://en.wikipedia.org/wiki/Double_checked_locking_pattern) | Reduce the overhead of acquiring a lock by first testing the locking criterion (the 'lock hint') in an unsafe manner; only if that succeeds does the actual locking logic proceed. Can be unsafe when implemented in some language/hardware combinations. It can therefore sometimes be considered an anti-pattern. |
| [Event-based asynchronous](https://en.wikipedia.org/wiki/Event-Based_Asynchronous_Pattern) | Addresses problems with the asynchronous pattern that occur in multithreaded programs. |
| [Guarded suspension](https://en.wikipedia.org/wiki/Guarded_suspension) | 	Manages operations that require both a lock to be acquired and a precondition to be satisfied before the operation can be executed. |
| [Join](https://en.wikipedia.org/wiki/Join-pattern) | Join-pattern provides a way to write concurrent, parallel and distributed programs by message passing. Compared to the use of threads and locks, this is a high-level programming model. |
| [Lock](https://en.wikipedia.org/wiki/Lock_(computer_science)) | One thread puts a "lock" on a resource, preventing other threads from accessing or modifying it. |
| [Messaging design pattern (MDP)](https://en.wikipedia.org/wiki/Messaging_pattern) | Allows the interchange of information (i.e. messages) between components and applications. |
| [Monitor object](https://en.wikipedia.org/wiki/Monitor_(synchronization)) | 	An object whose methods are subject to mutual exclusion, thus preventing multiple objects from erroneously trying to use it at the same time. |
| [Reactor](https://en.wikipedia.org/wiki/Reactor_pattern) | A reactor object provides an asynchronous interface to resources that must be handled synchronously. |
| [Read-write lock](https://en.wikipedia.org/wiki/Read/write_lock_pattern) | Allows concurrent read access to an object, but requires exclusive access for write operations. |
| [Scheduler](https://en.wikipedia.org/wiki/Scheduler_pattern) | Explicitly control when threads may execute single-threaded code. |
| [Thread pool](https://en.wikipedia.org/wiki/Thread_pool_pattern) | 	A number of threads are created to perform a number of tasks, which are usually organized in a queue. Typically, there are many more tasks than threads. Can be considered a special case of the object pool pattern. |
| [Thread-specific storage](https://en.wikipedia.org/wiki/Thread-Specific_Storage) | Static or "global" memory local to a thread. |

## Documentation

The documentation for a design pattern describes the context in which the pattern is used, the forces within the context that the pattern seeks to resolve, and the suggested solution. There is no single, standard format for documenting design patterns. Rather, a variety of different formats have been used by different pattern authors. However, according to Martin Fowler, certain pattern forms have become more well-known than others, and consequently become common starting points for new pattern-writing efforts. One example of a commonly used documentation format is the one used by Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides (collectively known as the "Gang of Four", or GoF for short) in their book Design Patterns. It contains the following sections:

- **Pattern Name and Classification**: A descriptive and unique name that helps in identifying and referring to the pattern.
- **Intent**: A description of the goal behind the pattern and the reason for using it.
- **Also Known As**: Other names for the pattern.
- **Motivation (Forces)**: A scenario consisting of a problem and a context in which this pattern can be used.
- **Applicability**: Situations in which this pattern is usable; the context for the pattern.
- **Structure**: A graphical representation of the pattern. Class diagrams and Interaction diagrams may be used for this purpose.
- **Participants**: A listing of the classes and objects used in the pattern and their roles in the design.
- **Collaboration**: A description of how classes and objects used in the pattern interact with each other.
- **Consequences**: A description of the results, side effects, and trade offs caused by using the pattern.
- **Implementation**: A description of an implementation of the pattern; the solution part of the pattern.
- **Sample Code**: An illustration of how the pattern can be used in a programming language.
- **Known Uses**: Examples of real usages of the pattern.
- **Related Patterns**: Other patterns that have some relationship with the pattern; discussion of the differences between the pattern and similar patterns.

----------

*Source:*
- [Software design pattern](https://en.wikipedia.org/wiki/Software_design_pattern)*. From Wikipedia, the free encyclopedia.*