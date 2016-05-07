---
title: Apache Cordova
excerpt: a popular mobile application development framework originally created by Nitobi
---

# PhoneGap

[Apache Cordova](http://phonegap.com/) (formerly **PhoneGap**) is a popular mobile application development framework originally created by Nitobi. Adobe Systems purchased Nitobi in 2011, rebranded it as PhoneGap, and later released an open source version of the software called Apache Cordova. Apache Cordova enables software programmers to build applications for mobile devices using JavaScript, HTML5, and CSS3, instead of relying on platform-specific APIs like those in Android, iOS, or Windows Phone. It enables wrapping up of CSS, HTML, and JavaScript code depending upon the platform of the device. It extends the features of HTML and JavaScript to work with the device. The resulting applications are hybrid, meaning that they are neither truly native mobile application (because all layout rendering is done via Web views instead of the platform’s native UI framework) nor purely Web-based (because they are not just Web apps, but are packaged as apps for distribution and have access to native device APIs). Mixing native and hybrid code snippets has been possible since version 1.9.

The software was previously called just “PhoneGap”, then “Apache Callback”. As open-source software, Apache Cordova allows wrappers around it, such as Intel XDK or Appery.io.

PhoneGap is Adobe’s productized version and ecosystem on top of Cordova. Like PhoneGap, many other tools and frameworks are also built on top of Cordova, including Ionic, the Intel XDK, Monaca, TACO, and the Telerik Platform. These tools use Cordova, and not PhoneGap for their core tools.

Contributors to the Apache Cordova project include Adobe, IBM, Google, Microsoft, Intel, BlackBerry, Mozilla, and others.

## History

First developed at an iPhoneDevCamp event in San Francisco, PhoneGap went on to win the People’s Choice Award at O’Reilly Media’s 2009 Web 2.0 Conference, and the framework has been used to develop many apps. Apple Inc. has confirmed that the framework has its approval, even with the new 4.0 developer license agreement changes. The PhoneGap framework is used by several mobile application platforms such as Asial’s Monaca, ViziApps, Worklight, Convertigo, and appMobi as the backbone of their mobile client development engine.

Adobe officially announced the acquisition of Nitobi Software (the original developer) on October 4, 2011. Coincident with that, the PhoneGap code was contributed to the Apache Software Foundation to start a new project called Apache Cordova. The project’s original name, Apache Callback, was viewed as too generic. Then it also appears in Adobe Systems as Adobe PhoneGap and also as Adobe Phonegap Build.

Early versions of PhoneGap required an Apple computer to create iOS apps and a Windows computer to create Windows Mobile apps. After September 2012, Adobe’s PhoneGap Build service allows programmers to upload HTML, CSS, and JavaScript source code to a “cloud compiler” that generates apps for every supported platform.

## Design and rationale

The core of Apache Cordova applications use HTML5 and CSS3 for their rendering and JavaScript for their logic. HTML5 now provides access to underlying hardware such as the accelerometer, camera, and GPS. However, browser support for HTML5-based device access is not consistent across mobile browsers, particularly older versions of Android. To overcome these limitations, Apache Cordova embeds HTML5 code inside a native WebView on the device, using a foreign function interface to access the native resources of the device.

Apache Cordova can be extended with native plug-ins that allow for developers to add functionality that can be called from JavaScript, allowing for direct communication between the native layer and the HTML5 page. Apache Cordova includes basic plugins that allow access to the device’s accelerometer, camera, microphone, compass, file system, and more.

However, the use of Web-based technologies leads some Apache Cordova applications to run slower than native applications with similar functionality. Adobe Systems warns that applications may be rejected by Apple for being too slow or not feeling “native” enough (having appearance and functionality consistent with what users have come to expect on the platform). This can be an issue for some Apache Cordova applications.

## Supported platforms

As of January 2016, Apache Cordova currently supports development for the operating systems Apple iOS, BlackBerry, Google Android, LG webOS, Microsoft Windows Phone (7 and 8), Nokia Symbian OS, Tizen (SDK 2.x), Bada, Firefox OS, and Ubuntu Touch. The table below is a list of supported features for each operating system.

| Feature | iPhone | Android | Windows Phone | BlackBerry OS | Bada | Symbian | Tizen |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Accelerometer | Yes | Yes | Yes | 5.0+ | Yes | Yes | Yes |
| Camera | Yes | Yes | Yes | 5.0+ | Yes | Yes | Yes |
| Compass | 3GS+ | Yes | Yes | 10+ | Yes | **N/A** | Yes |
| Contacts | Yes | Yes | Yes | 5.0+ | Yes | Yes | Yes |
| File | Yes | Yes | Yes | 5.0+ | Yes | **N/A** | Yes |
| Geolocation | Yes | Yes | Yes | Yes | Yes | Yes | Yes |
| Media | Yes | Yes | Yes | 10+ | **N/A** | **N/A** | Yes |
| Network | Yes | Yes | Yes | Yes | Yes | Yes | Yes |
| Notification | Yes | Yes | Yes | Yes | Yes | Yes | Yes |
| Storage | Yes | Yes | Yes | 5.0+ | **N/A** | Yes | Yes |

----------

*Source:*

- [Apache Cordova](https://en.wikipedia.org/wiki/Apache_Cordova)*. From Wikipedia, the free encyclopedia*
