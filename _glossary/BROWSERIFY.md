---
title: Browserify
excerpt: a tool making possible to use the `require` function from Node.js within the browser
---

# Browserify

[Browserify](http://browserify.org/) is a tool that allows you to use the [require](https://nodejs.org/api/modules.html) [Node.js](/_glossary/NODEJS.md) function while working for the browser by bundling up all the required dependencies. 

The idea behind Browserify is to make it possible to use existing libraries from [npm](/_glossary/NPM.md) even when writing code for the client side. To allow this, it goes through the code, request the required dependencies, then create a single file containing everything: both the dependencies and the code using them.
