---
title: Virtual DOM
description: a copy of the DOM in memory that the program can modify instead of directly interfacing with the "real" DOM to help speed up interactions
---

# Virtual DOM

The Virtual DOM is a concept closely associated with React that holds a lightweight, abstracted copy of the [DOM](/_glossary/DOM.md) in memory and doesn't (re)render the elements until the precise moment they are needed. This tremendously helps with page speed, as instead of making the browser render all the components at once, it only needs to do so on the ones that are required at the time, making the usually intensive operations in the virtual DOM first.

When an element in the DOM needs updated, the virtual DOM copy of it is modified first, then it's sent to be rendered in the actual DOM. In React, many smaller read/write operations like this are often batched together.
