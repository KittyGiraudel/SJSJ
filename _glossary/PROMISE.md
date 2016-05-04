---
title: Promise
description: a proxy for a value not necessarily known immediately but that will eventually be resolved
---

# Promise

A *Promise* represents a value that may not be available yet but will eventually be resolved at some point in the future. The point is to allow developers to write asynchronous code in a more synchronous fashion, escaping from the popular [callback hell](http://callbackhell.com/).

Promises are not fully supported in all browsers yet (see [support](http://caniuse.com/#feat=promises)), however a lot of libraries mimick their behavior to make them usable right away; [Bluebird](/_glossary/BLUEBIRD.md) is one of them.

For more information about how promises work and when to use them, there is [complete overview](http://robotlolita.me/2015/11/15/how-do-promises-work.html).
