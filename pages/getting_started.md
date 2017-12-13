---
layout: default
title:  Getting Started
permalink: /getting_started/
---

# {{ page.title }}

The term Global Assets refers to the JavaScript, stylesheet, web fonts and SVG icons that are share by all our external and internal (intranet) web applications. Global Asset files are served from a public available asset server, assets.malmo.se. Each application will likely have its own additional assets for application specific styling and functionality.


## Include the Global Assets In Your Application
To use the Global Assets, you need to include a stylesheet and a JavaScript file in your application as well as a favicon reference and a few conditional includes for legacy browsers. Be sure to use the HTML5 doctype and the `X-UA-Compatible` meta tag to get it all working.

The start of your HTML code should look like this for an external application:

{% highlight html %}
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'/>
    <meta content='width=device-width, initial-scale=1.0' name='viewport'/>
    <title>Låneregler – Malmö stad</title>
    <!--[if IE]><meta content='IE=edge' http-equiv='X-UA-Compatible'/><![endif]-->
    <!--[if lte IE 8]><script src='//assets.malmo.se/external/v4/html5shiv-printshiv.js' type='text/javascript'></script><![endif]-->
    <link href='//assets.malmo.se/external/v4/malmo.css' media='all' rel='stylesheet' type='text/css'/>
    <link rel='stylesheet' href='/your_own_javascript.css'>
    <!--[if lte IE 8]><link href='//assets.malmo.se/external/v4/legacy/ie8.css' media='all' rel='stylesheet' type='text/css'/><![endif]-->
    <noscript><link href="//assets.malmo.se/external/v4/icons.fallback.css" rel="stylesheet"></noscript>
    <link rel='icon' type='image/x-icon' href='//assets.malmo.se/external/v4/favicon.ico'/>
  </head>
  <body class="mf-v4">
  ...
{% endhighlight %}

For internal applications, change `/external/` to `/internal/` in the code above.

As you can see in the example, your own stylesheet should be added after the global stylesheet. Your own stylesheet contains everything your application needs that is not contained in the Global Assets. Application specific files are not deployed to the Global Asset server, those are served directly from your applications web server.

The `viewport` meta tag must be included to get a responsive application. You *must not* set the `maximum-scale` value in the `viewport` meta tag; it is not our business to decide if the user wants to zoom in or not on a narrow device.

JavaScript files should be included just before the end `body` tag:

{% highlight html %}
    ...
    <script src='//assets.malmo.se/external/v4/malmo.js'></script>
    <script src='/your_own_javascript.js'></script>
  </body>
</html>
{% endhighlight %}

For internal applications, change `/external/` to `/internal/` in the code above.

Place your own JavaScript file right after the global one as shown above.


## The Page Title
The `<title>` for a web page should have the following components in the given order:

1. The title of the page
1. A separator in form of an endash (–, `&#x2013;`) with a space on each side
1. "Malmö stad" as the suffix or "Komin" form internal applications.

This gives us "Låneregler – Malmö stad".


## Compliance Levels
There are three compliance levels:

1. Full compliance with the guidelines
1. Full compliance with the guidelines, except for forms
1. The application does only include the global masthead and footer

Compliance level 1 is required by web applications that are built for The City of Malmö.

If your web application can't reach full compliance, please contact webbteamet@malmo.se to discuss an exception. An exception must be made in the phase of procurement or at the beginning of a project.


### Compliance Level 2
Compliance Level 2 is for web applications with complex forms that cannot be adapted to use the markup structure specified in the *Forms* section. If you have an approved exception to use Compliance Level 2, follow the coding instructions in the *Forms* section. It is your responsibility as a vendor or consultant to ensure that the forms are responsive, accessible, nice looking and user friendly.


### Compliance Level 3
Compliance Level 3 is for web applications that for some reason can't be changed at all when it comes to the user interface. To qualify for this level, the application should not be a core service for The City of Malmö. Those applications will only include the global masthead and footer and Google Analytics tracking. If you have an approved exception to use Compliance Level 3, change:

1. `malmo.css` to `masthead_standalone.css`
1. `malmo.js` to `masthead_standalone.js`


## Alternativ Asset Bundles
If your application already includes the latest version of jQuery 1.x and you for some reason can't exclude it, change `malmo.js` to `malmo_without_jquery.js` or `masthead_standalone_without_jquery.js` for Compliance Level 3 applications.

## Optimize Your Own Assets
Your own stylesheets and JavaScript code must be concatenated into single files and then minified. If your application has files for older versions of Internet Explorer, include them in conditional comments.

You must serve your own assets with gzip/deflate compression from the web server with HTTP caching headers optimized.


## The Masthead and Footer
The masthead and the footer, as seen on this page, are automatically included on every page when you use the Global Assets. The `margin-top` on the `body` of your application must leave room for the masthead.

The masthead is responsive and you must set the `viewport` meta tag in your application for it to work (see above).

For an application, or a single view, that best utilizes the viewport's full height, such as our [map service](https://malmo.se/karta), it is possible to omit the global footer by adding a `no-footer` class to your `body` tag. Discuss with webbteamet@malmo.se first. The global masthead must always be present.


## Components Available in the Global Assets
The Global Assets are used by many applications and since they have a long life-cycle, we are cautious when it comes to include extensive UI components and frameworks in the bundle. If you have need for components not included, add them to your own code and be sure to maintain and update them.

jQuery version 1.11.x is included in the Global Assets.

Third party JavaScript components included can be seen in the `vendor` directory in the [Global Assets repository](https://github.com/malmostad/global_assets/) (see *Global Assets Internals* below).

The comment at the start of the `jquery-ui.custom.min.js` file in the vendor directory lists jQuery UI components included.

From Bootstrap v3, we have include forms, buttons, pagination and the dropdown. For details, see `bootstrap_custom.css.scss` in the `app/assets/stylesheets` directory.


## Sass Utilities

If you're using [Sass](http://sass-lang.com/)---which we encourage---for developing and building your application specific stylesheets, you should incorporate our shared Sass utilities we provide in the [Shared Assets](https://github.com/malmostad/shared_assets) repository. Common style variables such as colors and fonts are defined there and you get access to Sass mixins to create your [responsive grids]({{ site.baseurl }}/grids_and_responsive_design).

You should include `malmo_external.scss` or `malmo_internal.scss` respectively in your own main Sass file.

Information about using the Sass utilities in your own code is provided in the repository's readme.


## Google Analytics
Google Analytics tracking is included in the Global Assets and statistics are collected to The City of Malmö's account. This is important so we can analyze traffic and user behavior across all off our services. You *must not* initiate other Google Analytics accounts in your application.

If you need to do custom event tracking in your application, use your applications technical name as a prefix for the event names so we don't get Google Analytics events with colliding names.

To prevent data from your development, test and staging environments to be collected in our production GA account, add a `development`, `test` or `staging` class to the `body` tag. The data will then be collected in our test account.

{% highlight html %}
<body class='development'>
{% endhighlight %}

{% highlight html %}
<body class='test'>
{% endhighlight %}

{% highlight html %}
<body class='staging'>
{% endhighlight %}


## Global Assets Internals
The source code for the [Global Assets is available on Github](https://github.com/malmostad/global_assets). Check the release tags to see which version is deployed in production.
