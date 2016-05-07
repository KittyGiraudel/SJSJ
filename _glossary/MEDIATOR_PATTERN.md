---
title: Mediator Pattern
excerpt: an object that encapsulates how a set of objects interact
---

# Mediator Pattern

In software engineering, the [mediator pattern](https://en.wikipedia.org/wiki/Mediator_pattern) defines an object that encapsulates how a set of objects interact. This pattern is considered to be a behavioral pattern due to the way it can alter the program's running behavior.

Usually a program is made up of a large number of classes. So the logic and computation is distributed among these classes. However, as more classes are developed in a program, especially during maintenance and/or refactoring, the problem of communication between these classes may become more complex. This makes the program harder to read and maintain. Furthermore, it can become difficult to change the program, since any change may affect code in several other classes.

With the **mediator pattern**, communication between objects is encapsulated with a **mediator** object. Objects no longer communicate directly with each other, but instead communicate through the mediator. This reduces the dependencies between communicating objects, thereby lowering the coupling.

## Definition

The essence of the Mediator Pattern is to "define an object that encapsulates how a set of objects interact". It promotes loose coupling by keeping objects from referring to each other explicitly, and it allows their interaction to be varied independently.[1] Client classes can use the mediator to send messages to other clients, and can receive messages from other clients via an event on the mediator class.

## Structure

![Mediator Pattern structure](http://www.dofactory.com/images/diagrams/javascript/javascript-mediator.jpg)

The objects participating in this pattern are:

- **Mediator** - In sample code: `Chatroom`
 - defines an interface for communicating with `Colleague` objects
 - maintains references to `Colleague` objects
 - manages central control over operations
- **Colleagues** - In sample code: `Participants`
 - objects that are being mediated by the `Mediator`
 - each instance maintains a reference to the `Mediator`

## Example

In the example code we have four participants that are joining in a chat session by registering with a Chatroom (the Mediator). Each participant is represented by a Participant object. Participants send messages to each other and the Chatroom handles the routing.

This example is simple, but other complex rules could have been added, such as a 'junk filter' to protect participants from receiving junk messages.

The log function is a helper which collects and displays results.

```js
class Participant {
    constructor(name) {
        this.name = name;
        this.chatroom = null;
    }

    send(message, to) {
        this.chatroom.send(message, this, to);
    },
    receive(message, from) {
        log.add(from.name + " to " + this.name + ": " + message);
    }
}
 
let Chatroom = function() {
        let participants = {};

        return { 
            register: function(participant) {
                participants[participant.name] = participant;
                participant.chatroom = this;
            },
            send: function(message, from, to) {
                if (to) {                      // single message
                    to.receive(message, from);    
                } else {                       // broadcast message
                    for (let key in participants) {   
                        if (participants[key] !== from) {
                            participants[key].receive(message, from);
                        }
                    }
                }
            }
        };
    },

    // log helper
    log = (function() {
        let log = '';

        return {
            add: msg => { log += msg + '\n'; },
            show: () => { alert(log); log = ''; }
        }
    })();
 
function run() {
    let yoko = new Participant('Yoko'),
        john = new Participant('John'),
        paul = new Participant('Paul'),
        ringo = new Participant('Ringo'),
        chatroom = new Chatroom(),

    chatroom.register(yoko);
    chatroom.register(john);
    chatroom.register(paul);
    chatroom.register(ringo);
 
    yoko.send('All you need is love.');
    yoko.send('I love you John.');
    john.send('Hey, no need to broadcast', yoko);
    paul.send('Ha, I heard that!');
    ringo.send('Paul, what do you think?', paul);
 
    log.show();
}

run();
```

----------

*Source:*

- [Mediator pattern](https://en.wikipedia.org/wiki/Mediator_pattern)*. From Wikipedia, the free encyclopedia.*
- [Mediator](http://www.dofactory.com/javascript/mediator-design-pattern)*. Mediator JavaScript Design Pattern with examples.*
