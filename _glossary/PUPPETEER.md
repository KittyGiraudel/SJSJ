---
title: PhantomJS
excerpt: a scripted, headless browser used for automating web page interaction
---

# Puppeteer

[Puppeteer](http://phantomjs.org/) is a Node library which provides a high-level API to control headless Chrome or Chromium over the DevTools Protocol. It can also be configured to use full (non-headless) Chrome or Chromium.

## Use Cases

- Generate screenshots and PDFs of pages.
- Crawl a SPA and generate pre-rendered content (i.e. "SSR").
- Automate form submission, UI testing, keyboard input, etc.
- Create an up-to-date, automated testing environment. Run your tests directly in the latest version of Chrome using the latest JavaScript and browser features.


## Usage

Caution: Puppeteer requires at least Node v6.4.0, but the examples below use async/await which is only supported in Node v7.6.0 or greater.

Puppeteer will be familiar to people using other browser testing frameworks. You create an instance
of `Browser`, open pages, and then manipulate them with [Puppeteer's API](https://github.com/GoogleChrome/puppeteer/blob/master/docs/api.md#).

**Example** - navigating to https://example.com and saving a screenshot as *example.png*:

Save file as **example.js**

```js
const puppeteer = require('puppeteer');

(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('https://example.com');
  await page.screenshot({path: 'example.png'});

  await browser.close();
})();

## Why is the Chrome team building Puppeteer?

- Provide a slim, canonical library that highlights the capabilities of the [DevTools Protocol](https://chromedevtools.github.io/devtools-protocol/).
- Provide a reference implementation for similar testing libraries. Eventually, these other frameworks could adopt Puppeteer as their foundational layer.
- Grow the adoption of headless/automated browser testing.
- Help dogfood new DevTools Protocol features...and catch bugs!
- Learn more about the pain points of automated browser testing and help fill those gaps.
