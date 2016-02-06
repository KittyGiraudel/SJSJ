# localForage

**Offline storage, improved.**

[localForage](https://mozilla.github.io/localForage/#localforage) is a JavaScript library that improves the offline experience of your web app by using an asynchronous data store with a simple, `localStorage`-like API. It allows developers to store many types of data instead of just strings.

localForage includes a localStorage-backed fallback store for browsers with no IndexedDB or WebSQL support. Asynchronous storage is available in the current versions of all major browsers: Chrome, Firefox, IE, and Safari (including Safari Mobile).

**localForage offers a callback API as well as support for the** [ES6 Promises API](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Promise), so you can use whichever you prefer.

## Installation

To use localForage, [download the latest release](https://github.com/mozilla/localForage/releases) or install with npm:

```sh
$ npm install localforage
```

or bower:

```sh
$ bower install localforage
```

Then simply include the JS file and start using localForage:

```html
<script src="localforage.js"></script>.
```

You don’t need to run any init method or wait for any `onready` events.

## How to use localForage

### Callbacks

Because localForage uses async storage, it has an async API. It's otherwise exactly the same as the [localStorage API](https://hacks.mozilla.org/2009/06/localstorage/).

```js
// In localStorage, we would do:
var obj = { value: "hello world" };
localStorage.setItem('key', JSON.stringify(obj));
alert(obj.value);

// With localForage, we use callbacks:
localforage.setItem('key', obj, function(err, result) { alert(result.value); });
```

Similarly, please don't expect a return value from calls to `localforage.getItem()`. Instead, use a callback:

```js
// Synchronous; slower!
var value = JSON.parse(localStorage.getItem('key'));
alert(value);

// Async, fast, and non-blocking!
localforage.getItem('key', function(err, value) { alert(value) });
```

Callbacks in localForage are Node-style (error argument first) since version `0.9.3`. This means if you're using callbacks, your code should look like this:

```js
// Use err as your first argument.
localforage.getItem('key', function(err, value) {
    if (err) {
        console.error('Oh noes!');
    } else {
        alert(value);
    }
});
```

You can store any type in localForage; you aren't limited to strings like in localStorage. Even if localStorage is your storage backend, localForage automatically does `JSON.parse()` and `JSON.stringify()` when getting/setting values.

### Promises

Promises are pretty cool! If you'd rather use promises than callbacks, localForage supports that too:

```js
function doSomethingElse(value) {
    console.log(value);
}

// With localForage, we allow promises:
localforage.setItem('key', 'value').then(doSomethingElse);
```

When using Promises, `err` is **not** the first argument passed to a function. Instead, you handle an error with the rejection part of the Promise:

```js
// A full setItem() call with Promises.
localforage.setItem('key', 'value').then(function(value) {
    alert(value + ' was set!');
}, function(error) {
    console.error(error);
});
```

localForage relies on native [ES6 Promises](https://www.promisejs.org/), but [ships with an awesome polyfill](https://github.com/jakearchibald/es6-promise) for browsers that don't support ES6 Promises yet.

### Storing Blobs, TypedArrays, and other JS objects

localForage supports storing all native JS objects that can be serialized to JSON, as well as ArrayBuffers, Blobs, and TypedArrays. Check the [API docs](https://mozilla.github.io/localForage/#setitem) for a full list of types supported by localForage.

All types are supported in every storage backend, though storage limits in localStorage make storing many large Blobs impossible.

### Configuration

You can set database information with the `config()` method. Available options are `driver`, `name`, `storeName`, `version`, `size`, and `description`.

Example:

```js
localforage.config({
    driver      : localforage.WEBSQL, // Force WebSQL; same as using setDriver()
    name        : 'myApp',
    version     : 1.0,
    size        : 4980736, // Size of database, in bytes. WebSQL-only for now.
    storeName   : 'keyvaluepairs', // Should be alphanumeric, with underscores.
    description : 'some description'
});
```

**Note**: you must call `config()` before you interact with your data. This means calling `config()` before using `getItem()`, `setItem()`, `removeItem()`, `clear()`, `key()`, `keys()` or `length()`.

### Multiple instances

You can create multiple instances of localForage that point to different stores using `createInstance`. All the configuration options used by [`config`](https://github.com/mozilla/localForage#configuration) are supported.

```js
var store = localforage.createInstance({
  name: "nameHere"
});

var otherStore = localforage.createInstance({
  name: "otherName"
});

// Setting the key on one of these doesn't affect the other.
store.setItem("key", "value");
otherStore.setItem("key", "value2");
```

### RequireJS

You can use localForage with [RequireJS](http://requirejs.org/):

```js
define(['localforage'], function(localforage) {
    // As a callback:
    localforage.setItem('mykey', 'myvalue', console.log);

    // With a Promise:
    localforage.setItem('mykey', 'myvalue').then(console.log);
});
```

### Browserify and Webpack

localForage 1.3+ works with both Browserify and Webpack. If you're using an earlier version of localForage and are having issues with Browserify or Webpack, please upgrade to 1.3.0 or above.

If you're using localForage in your own build system (eg. browserify or webpack) make sure you have the [required plugins and transformers](https://github.com/mozilla/localForage/blob/master/package.json#L24) installed (eg. `$ npm install --save-dev babel-plugin-system-import-transformer`).

### Framework Support

If you use a framework listed, there's a localForage storage driver for the models in your framework so you can store data offline with localForage. We have drivers for the following frameworks:

- [AngularJS](https://github.com/ocombe/angular-localForage)
- [Backbone](https://github.com/mozilla/localForage-backbone)
- [Ember](https://github.com/genkgo/ember-localforage-adapter)

### Custom Drivers

You can create your own driver if you want; see the [`defineDriver`](https://mozilla.github.io/localForage/#definedriver) API docs.

There is a [list of custom drivers on the wiki](https://github.com/mozilla/localForage/wiki/Custom-Drivers).

----------

*Source:*

- [mozilla/localForage](https://github.com/mozilla/localForage)*. Official GitHub repo.*
- [localForage API Reference](https://mozilla.github.io/localForage/)*.*