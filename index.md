---
layout: default
title: Web Application Guidelines, External v4
permalink: /
---

# Web Application Guidelines

Version 4 for The City of Malmö's external web
{:.preamble}

## Our Web Presence

The City of Malmö have a variety of seamlessly integrated services and a responsive user experience all the way from the home page, via the content pages, throughout the interaction in the services. Our web content, tools and services must work on all screen sizes and on all major devices.

We release early, release often and iterate over again to make it better. We build clean user interfaces, reuse successful interaction patterns others created and we try to keep things simple. We put the user in the first place. We do not use overlays to distract the user from performing a task. We base most of our development on open source and we provide our own applications as open source.

The Web Application Guidelines (WAG) explains how you make your web application a seamless part of our web presence and how you can take part in creating a superior web experience.


## Audience
Familiarize yourself with the guidelines if you:

* Are planning procurement of a web based system, it can be an existing product or a custom built solution.
* Are developing a new web based application.
* Are a vendor working with the introduction of a new system.
* Are adapting or updating an existing web based application.


## Scope & Limitation
The WAG describes how you use the global assets in an application to make it a consistent part of our web services from a user perspective independently of what technical platform it is built on. Server side development guidelines are not covered here. If you are developing an application based on Ruby on Rails, Wordpress or Drupal, check out our [repositories at Github](https://github.com/malmostad/) to see if you can fork or reuse an existing resource. Source code management---for both client and server side code---is covered below.


## Register Your Web Application
The first thing you must do when you start a project that will introduce a new web application at The City of Malmö, is to send webbteamet@malmo.se an email with a short description of the system, it's purpose and the name of the system administrator ("systemförvaltaren"). By doing this, we will be able to contact the system administrator when new versions of the global assets are available and before older versions will be deprecated.


## Source Code: License and Management
Source code developed for the City of Malmö---it could be a full system, an extension to a system or a component---will be open source licensed under [AGPL 3.0](http://www.gnu.org/licenses/agpl-3.0.txt) unless otherwise agreed in writing.

Before you start development, contact webbteamet@malmo.se and request access to a repository in the [City of Malmö's Github organization account](https://github.com/malmostad). Include Github usernames of the project members in the request.

The Github repository must be used during daily development and maintenance of the code. Each deployed release of the source code must be tagged in your repository. Use [Semantic Versioning 2](http://semver.org/) for your release tags starting with a lowercase `v`, e.g. `v2.15.3`.


## Browser Support
See our [list of devices and browsers](http://malmo.se/wag) that web based services must support.


## Reference Applications
There's always many aspects of a subject that can't be covered in guidelines. It requires skills and experience to build a user interface that is easy to use and looks good and to adapt guidelines in a good way. It will help checking out the following web applications that are using global assets v4. You will see how the guidelines are applied in the real world and how the different parts comes together.

* [Site search](http://s1.malmo.se/?q=bibliotek) ([source code](https://github.com/malmostad/sitesearch))
* [Hitta & jämför äldreboenden](http://webapps05.malmo.se/aldreboenden) ([source code](https://github.com/malmostad/nursing-homes))
* [Blogg](http://malmo.se/blogg) ([source code](https://github.com/malmostad/wp-apps/tree/master/wp-content/themes/external-blogg))
* [CMS web site](http://malmo.se/)
* WAG v4, that is this documentation itself ([source code](https://github.com/malmostad/wag-external-v4)).
* [Prototype pages](http://webapps07.malmo.se/juni2014) ([source code](https://github.com/malmostad/juni2014))
