# CORS

[CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS) stands for Cross Origin Resource sharing. It's a way for a server to allow pages hosted on other domains (technically other ogigins) to make http requests to it.

A web page can usually embed images, scripts, video, audio, etc. from any location it wants. However, web fonts and [AJAX](/glossary/AJAX.md) requests can usually only make requests to the same origin the web page is served from, because of the same-origin policy. CORS allows a server to mark resources as shared with other origins, by sending an `Access-Control-Allow-Origin` header in response to an OPTIONS request from the browser.
