---
title: Observer Pattern
---

# Observer Pattern

The [observer pattern](https://en.wikipedia.org/wiki/Observer_pattern) is a software design pattern in which an object, called the subject, maintains a list of its dependents, called observers, and notifies them automatically of any state changes, usually by calling one of their methods. It is mainly used to implement distributed event handling systems. The Observer pattern is also a key part in the familiar [model–view–controller](/glossary/MVC.md) (MVC) architectural pattern. The observer pattern is implemented in numerous programming libraries and systems, including almost all GUI toolkits.

The observer pattern can cause memory leaks, known as the [lapsed listener problem](https://en.wikipedia.org/wiki/Lapsed_listener_problem), because in basic implementation it requires both explicit registration and explicit deregistration, as in the dispose pattern, because the subject holds strong references to the observers, keeping them alive. This can be prevented by the subject holding weak references to the observers.

## Definition

Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.

## Summary

The Observer pattern offers a subscription model in which objects subscribe to an event and get notified when the event occurs. This pattern is the cornerstone of event driven programming, including JavaScript. The Observer pattern facilitates good object-oriented design and promotes loose coupling.

When building web apps you end up writing many event handlers. Event handlers are functions that will be notified when a certain event fires. These notifications optionally receive an event argument with details about the event (for example the x and y position of the mouse at a click event).

The event and event-handler paradigm in JavaScript is the manifestation of the Observer design pattern. Another name for the Observer pattern is Pub/Sub, short for Publication/Subscription.

## Diagram

![Observer Pattern diagram](http://www.dofactory.com/images/diagrams/javascript/javascript-observer.jpg)

The objects participating in this pattern are:

- **Subject** - In sample code: `Click`
 - maintains list of observers. Any number of Observer objects may observe a Subject
 - implements an interface that lets observer objects subscribe or unsubscribe
 - sends a notification to its observers when its state changes
- **Observers** - In sample code: `clickHandler`
 - has a function signature that can be invoked when Subject changes (i.e. event occurs)

## Example

The `Click` object represents the *Subject*. The `clickHandler` function is the subscribing *Observer*. This handler subscribes, unsubscribes, and then subscribes itself while events are firing. It gets notified only of events #1 and #3.

Notice that the fire method accepts two arguments. The first one has details about the event and the second one is the context, that is, the this value for when the eventhandlers are called. If no context is provided this will be bound to the global object (`window`).

The `log` function is a helper which collects and displays results.

```js
class Click {
    constructor() {
        this.handlers = []; // observers
    }

    subscribe(fn) {
        this.handlers.push(fn);
    }

    unsubscribe(fn) {
        this.handlers = this.handlers.filter(item => { return item !== fn ? item : null; });
    }

    fire(o, thisObj) {
        let scope = thisObj || window;
        
        this.handlers.forEach(item => { item.call(scope, o) });
    }
}

// log helper 
let log = (function() {
    let log = '';

    return {
        add: msg => { log += msg + '\n'; },
        show: () => { alert(log); log = ''; }
    }
})();

function run() {
    var click = new Click(),
        clickHandler = item => { log.add('fired: ' + item); };

    click.subscribe(clickHandler);
    click.fire('event #1');
    click.unsubscribe(clickHandler);
    click.fire('event #2');
    click.subscribe(clickHandler);
    click.fire('event #3');

    log.show();
}

run();
```

----------

*Source:*

- [Observer pattern](https://en.wikipedia.org/wiki/Observer_pattern)*. From Wikipedia, the free encyclopedia.*
- [Observer](http://www.dofactory.com/javascript/observer-design-pattern)*. Observer JavaScript Design Pattern with examples.*
