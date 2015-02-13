---
layout: default
title:  Navigation & Pagination
permalink: /navigation_and_pagination/
---

# {{ page.title }}

## Navigation

We do not use expanded tree navigation. Breadcrumbs (see below) are used to provide navigation to parent levels in an hierarchical structure and indicating the current position in a context.

In most cases, the navigation should be placed after the main content in markup order and be displayed below the main area on narrow devices and to the right on wider devices.

The use of tabs for navigation is not recommended.

### Content Navigation
This is the navigation we use on web pages and it contains the child pages of the currently displayed page. In a web application, it can be used to provide navigation to different sections of the application. More complex applications may need additional navigation such as in-view navigation and menus.

Use a relevant heading for the content navigation.

The view that is currently displayed is marked with a class name.

<div class="example">
  <nav class="content">
    <h1>Mer i detta ämne</h1>
    <ul>
      <li><a href="#">Avfall &amp; återvinning</a></li>
      <li><a href="#">Bostad &amp; närmiljö</a></li>
      <li class="current"><a href="#">Att göra hållbara val</a></li>
      <li><a href="#">Livsmedel</a></li>
      <li><a href="#">Miljöarbetet i Malmö stad som det är just nu</a></li>
      <li><a href="#">Miljöläget i Malmö</a></li>
    </ul>
  </nav>
</div>

{% highlight html %}
<nav class="content">
  <h1>Mer i detta ämne</h1>
  <ul>
    <li><a href="#">Avfall &amp; återvinning</a></li>
    <li><a href="#">Bostad &amp; närmiljö</a></li>
    <li class="current"><a href="#">Att göra hållbara val</a></li>
    <li><a href="#">Livsmedel</a></li>
    <li><a href="#">Miljöarbetet i Malmö stad som det är just nu</a></li>
    <li><a href="#">Miljöläget i Malmö</a></li>
  </ul>
</nav>
{% endhighlight %}

### Basic Navigation
The "basic" navigation works in the same way as the content navigation but is not so predominant in relation to the main content.

Use a relevant heading for the basic navigation.

<div class="example">
  <nav class="basic ">
    <h1>Här hittar du</h1>
    <ul>
      <li><a href="/">Alla inlägg</a></li>
      <li class="current"><a href="/bloggare">Bloggare</a></li>
      <li><a href="/kategorier">Kategorier</a></li>
      <li><a href="/etiketter">Etiketter</a></li>
      <li><a href="/arkiv">Arkiv</a></li>
    </ul>
  </nav>
</div>

{% highlight html %}
<nav class="basic ">
  <h1>Här hittar du</h1>
  <ul>
    <li><a href="/">Alla inlägg</a></li>
    <li class="current"><a href="/bloggare">Bloggare</a></li>
    <li><a href="/kategorier">Kategorier</a></li>
    <li><a href="/etiketter">Etiketter</a></li>
    <li><a href="/arkiv">Arkiv</a></li>
  </ul>
</nav>
{% endhighlight %}

### Breadcrumbs

Our breadcrumbs are used to indicating the position of a web page in hierarchical content and to display the name of a service we provide. All breadcrumbs are placed below the masthead.

The first position for external applications must always be "Start" (that is Swedish, literally) and must always be linked to http://www.malmo.se/, not to the single web application you provide.

For internal applications the first node most be "Komin" (the name of our Intranet) and must always be linked to http://komin.malmo.se/, not to the single web application you provide.

### Static Web Page Breadcrumbs

<div class="example">
  <nav class="breadcrumbs">
    <ol>
      <li><a href="http://www.malmo.se/">Start</a></li>
      <li><a href="/miljo-hallbarhet">Miljö &amp; hållbarhet</a></li>
      <li><a href="/bostad-narmiljo">Bostad &amp; närmiljö</a></li>
      <li>Hälsotillsyn</li>
    </ol>
  </nav>
</div>

{% highlight html %}
<nav class="breadcrumbs">
  <ol>
    <li><a href="/">Start</a></li>
    <li><a href="/miljo-hallbarhet">Miljö &amp; hållbarhet</a></li>
    <li><a href="/bostad-narmiljo">Bostad &amp; närmiljö</a></li>
    <li>Hälsotillsyn</li>
  </ol>
</nav>
{% endhighlight %}

### Web Application Breadcrumbs

The last position "Nyheter" is the name of the service in the example below. It is linked so the user easily can start over by clicking on it which is not meaningful on a static web page.

<div class="example">
  <nav class="breadcrumbs">
    <ol>
      <li><a href="http://komin.malmo.se/">Komin</a></li>
      <li><a href="/">Nyheter</a></li>
    </ol>
  </nav>
</div>

{% highlight html %}
<nav class="breadcrumbs">
  <ol>
    <li><a href="http://komin.malmo.se/">Komin</a></li>
    <li><a href="/">Nyheter</a></li>
  </ol>
</nav>
{% endhighlight %}


For a service with a hierarchical structure that doesn't provide a tailored navigation such as filtering, provide several levels in the breadcrumbs if it is meaningful for the user to navigate up and to make the context clear:

<div class="example">
  <nav class="breadcrumbs">
    <ol>
      <li><a href="http://www.malmo.se/">Start</a></li>
      <li><a href="/">Kundtjänst</a></li>
      <li><a href="/tickets">Mina ärenden</a></li>
      <li><a href="/archived-tickets">Avslutade ärenden</a></li>
    </ol>
  </nav>
</div>

{% highlight html %}
<nav class="breadcrumbs">
  <ol>
    <li><a href="http://www.malmo.se/">Start</a></li>
    <li><a href="/">Kundtjänst</a></li>
    <li><a href="/tickets">Mina ärenden</a></li>
    <li><a href="/archived-tickets">Avslutade ärenden</a></li>
  </ol>
</nav>
{% endhighlight %}

In this case, we have linked the last item so the user can get back to the overview of archived tickets if a single archived ticket i displayed. To add the full title of the currently displayed ticket in the breadcrumbs will just create a very long list that warps on several lines on narrow devices, so it is better to keep it in the view heading only.

### Web Application Breadcrumbs Related to Web Content
A web application, such as an e-service, might be closely related to one or several presentation pages on the static content web site. The web page, or pages, on the web site itself might have breadcrumbs with a significant depth in the hierarchical structure. Do **not** replicate the full row of breadcrumbs on the web application. There are two important reasons for this:

1. The web application might be presented and linked from several presentation web pages in different branches of the hierarchy. It is not always obvious witch on to use in the web application.
2. Page names, structure and therefor URLs are often changed on the presentation web site. Links in the web applications breadcrumbs will often break if you use the full hierarchical breadcrumb row.

If you establish an e-service with the name "Evenemangsbokning", ("Event booking"), use the following two node breadcrumb row:

<div class="example">
  <nav class="breadcrumbs">
    <ol>
      <li><a href="http://www.malmo.se/">Start</a></li>
      <li><a href="/">Evenemangsbokning</a></li>
    </ol>
  </nav>
</div>

{% highlight html %}
<nav class="breadcrumbs">
  <ol>
    <li><a href="http://www.malmo.se/">Start</a></li>
    <li><a href="/">Evenemangsbokning</a></li>
  </ol>
</nav>
{% endhighlight %}

## Pagination

### Load More and Infinite Scrolling
In many cases, it's best to load more results with an Ajax request triggered by a *Load more* button or with infinite scrolling using lazy loading.

<div class="example">
  <ul class="pagination">
    <li><a href="page=2" id="load-more">Load more</a></li>
  </ul>
</div>
{% highlight html %}
<ul class="pagination">
  <li><a href="page=2" id="load-more">Load more</a></li>
</ul>
{% endhighlight %}

### Classic Pagination
You can use Bootstrap v3's markup if you have classic pagination. For lists like search results, it is often best to return 50 items per page, not less, but sometimes more.

<div class="example">
  <ul class="pagination">
    <li class="previous"><a href="#">Previous</a></li>
    <li><a href="#">1</a></li>
    <li class="active"><span>2</span></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li class="next"><a href="#">Next</a></li>
  </ul>
</div>

{% highlight html %}
<ul class="pagination">
  <li class="previous"><a href="#">Previous</a></li>
  <li><a href="#">1</a></li>
  <li class="active"><span>2</span></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li class="next"><a href="#">Next</a></li>
</ul>
{% endhighlight %}

### Pager
We don't use Bootstraps markup for pagers for esthetic reasons. Use the same markup as for the pagination but limit it to the Previous/Next links.

<div class="example">
  <ul class="pagination">
    <li class="previous"><a href="#">Previous</a></li>
    <li class="next"><a href="#">Next</a></li>
  </ul>
</div>

{% highlight html %}
<ul class="pagination">
  <li class="previous"><a href="#">Previous</a></li>
  <li class="next"><a href="#">Next</a></li>
</ul>
{% endhighlight %}
