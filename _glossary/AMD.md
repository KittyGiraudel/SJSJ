---
title: AMD
---

# AMD

[AMD](https://github.com/amdjs/amdjs-api/wiki/AMD) stands for Asynchronous Module Definition. It is an alternative to [CommonJS (CJS)](/glossary/COMMONJS.md) specification.

The API specifies a mechanism for defining modules such that the module and its dependencies can be asynchronously loaded. This is particularly well suited for the browser environment where synchronous loading of modules incurs performance, usability, debugging, and cross-domain access problems.

AMD libraries expose a global `define` function whose footprint is

```js
define(modulename?,[dependencyA?, dependencyB?, ...], function (objectA, objectB, ...) {
...
    var myExportedObj = function() {...}
    return myExportedObj;

});
```

Where

- `modulename` is an optional string parameter to explicitly declare the id of the current module
- `dependencyA`, `dependencyB` and so on, are the dependencies for the current module
- `function(objectA, objectB) {...}` is a factory whose arguments are the exported objects of each dependency.
- `myExportedObj` an optional return value (since a module might be just adding methods to an existing object) but, if declared, it would be this module's exported object, which other modules would get if they list `modulename` among their dependencies.

Aside from the global `define` function, an AMD compliant library must have a `define.amd` property whose value is an object. Checking for the existence of both `define` and `define.amd` in the global scope allows any script to verify it is being called from an AMD loader.

Examples of libraries providing AMD loading capabilities are:

- [RequireJS](/glossary/REQUIREJS.md) written by Mozilla’s [James Burke](https://github.com/jrburke/). One of the first ones to become widely used and still the most popular. It provides a limited interoperability with [CommonJS](/glossary/COMMONJS.md) modules too.
- [CurlJS](https://github.com/cujojs/curl) part of the [CujoJS Framework](http://cujojs.com/). CurlJS is less popular than RequireJS and is receiving only maintenance updates, no new features since 2014.
- [Alameda](https://github.com/requirejs/alameda) also made by James Burke, it's like RequireJS but using promises to manage the completion events.
- [Cajon](https://github.com/requirejs/cajon) also made by James Burke, it's like a decorator for RequireJS that replaces the `load` method to fetch dependencies through [AJAX](/glossary/AJAX.md) calls.
- [SystemJS](https://github.com/systemjs/systemjs) by [Guy Bedford](https://github.com/guybedford) who, until a couple of years ago, was one of the most active plugin developers for RequireJS. SystemJS can load AMD, CommonJS and [ES6](/glossary/ECMASCRIPT.md) modules seamlessly and is mostly used in combination with [jspm](http://jspm.io/), which acts as a dependency manager (not unlike [Bower](/glossary/BOWER.md)) leveraging in Github and [npm](/glossary/NPM.md).

All these libraries allow for the developer to preview a project without any build step, requesting the dependencies asynchronously. There’s usually an optional (but reccomended) build or bundling step for production deploys, in order to minify the code and minimize the number of requests in order to enhance load times. Allegedly, the coming of [HTTP2](https://http2.github.io/) support in browsers and webservers should eliminate the need for extra requests when loading dependencies asynchronously, thus eliminating the need of a build step.

Other libraries that can’t load dependencies asynchronously but can include AMD modules in their build workflow, are, for example:

- [Webpack](/glossary/WEBPACK.md)
- [Rollup](http://rollupjs.org/)
- [StealJS](http://stealjs.com/)
