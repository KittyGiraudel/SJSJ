---
title: PhantomJS
excerpt: a scripted, headless browser used for automating web page interaction
---

# PhantomJS

[PhantomJS](http://phantomjs.org/) is a headless WebKit scriptable with a JavaScript API. It has **fast** and **native** support for various web standards: DOM handling, CSS selectors, JSON, Canvas, and SVG.

## Use Cases

- **Headless web testing**. Lightning-fast testing without the browser is now possible! Various [test frameworks](http://phantomjs.org/headless-testing.html) such as [Jasmine](/_glossary/JASMINE.md), Capybara, [QUnit](/_glossary/QUNIT.md), [Mocha](/_glossary/MOCHA.md), WebDriver, YUI Test, BusterJS, FuncUnit, Robot Framework, and many others are supported.
- **Page automation.** [Access and manipulate](http://phantomjs.org/page-automation.html) web pages with the standard DOM API, or with usual libraries like [jQuery](/_glossary/JQUERY.md).
- **Screen capture.** Programmatically [capture web contents](http://phantomjs.org/screen-capture.html), including CSS, SVG and Canvas. Build server-side web graphics apps, from a screenshot service to a vector chart rasterizer.
- **Network monitoring.** Automate performance analysis, track [page loading](http://phantomjs.org/network-monitoring.html) and export as standard HAR format.

## Features

- **Multiplatform**, available on major operating systems: Windows, Mac OS X, Linux, and other Unices.
- **Fast and native implementation** of web standards: DOM, CSS, JavaScript, Canvas, and SVG. No emulation!
- **Pure headless (no X11) on Linux**, ideal for continuous integration systems. Also runs on Amazon EC2, Heroku, and Iron.io.
- **Easy to install**: [Download](http://phantomjs.org/download.html), unpack, and start having fun in just 5 minutes.

## PhantomJS usage

The PhantomJS JavaScript API can be used to open web pages, take screenshots, execute user actions, and run injected JavaScript in the page context. For example, the following code will open Wikipedia and, upon loading, will save a screenshot to a file and exit.

```js
console.log('Loading a web page');
var page = require('webpage').create();
var url = 'http://en.wikipedia.org/';
page.open(url, function (status) {
  console.log('Page loaded');
  page.render('wikipedia.org.png');
  phantom.exit();
});
```

<hr>

**PhantomJS** is created and maintained by [Ariya Hidayat](http://ariya.ofilabs.com/about) (Twitter: [@ariyahidayat](http://twitter.com/ariyahidayat)), with the help of [many contributors](https://github.com/ariya/phantomjs/contributors). Follow the official Twitter stream [@PhantomJS](http://twitter.com/PhantomJS) to get the frequent development updates.
