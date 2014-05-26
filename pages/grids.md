---
layout: default
title:  Grids and Responsive Design
permalink: /grids_and_responsive_design/
---

# {{ page.title }}

Global assets v4 is tailored for web applications with a responsive user interface, i.e. RWD applications. To use global assets v4, your application should fall into one of three categories:

1. It is already responsive
2. It is about to be developed with a responsive user interface
3. It is about to be enhanced to have a responsive user interface

Use the following recommendations if your application falls into category 2 or 3.


## Creating Responsive Design for The City of Malmö

We use page and box grids based on twelve columns. Each area is dived into twelve columns available for boxes to span over. This gives you a good flexibility to easily arrange the page content in a consistent way and to apply different grids for different device widths using breakpoints with CSS media queries.

Some common grids---at a given viewport width---have rows with boxes spanning over 3-6-3, 4-4-4, 8-4, 6-6 or 12 columns. If your approach is mobile first, you will probably start with boxes spaning over all 12 columns and transform to e.g. a 6-6 grid and then 3-6-3 above certain breakpoints. A desktop first approach will go the other way around. See code examples below.

Do not put the grid formatting---or any other styling---in the markup with class names like `cols-4`. Use semantic class names and elements in the markup and use CSS to create the grid and media queries to make it responsive as seen below.

We encourage that you use the `columns()` mixin from our Sass utilities (see  *Getting Started*) to easily create responsive grids and sub-grids.

The live example grid below shows---from a mobile first approach---how all three boxes spans over 12 columns (12, 12 and 12). When the viewport gets wider than `40em`, the `article` and `nav` spans over 6 columns each and the `aside` still spans over 12 columns (6-6 and 12). Above `50em` the `article` still spans over 6 columns but the `nav` and `aside` spans over 3 columns each (6-3-3).

If your approach is desktop first, start with the horizontal layout and apply media queries when the width gets below the breakpoints.


<div class="example">
  <div class="grid-example">
    <article>Article</article>
    <nav>Nav</nav>
    <aside>Aside</aside>
  </div>
</div>

{% highlight html %}
<div class="grid-example">
  <article>Article</article>
  <nav>Nav</nav>
  <aside>Aside</aside>
</div>
{% endhighlight %}


{% highlight scss %}
article, nav, aside {
  @include columns(12);
}
@media (min-width: 40em) {
  article {
    @include columns(6);
  }
  nav {
    @include columns(6, true);
  }
  aside {
    @include columns(12);
  }
}
@media (min-width: 50em) {
  article {
    @include columns(6);
  }
  nav {
    @include columns(3);
  }
  aside {
    @include columns(3, true);
  }
}
{% endhighlight %}

The first argument for the `columns()` Sass mixin is an integer that specifies the number of columns that the block should span over.

The second argument is boolean and specifies if the column should be the last in the row, no gutter to the right is added then. Defaults to `false`. Forced to `true` if the first argument is `12`.

The third argument is the gutter given in percentage of the total block width. Defaults to `2%`.

## Page Width
The maximal width of the views in a web application should be set based on the content it contains: A page with article content should e.g. have a maximum page width that makes the text line length optimized for readability. Our map service is using 100% of the device width. Check out the reference applications in the *Getting Started* section for different grids and page widths.

## Sub Grids
Use the same concept, and the same code, as you do for page grids to create sub-grids within a block on a gird. The bottom of the article box in the example above can be divided into two sub columns using `columns(6)`. It would typically be have `columns(12)` on narrow devices.
