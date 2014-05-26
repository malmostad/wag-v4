Web Application Guidelines v4
==============================

Those guidelines for The City of Malmö’s external web are available for reading at http://malmostad.github.io/wag-external-v4/. An overview of all available versions of the WAG for our external and intranet web service is available at http://malmostad.github.io/wag/.

## Editing the Guidelines
Content is written in markdown using the [kramdown](http://kramdown.rubyforge.org/syntax.html) dialect and the pages are found in the `pages` directory in the `gh-pages` branch. You can edit the pages in your web browser. Changes and new pages are queued for publishing when you save them and will most often be published immediately.

The publishing is using [GitHub Pages](https://pages.github.com/) witch is a hook that publish a [Jekyll](http://jekyll.io) site when something in the `gh-pages` branch is saved.

## Development and Extensive Editing

You need Ruby 2.x with bundler on your machine.

Checkout the `gh-pages`. To install Jekyll and the dependencies, run:

    $ bundle install

Create a feature branch you can work in without triggering immediate publishing. Merge the changes into the `gh-pages` branch and push to GitHub to publish your work.

The content pages are found in the `pages` directory.

When editing, run Jekyll and tell it to generate pages and assets when they are changed:

``` shell
$ jekyll serve --baseurl "" --watch
```

Go to [http://localhost:4000/](http://localhost:4000/)

The output is generated as a static site in the `_site` directory.


## Editing The Templates and the Navigation
The main template is found in `_layouts`. All includes including the navigation is in the `_includes` directory.


## Editing Sass and Coffeescript
**NOTE: These instructions are based on gh-pages v2 which are not released yet,
      in the meantime, use the isntructions on https://github.com/malmostad/wag**

There are a few asset files used for the WAG itself. The source is available in the `stylesheets` and `javascripts` directories. The files are compiled during editing if you have Jekyll running.


## Deploying After Changes
If you have edited Sass and Coffeescript files, run:

    $ ./build.sh

before committing and pushing your changes to GitHub. This will minify the JavaScript file that has med generated from CoffeeScript.


## Upgrade The Shared Assets
See the instructions in our [shared assets](https://github.com/malmostad/shared_assets) repository.

## License
Released under AGPL version 3.
