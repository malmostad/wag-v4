---
layout: default
title:  Other Page Elements
permalink: /other_page_elements/
---

# {{ page.title }}


## Contact Us Box
When you provide contact information, use the `aside` box below with vCard/hCard microformats class names. The amount of address data might vary.

Note: Be sure to use the correct Swedish format for phone numbers so mobile devices have a chance to recognize them.

<div class="example">
  <aside class="contact-us vcard basic">
    <h1>Kontakta oss</h1>
    <div class="fn">Vägledningscentrum</div>
    <div>
      E-post:
      <span class="email">vagledningscentrum@malmo.se</span>
    </div>
    <div>
      Tel:
      <span class="tel">040-34 49 95</span>
    </div>

    <h2>Postadress</h2>
    <div class="adr">
      <div class="fn">Vägledningscentrum</div>
      <div class="post-office-box">Föreningsgatan 7A</div>
      <div>
        <span class="postal-code">211 44</span>
        <span class="locality">Malmö</span>
      </div>
    </div>

    <h2 class="visiting-address">Besöksadress</h2>
    <div class="street-address">Föreningsgatan 7A</div>
    <div>
      <a href="http://www.malmo.se/karta?poi=Föreningsgatan+7A&amp;zoomlevel=4&amp;maptype=karta"
          class="show-on-map m-icon-location"
          data-map-selector=".contact-us-map"
          data-scroll-to=".visiting-address"
          data-poi="Föreningsgatan 7A"
          title="Föreningsgatan 7A">
        Visa på karta
      </a>
    </div>
    <div class="contact-us-map"></div>
  </aside>
</div>

{% highlight html %}
<aside class="contact-us vcard basic">
  <h1>Kontakta oss</h1>
  <div class="fn">Vägledningscentrum</div>
  <div>
    E-post:
    <span class="email">vagledningscentrum@malmo.se</span>
  </div>
  <div>
    Tel:
    <span class="tel">040-34 49 95</span>
  </div>

  <h2>Postadress</h2>
  <div class="adr">
    <div class="fn">Vägledningscentrum</div>
    <div class="post-office-box">Föreningsgatan 7A</div>
    <div>
      <span class="postal-code">211 44</span>
      <span class="locality">Malmö</span>
    </div>
  </div>

  <h2 class="visiting-address">Besöksadress</h2>
  <div class="street-address">Föreningsgatan 7A</div>
  <div>
    <a href="http://www.malmo.se/karta?poi=Föreningsgatan+7A&amp;zoomlevel=4&amp;maptype=karta"
       class="show-on-map m-icon-location"
       data-map-selector=".contact-us-map"
       data-scroll-to=".visiting-address"
       data-poi="Föreningsgatan 7A"
       title="Föreningsgatan 7A">
      Visa på karta
    </a>
  </div>
  <div class="contact-us-map"></div>
</aside>
{% endhighlight %}


## Inline Maps and Links to Our Map Service

The "Visa på karta" (Show on map) link in the contact us box that creates an inline map can be used in other contexts as well. You do not have to provide additional scripts for it to work, just specify the following attributes in an `<a>` element:

`href` The URL that you can get by doing a manual address lookup at the [full map](http://malmo.se/karta) or programatically from our REST API, see the Autocomplete example in the [Forms]({{ site.baseurl}}/forms_buttons_and_messages) section. The address must be URL escaped.

`class="show-on-map"` Omit the `m-icon-location` above when the link is placed outside the Contact Us box.

`data-map-selector=".contact-us-map"` A valid CSS selector for the element where the map should be injected.

`data-scroll-to=".visiting-address"` Optional. If specified, the page will be scrolled to the top of this selector. The value of the `data-map-selector` selector will be used otherwise.

`data-poi="Föreningsgatan 7A"` Street address or another point of interest available in our map service. The address format must be exact and you can get it in the same way as with the `href` above (manually or from the REST API).

`title="Föreningsgatan 7A"` Use the same value as for the `data-poi` attribute.


## Boxes for Application Views
This box is suitable for grouping information in an application. It has an optional context help function and a context menu in the titlebar you can use by supplying the markup in the example.

This type of box *must not* be used in article content, see Article Boxes in the [Typography & Article]({{ site.baseurl}}/typography_and_pages).

<div class="example">
  <section class="box" contextmenu="feeds-news-menu" id="feeds-news">
    <h1 class="box-title">Open Tickets</h1>
    <div class="box-instructions">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing ...</p>
    </div>
    <div class="box-content body-copy">
      <p>Box with help and context menu.</p>
      <p>Suitable for dashboard usage.</p>
    </div>
    <button type="button" class="toggle-instructions" title="Show instructions">?</button>

    <div class="dropdown box-menu">
      <button type="button" class="dropdown-toggle" data-toggle="dropdown" id="feeds-news-menu" title="Adapt this box"></button>
      <menu class="dropdown-menu" aria-labelledby="feeds-news-menu" aria-hidden="true" role="menu">
        <li><a href="./" role="menuitem" tabindex="-1">Manage these feeds...</a></li>
        <li><a href="./" role="menuitem" tabindex="-1" data-confirm="Reset all feeds?" data-method="put">Reset feeds</a></li>
        <li><a href="./" role="menuitem" tabindex="-1">Configure...</a></li>
      </menu>
    </div>
  </section>
</div>

{% highlight html %}
<section class="box" contextmenu="feeds-news-menu" id="feeds-news">
  <h1 class="box-title">My Intranet News</h1>
  <div class="box-instructions">
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing ...</p>
  </div>
  <div class="box-content body-copy">
    <p>Box with help and context menu.</p>
    <p>Suitable for dashboard usage.</p>
  </div>
  <button type="button" class="toggle-instructions" title="Show instructions">?</button>

  <div class="dropdown box-menu">
    <button type="button" class="dropdown-toggle" data-toggle="dropdown" id="feeds-news-menu" title="Adapt this box"></button>
    <menu class="dropdown-menu" aria-labelledby="feeds-news-menu" aria-hidden="true" role="menu">
      <li><a href="./" role="menuitem" tabindex="-1">Manage these feeds...</a></li>
      <li><a href="./" role="menuitem" tabindex="-1" data-confirm="Reset all feeds?" data-method="put">Reset feeds</a></li>
      <li><a href="./" role="menuitem" tabindex="-1">Configure...</a></li>
    </menu>
  </div>
</section>
{% endhighlight %}

## Sharing Widget
Sharing icons will automatically be inject by the global assets on a page containing the tag below. You might need to adjust the margins around `.m-share` in your specific context. Leave some room for the widget to grow if more  services are added in the future.

<div class="example">
  <div class="m-share"></div>
</div>
{% highlight html %}
<div class="m-share"></div>
{% endhighlight %}

