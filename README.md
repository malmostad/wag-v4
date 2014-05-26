Web Application Guidelines v4
==============================

Those guidelines for The City of Malmö’s external web are available for reading at http://assets.malmo.se/wag/external/v4

## Editing the Guidelines
This repository contains the source for the guidelines. Content is written in [Jekyll](http://jekyll.io) with markdown using the [kramdown](http://kramdown.rubyforge.org/syntax.html) flavor.

Checkout the external-v4 branch. To install Jekyll and the dependencies, run:

``` shell
$ bundle install
```

The content pages are found in the `pages` directory.

When editing, run Jekyll and tell it to generate pages when they are changed:

``` shell
$ jekyll serve --baseurl "" --watch
```

Go to [http://localhost:4000/](http://localhost:4000/)

Commit all changes to Github.

## Publishing
Generate a new version for deployment:

``` shell
$ ./build.sh
```
The output is generated to the `_site` directory.


## Editing Sass and Coffeescript
There are a few asset files used for the WAG itself. The source is available in the `stylesheets` and `javascripts` directories. To compile during editing, start one or both of the following watchers:

``` shell
$ sass --watch stylesheets/application.scss
$ coffee -c -w javascripts/application.coffee
```

## License
Released under AGPL version 3.
