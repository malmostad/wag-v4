Web Application Guidelines v4
==============================

Those guidelines for The City of Malmö’s web applications are available for reading at https://malmostad.github.io/wag-v4/. An overview of all available versions of the WAG for our external and intranet web service is available at https://malmostad.github.io/wag/.

## Editing the Guidelines
Content is written in markdown using the [kramdown](http://kramdown.rubyforge.org/syntax.html) dialect and the pages are found in the `pages` directory in the `gh-pages` branch. You can edit the pages in your web browser. Changes and new pages are queued for publishing when you save them and will most often be published immediately.

The publishing is using [GitHub Pages](https://pages.github.com/) witch is a hook that publish a [Jekyll](http://jekyll.io) site when something in the `gh-pages` branch is saved.

## Development and Extensive Editing

You need Ruby 2.x with bundler on your machine.

Checkout the `gh-pages`. To install Jekyll and the dependencies, run:

    bundle install

Create a feature branch you can work in without triggering immediate publishing. Merge the changes into the `gh-pages` branch and push to GitHub to publish your work.

The content pages are found in the `pages` directory.

When editing, run Jekyll and tell it to generate pages and assets when they are changed:

    jekyll serve --baseurl ""

Go to [http://localhost:4000/](http://localhost:4000/)

The output is generated as a static site in the `_site` directory.


## Editing The Templates and the Navigation
The main template is found in `_layouts`. All includes including the navigation is in the `_includes` directory.


## Editing Sass and Coffeescript

There are a few asset files used for the WAG itself. The source is available in the `stylesheets`, `_sass` and `javascripts` directories. The files are compiled during editing if you have Jekyll running. Otherwise, run `jekyll build`.

## Build and Deploy

Push the gh-pages branch to Github and the site will automatically be deployed to https://malmostad.github.io/wag-v4/

## Upgrade The Shared Assets
See the instructions in our [shared assets](https://github.com/malmostad/shared_assets) repository.

## License
Released under AGPL version 3.
