# Modernizr

[Modernizr](https://modernizr.com/) is a feature detection library to determine which html/css features are available
in the user's browser.

It is done by injecting specific classes on the document's body, so that the designer or the developer can treat the page
differently should a feature be not available in the browser.

For instance, if the browser does not support *CSS gradients*, Modernizr will inject the class `nocssgradients` in the
document's body. That way, the designer can create a rule that will set a regular background for non-supported browsers, like so:

```css
.nocssgradients .my-div {
  background: red;
}
```

Another example is if the user has disabled Javascript on the page, then Modernizr will inject a `nojs` style on the page.
The developer can then at start choose to display a popup message to require the user to enable Javascript in order to
use the application.
