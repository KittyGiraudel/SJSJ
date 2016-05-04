---
title: CORS
---

# CORS

[CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS) stands for Cross Origin Resource sharing. It’s a way for a server to allow pages hosted on other domains (technically other origins) to make http requests to it.

A web page can usually embed images, scripts, video, audio, etc. from any location it wants. However, web fonts and [AJAX](/glossary/AJAX.md) requests can usually only make requests to the same origin the web page is served from, because of the [same-origin policy](https://developer.mozilla.org/en-US/docs/Web/Security/Same-origin_policy). CORS allows a server to mark [resources](https://en.wikipedia.org/wiki/Web_resource) as shared with other origins, by sending an `Access-Control-Allow-Origin` [header](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers) in response to an [OPTIONS](http://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9.2) request from the browser.

For information on how to set this up on your server, refer to [this document](http://enable-cors.org/server.html).
