# Simplified JavaScript Jargon

*Simplified JavaScript Jargon* (short *SJSJ*) is a community-driven attempt at explaining the loads of buzzwords making the current JavaScript ecosystem in a few simple words. The idea is not to replace individual documentations, but to act as some kind of glossary that can be easily referrenced.

If you are willing to contribute, open a pull request to complete, update or fill in a section. Thank you for doing so!

## AngularJS

[AngularJS](https://angularjs.org/) is a structural framework for dynamic web apps. It lets developers use HTML as their template language and lets them extend HTML’s syntax to express their application’s components clearly and succinctly.

Angular’s data binding and dependency injection eliminate much of the code developers would otherwise have to write. And it all happens within the browser, making it an ideal partner with any server technology.

## Babel

[Babel](https://babeljs.io/) (formerly *6to5*) is essentially an [ECMAScript](#ecmascript-es) 6 and beyond transpiler. It means that it is a program that translates future’s JavaScript into today’s widely understood (by browsers) JavaScript. The idea behind such a tool is to allow developers to write their code using ECMAScript new features while still making it work in current browsers (and past) browsers.

As of version 6, Babel also intends to be a platform, a suite of tools designed to create the next generation of JavaScript tooling. This means Babel is also supposed to power minifiers, linters, formatters, syntax highlighters, code completion tools, type checkers, codemod tools, and every other tool to be using the same foundation to do their job better than ever before.

## Backbone

[Backbone.js](http://backbonejs.org/) is a framework giving structure to web applications by providing models with key-value binding and custom events, collections with a rich API of enumerable functions, views with declarative event handling, and connects it all to existing APIs over a RESTful JSON interface.

## Bluebird

[Bluebird](https://github.com/petkaantonov/bluebird) section to be completed.

## Bower

[Bower](http://bower.io/) is a package manager for front-end dependencies. It takes care of hunting, finding, downloading, saving these dependencies and keeping track of them in a manifest file called `bower.json`. Bower uses a flat dependency tree, requiring only one version for each package, reducing page load to a minimum.

## Broccoli

[Broccoli](https://github.com/broccolijs/broccoli) is a fast, reliable asset pipeline, supporting constant-time rebuilds and compact build definitions. Comparable to the [Rails](http://rubyonrails.org/) asset pipeline in scope, though it runs on [Node.js](#nodejs) and is backend-agnostic.

## Browserify

[Browserify](http://browserify.org/) is a tool that allows you to use the [require](https://nodejs.org/api/modules.html) [Node.js](#nodejs) function while working for the browser by bundling up all the required dependencies.

The idea behind Browserify is to make it possible to use existing libraries from [npm](#npm) even when writing code for the client side. To allow this, it goes through the code, request the required dependencies, then create a single file containing everything: both the dependencies and the code using them.

## Browsersync

[Browsersync](http://www.browsersync.io/) section to be completed.

## Brunch

[Brunch](http://brunch.io/) is a builder. Not a generic task runner, but a specialized tool focusing on the production of a small number of deployment-ready files from a large number of heterogenous development files or trees.

Brunch is fundamentally specialized and geared towards building assets, these files that get used in the end by the runtime platform, usually a web browser. It thus comes pre-equipped with a number of behaviors and features such as concatenation, minification and watching of source files.

## Chai

[Chai](http://chaijs.com/) section to be completed.

## CoffeeScript

[CoffeeScript](http://coffeescript.org/) is a little language that compiles into JavaScript. It is an attempt to expose the good parts of JavaScript in a simple way and friendly syntax, the golden rule being: “It’s just JavaScript”.

The code compiles one-to-one into the equivalent JS, and there is no interpretation at runtime. The compiled output is readable and pretty-printed, will work in every JavaScript runtime, and tends to run as fast or faster than the equivalent handwritten JavaScript.

## Compass

[Compass](http://compass-style.org/) section to be completed.

## CouchDB

[CouchDB](http://couchdb.apache.org/) section to be completed.

## D3.js

[D3.js](http://d3js.org/) is a library for manipulating documents based on data. D3 helps bringing data to life using HTML, SVG, and CSS. Its emphasis on web standards gives the full capabilities of modern browsers without tying to a proprietary framework, combining powerful visualization components and a data-driven approach to DOM manipulation.

## ECMAScript (ES)

[ECMAScript](http://www.ecmascript.org/) (shortened as *ES*) is the standardized specification of the scripting language used by JavaScript, as well as less known languages JScript and ActionScript.

The versioning convention of ECMAScript has been the subject of hot debates. We often refer to ES5 (understood by most browsers), ES6 (the future of JavaScript) and even ES7 (the far future of JavaScript), but the official appelation for ES6 would actually be ES2015. The intention is to publish a version of the specification a year, making the language evolve quicker than ever. Still, most developers use ES5 and ES6 terms.

## Ember

[Ember](http://emberjs.com/) section to be completed.

## Express

[Express](http://expressjs.com/en/index.html) is a fast, unopinionated, minimalist web framework for [Node.js](#nodejs). Express provides a thin layer of fundamental web application features, without obscuring Node.js features that developers already know and like. The myriad of HTTP utility methods and middleware provided by Express makes creating a robust API quick and easy.

## Falcor

[Falcor](http://netflix.github.io/falcor/) section to be completed.

## Flux

[Flux](https://facebook.github.io/flux/) is an application structure that is developed and used at Facebook to complement [React](#react)’s one-way data flow. With Flux, application state and logic are contained in stores.

## Grunt

[Grunt](http://gruntjs.com/) is a task runner aiming at automating tedious and possibly complex tasks. The idea behind Grunt (and its peer [Gulp](#gulp)) is to define tasks that perform (usually file-based) actions. These tasks can then be run through the command line or as part of another build step.

## Gulp

[Gulp](http://gulpjs.com/) is a task runner aiming at automating tedious and possibly complex tasks. The idea behind Gulp (and its peer [Grunt](#grunt)) is to define tasks that perform (usually file-based) actions. These tasks can then be run through the command line or as part of another build step.

Gulp also owes its success to its very large ecosystem of plugins, making it easy to perform everyday’s tasks without having to write much code.

## Hapi

[Hapi](http://hapijs.com/) section to be completed.

## Jasmine

[Jasmine](http://jasmine.github.io/) section to be completed.

## jQuery

[jQuery](https://jquery.com/) is a fast, small, and feature-rich JavaScript library. It makes things like HTML document traversal and manipulation, event handling, animation, and Ajax much simpler with an easy-to-use API that works across a multitude of browsers. With a combination of versatility and extensibility, jQuery has changed the way that millions of people write JavaScript.

## Knockout

[Knockout](http://knockoutjs.com/) (shortened as *KO*) is a JavaScript library that helps developers creating rich, responsive display and editor user interfaces with a clean underlying data model. Knockout helps implementing sections of UI that update dynamically (e.g. changes depending on user’s actions or when external data source gets updated) more simply and maintainably.

## LESS

[LESS](http://lesscss.org/) section to be completed.

## LevelDB

[LevelDB](http://leveldb.org/) section to be completed.

## localForage

[localForage](http://mozilla.github.io/localForage/) section to be completed.

## LoDash

[LoDash](https://lodash.com/) section to be completed.

## Meteor

[Meteor](https://www.meteor.com/) section to be completed.

## Mocha

[Mocha](http://mochajs.org/) section to be completed.

## Moment

[Moment](http://momentjs.com/) section to be completed.

## MongoDB

[MongoDB](https://www.mongodb.org/) section to be completed.

## MooTools

[MooTools](http://mootools.net/) section to be completed.

## nib

[nib](http://tj.github.io/nib/) section to be completed.

## Node.js

[Node.js](https://nodejs.org/en/) is an open-source, cross-platform runtime environment for developing server-side web applications built on Chrome’s [V8](#v8) JavaScript engine. These applications are written in JavaScript and can be run within the Node.js runtime.

Node.js uses an event-driven, non-blocking I/O (input/output) model that makes it lightweight and efficient as well as optimized for real-time web applications’ throughput and scalability.

Its work is hosted and supported by the [Node.js Foundation](https://nodejs.org/en/foundation/), a collaborative project at Linux Foundation.

## npm

[npm](https://www.npmjs.com/) is utility to help publishing packages to, and installing from, an npm repository. The repository npmjs.com is the best known, and contains many useful community written and tested packages.

## nvm

[nvm](https://github.com/creationix/nvm/blob/master/README.markdown) is a utility to help run multiple versions of [Node.js](#nodejs) (and its branches) on the same machine. It can install, list, and choose versions. It is analagous to [RVM](https://rvm.io/) (Ruby Version Manager).

## PhantomJS

[PhantomJS](http://phantomjs.org/) section to be completed.

## PhoneGap

[PhoneGap](http://phonegap.com/) section to be completed.

## Polymer

[Polymer](https://www.polymer-project.org) section to be completed.

## PostCSS

[PostCSS](https://github.com/postcss/postcss) section to be completed.

## PouchDB

[PouchDB](http://pouchdb.com/) section to be completed.

## React

[React](https://facebook.github.io/react/) is a library developed and used at Facebook for building user interfaces. It can be seen as the V in MVC (Model View Controller) as it makes no assumptions about the rest of the technology stack. Using [React Native](#react-native) it can even be used to power native apps.

In React you can write HTML directly in JS using an XML-like syntax called JSX. JSX compiles to JS and is optional, but does make the code more expressive.

Data flow in React is one-way which makes it easier to reason about and avoid mistakes. This quality can be enhanced using [Flux](#flux), Facebook’s complementary application architecture, or [Redux](#redux) which many people see as a “better Flux”.

## React Native

[React Native](https://facebook.github.io/react-native/) section to be completed.

## Redux

[Redux](http://redux.js.org/) is a predictable state container for JavaScript apps, which is a fancy way of saying it controls application state and state mutations. It does so by keeping state in a store, which is the single source of truth.

Redux is an alternative to [Flux](#flux) and used a lot together with [React](#react), but you can use it with any other view library.

## RequireJS

[RequireJS](http://requirejs.org/) section to be completed.

## RxJS

[RxJS](http://reactivex.io/) section to be completed.

## SASS

[SASS](http://sass-lang.com/) section to be completed.

## Spidermonkey

[Spidermonkey](https://en.wikipedia.org/wiki/SpiderMonkey_(software)) section to be completed.

## Stylus

[Stylus](https://learnboost.github.io/stylus/) section to be completed.

## TypeScript

[TypeScript](http://www.typescriptlang.org/) is a super-set of the JavaScript language that introduces types (plus interfaces and new JavaScript features). It allows type-checking during development time with supported editors such as [Visual Studio](https://code.visualstudio.com/). The compiler requires information about the “shape” of a module in a _type-definition-file_.

## Underscore

[Underscore](http://underscorejs.org/) section to be completed.

## Yeoman

[Yeoman](http://yeoman.io/) is both a generator builder and an ecosystem. A generator is basically a plugin which will generate files based on user input. Plugins can be run with the `yo` command to scaffold complete projects or useful parts.

Therefore, the goal of a Yeoman generator is usually (but not necessarily) to speed up the setup and installation process of a project or part of a project by packaging it inside a module that can be configured through a question/reply workflow from the command line.

## V8

[V8](https://code.google.com/p/v8/) section to be completed.

## Velocity

[Velocity](http://julian.com/research/velocity/) section to be completed.

## virtual dom

[virtual-dom](https://github.com/Matt-Esch/virtual-dom) section to be completed.

## Webkit

[Webkit](https://webkit.org/) section to be completed.

## Webpack

[Webpack](https://github.com/webpack/webpack) helps you managing dependencies in your project, and also offers a friendly and fast development environment, simplifying a lot of common tasks behind a simple configuration file. It also allows you to bundle your modules into static assets for browsers. Its killer feature is the known as [hot module replacement](https://github.com/webpack/docs/wiki/hot-module-replacement-with-webpack), which lets your live code in the browser update automatically as you change files in your preferred editor without a page reload.
