---
title: Isomorphic
description: an application is said to be isomorphic (universal) when its code can run both in the client and the server
---

# Isomorphic

An isomorphic (or [preferably](https://medium.com/@mjackson/universal-javascript-4761051b7ae9) [universal](/_glossary/UNIVERSAL.md)) application is one whose code (in this case, JavaScript) can run both in the server and the client.

The underlying idea is to allow the server to render and handle routing of an application for non-JavaScript users, while also making it fully working in the browser for fast interactions without involving traditional page reloads.

In an isomorphic application, the initial request made by the web browser is processed by the server while subsequent requests are processed by the client.
