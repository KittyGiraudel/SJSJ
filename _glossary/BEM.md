---
title: BEM
description: a methodology and libraries developed and used at Yandex for building user interfaces
---

# BEM

[BEM](https://en.bem.info/) is a methodology and libraries developed and used at Yandex for building user interfaces.

Key concepts of methodology

 * Block: logically and functionally independent page component, encapsulates behavior (JavaScript), templates, styles (CSS), and other implementation technologies
 * Element: a constituent part of a block that can’t be used outside of it (For example, a menu item)
 * Modifier: defines the appearance and behavior of a block or an element

BEM methodology solves common frontend problems:

 1. Component approach (splitting interface into blocks).
 2. How to name things (in [code](https://en.bem.info/method/naming-convention/) and on [filesystem](https://en.bem.info/method/filesystem/)).
 3. How to reuse components (for JS/CSS and all other techs) — for example you can take [bem-core](https://github.com/bem/bem-core) library (a collection of common blocks and solutions).
 4. How to describe components behaviour — [i-bem.js](https://en.bem.info/technology/i-bem/) library that allows you describe a block logic in declarative style and keep it loosely coupled with others.
 5. How to generate HTML — declarative template engine [bem-xjst](https://github.com/bem/bem-xjst) for server and browsers.
 6. How to manage components dependencies and build project — [ENB](https://github.com/enb/enb) builder.
