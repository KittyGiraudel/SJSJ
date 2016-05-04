---
title: Modernizr
description: a browser feature detection library, useful to modify page styles when a feature is not available in the browser
---

# Modernizr

[Modernizr](https://modernizr.com/) is a feature detection library to determine which HTML/CSS features are available in the user’s browser.

It is done by injecting specific classes on the document’s root element, so that the designer or the developer can treat the page differently should a feature not be available in the browser.

For instance, if the browser does not support *CSS gradients*, Modernizr will add the class `no-cssgradients` to the document’s root element. That way, it is possible to create a rule that will set a regular background for non-supported browsers, like so:

```css
.no-cssgradients .my-element {
  background-color: red;
}
```

Another example is if the user has disabled Javascript on the page, then Modernizr will inject a `no-js` style on the page. The design of the page can then be adapted based on the lack of JavaScript given how certain features are likely to be unavailable.
