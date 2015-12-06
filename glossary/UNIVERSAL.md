# Universal

A universal (or [isomorphic](ISOMORPHIC.md)) application is one whose code (in this case, JavaScript) can run both in the server and the client.

The underlying idea is to allow the server to render and handle routing of an application for non-JavaScript users, while also making it fully working in the browser for fast interactions without involving traditional page reloads.

In a universal application, the initial request made by the web browser is processed by the server while subsequent requests are processed by the client.
