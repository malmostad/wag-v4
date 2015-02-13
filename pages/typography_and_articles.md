---
layout: default
title:  Typography & Articles
permalink: /typography_and_articles/
---

# {{ page.title }}

Stylesheets in the Global Assets includes styling for a basic set of elements in article content, tables and forms. For elements not listed in the WAG, you will have to set the styling yourself based on the guidelines and examples below.

## Typefaces
The serif typeface [Georgia](http://en.wikipedia.org/wiki/Georgia_(typeface)) is used for body copy and headings in articles. The sans serif typeface [Open Sans](http://en.wikipedia.org/wiki/Open_Sans) is used for menus, navigation, tables, captions, preambles and short pieces of text. The web fonts for Open Sans are loaded from the assets server automatically when you include the Global Assets in your code. Use the full `font-family` declarations with backup families found in the [Sass variable file](https://github.com/malmostad/shared_assets/blob/master/stylesheets/shared/variables.scss).

## Font Size
Font sizes should be specified with relative units, i.e. `em` or `%`. You must respect the user device and leave the font size for the `body` element to 100%. Text styling included in the assets, e.g. article content (below) and tables are based on this.

An exception to this rule is the font size in forms that are set in absolute units using `px`. The reason for this is that we use Bootstrap for forms and it is difficult to get it to work with relative sizes.

### Size for Individual Content Types
Type and size will automatically be applied for your body copy content, navigation and forms. The table below is a reference to make it possible to apply consistent typography for elements not covered in the Global Assets.

|:-------------------------------------------------------|:-----------------|:-----------|:-------------|
| Content Type                                           | Size/Line Height | Typeface   | Weight/Style |
| ------------------------------------------------------ | ---------------- | ---------  | ------------ |
| Article body copy                                      | 17/25            | Georgia    | Normal       |
| Article h1                                             | 36/40            | Georgia    | Normal       |
| Article h2                                             | 24/29            | Georgia    | Normal       |
| Article h3                                             | 17/25            | Georgia    | Bold         |
| Article h4                                             | 17/25            | Georgia    | Italic       |
| Article preambles                                      | 16/21            | Open Sans  | Normal       |
| Extract from article content                           | 15/21            | Georgia    | Normal       |
| Data tables                                            | 14/19            | Open Sans | Normal       |
| Data table heading                                     | 14/19            | Open Sans  | Bold         |
| Menus and navigation                                   | 14               | Open Sans  | Normal       |
| Very short pieces of text, e.g. date or a photo byline | 12               | Open Sans  | Normal       |
| Headings for boxes                                     | 16               | Open Sans  | Normal       |
| Forms                                                  | 14               | Open Sans  | Normal       |
| ------------------------------------------------------ | ---------------- | ---------  | ------------ |
{:.full.wrap}

As you can see in the table above, the sans serif is set in 16, 14 and, in very rare cases, 12px. The serif is set in 36, 24, 17, and for short text 15px. The first and second level headings are adjusted to a smaller sizes for narrow devices under certain breakpoints.

Note: This is the sizes in pixels that the text will be *rendered* in under the circumstances mentioned above, the sizes should be *specified* in relative sizes. "Pixels" is a simplified term given the many variants on screen rendering methods available.

## Text Color
Black text on white background.

## Article Content
The `body-copy` class in a container is used for article content to get headings, paragraphs and lists styled. Apart from the `preamble` class seen in the first paragraph below, you can rely on element tags only.

<div class="example">
  <article class="body-copy">
    <h1>Article Heading</h1>

    <p class="preamble">
      Preamble, sed ad homero similique. Et has everti oportere
      adversarium, epicuri singulis persequeris ea qui, dissentiet
      philosophia eu est. Animal aeterno minimum id nam, eos ex omnes
      debitis interpretaris. Possim timeam nec te. Alia enim ex usu, in
      mazim consul duo.
    </p>

    <img src="{{site.baseurl}}/images/lime.jpg" alt="Lime fruits" class="full"/>
    <p class="caption">Caption text for lime ipsum ius primis laboramus solet inciderint.</p>

    <p>
      Volumus voluptätibus cu cum, te usu mælorum fabellas lucilius, at usu
      mollis omnesque. Per deträxit repudiåre ei, åt vim eligendi
      inciderint. Ei sit fugit exerci äudiam, et qui magnæ delenit! Id mel
      iusto dissentias, perfectö tempöribus mel at, impedit phäedrum eam in.
      Debitis petentium his ei, ea per civibus pericula.
    </p>

    <h2>Heading Level Two</h2>
    <p>
      Possum intellegåm pri ei, eu atqui corpora ius. Doming målorum
      discere id pro, æd iracundiå suscipiåntur mel? Tritæni feugiæt an per,
      cum quod utinam labore in? Usu id errem nostrud reprimique. Ex legimus
      sensibus sed. Nihil congue legendos sit eu, sit primis.
    </p>

    <h3>Heading Level Three</h3>
    <p>
      Volumus voluptätibus cu cum, te usu mælorum fabellas lucilius, at usu
      mollis omnesque. Per deträxit repudiåre ei, åt vim eligendi
      inciderint. Ei sit fugit exerci äudiam, et qui magnæ delenit! Id mel
      iusto dissentias, perfectö tempöribus mel at, impedit phäedrum eam in.
      Debitis petentium his ei, ea per civibus pericula.
    </p>

    <h4>Heading Level Four</h4>
    <p>
      Duo åd magnä ænimæl sälutændi. Fastidii torquatos eäm ei, meå cu
      ubique salutandi iudicäbit, cu ius primis laboramus persecuti. Graece
      håbemus scåevola eæm ut. Cu solet inciderint vel, eos denique ålbucius
      petentium te. Homero vidisse civibus no seå.
    </p>

    <ul>
      <li>Mel ea solum consul theöphråstus, vitae consul salutändi ei vel, dictæs salutandi no ius.</li>
      <li>Ludus quäestiö eu qui, än unum äperiam vis. His äd vidisse scripta suscipiantur. Est dictas percipit æn.</li>
      <li>Mel eu dölöre pöstea scæevölå, söluta låbore.</li>
    </ul>

    <ol>
      <li>Utroque quo eu. Tötä appareat eloquentiæm est an.</li>
      <li>Ludus quäestiö eu qui, än unum äperiam vis. His äd vidisse scripta suscipiantur. Est dictas percipit æn.</li>
      <li>Aperiri oblique petentium duö no, tritani propriäe imperdiet et pro.</li>
      <li>Prö cibo idque cu. Opörtere disputändo neglegentur duo id?</li>
    </ol>

    <p>
      Duo åd magnä ænimæl sälutændi. Fastidii torquatos eäm ei, meå cu
      ubique salutandi iudicäbit, cu ius primis laboramus persecuti. Graece
      håbemus scåevola eæm ut. Cu solet inciderint vel, eos denique ålbucius
      petentium te. Homero vidisse civibus no seå.
    </p>
  </article>
</div>

{% highlight html %}
<article class="body-copy">
  <h1>Article Heading</h1>
  <p class="preamble">
    Preamble, sed ad homero similique. Et has everti oportere...
  </p>

  <img src="{{site.baseurl}}/images/lime.jpg" alt="Lime fruits" class="full"/>
  <p class="caption">Caption text for lime ipsum ius primis laboramus solet inciderint.</p>

  <p>
    Volumus voluptätibus cu cum, te usu mælorum fabellas lucilius, at usu...
  </p>

  <h2>Heading Level Two</h2>
  <p>
    Possum intellegåm pri ei, eu atqui corpora ius. Doming målorum...
  </p>

  <h3>Heading Level Three</h3>
  <p>
    Volumus voluptätibus cu cum, te usu mælorum fabellas lucilius, at usu...
  </p>

  <h4>Heading Level Four</h4>
  <p>
    Duo åd magnä ænimæl sälutændi. Fastidii torquatos eäm ei, meå cu...
  </p>
  <ul>
    <li>Mel ea solum consul theöphråstus, vitae consul salutändi...</li>
  </ul>
  <ol>
    <li>Utroque quo eu. Tötä appareat eloquentiæm est an...</li>
  </ol>
  <p>
    Duo åd magnä ænimæl sälutændi. Fastidii torquatos eäm ei, meå cu...
  </p>
</article>
{%  endhighlight %}

If you have just one single element that should be styled as body copy, you can add the `body-copy` class direct to the element instead of creating a full `<article class="body-copy">` wrapper around it. This works for headings and paragraphs and is applied like this:

<div class="example">
  <h1 class="body-copy">Heading For a Page</h1>
</div>


{% highlight html %}
<h1 class="body-copy">Heading For a Page</h1>
{%  endhighlight %}


## Images
Most article images works best on full width as in the example above. We are floating images on wider devices in some cases, e.g. on our [Blog](http://malmo.se/blogg) posts. Use the classes `primary` and `secondary` on article images for those two cases. Secondary images will display on full article width up to a certain breakpoint when they are changing to float to the right.

Use the caption markup as seen in the example above.


## Article Boxes
A box suitable for related content. It is used for *Facts* and a list of *Read more* links. Do not fill up the box with article content, use standard body copy for that. File downloads are most often not the best way to communicate online, but if you just have to do it, put them in a Downloads box.

Note: For boxes used elsewhere, i.e. not in articles, see the [Other Page Elements]({{ site.baseurl }}/other_page_elements) section.

<div class="example">
  <article class="body-copy">
    <p>This is standard article body copy. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    tempor incididunt ut labore et dolore .</p>

    <section class="box related">
      <h1 class="box-title">Facts</h1>
      <div class="box-content">
        <p>
          Cu ius primis laboramus persecuti. Graece
          håbemus scåevola eæm ut. Cu solet inciderint vel, eos denique ålbucius
          petentium te. Homero vidisse civibus no seå.
        </p>
        <p>
          Duo åd magnä ænimæl sälutændi. Fastidii torquatos eäm ei, meå cu
          ubique salutandi iudicäbit solet inciderint vel, eos denique ålbucius
        </p>
      </div>
    </section>

    <section class="box related">
      <h1 class="box-title">Read more</h1>
      <div class="box-content">
        <ul>
          <li><a href="http://malmo.se/">Cu ius primis laboramus</a></li>
          <li><a href="http://malmo.se/">Graece håbemus</a></li>
          <li><a href="http://malmo.se/">Solet inciderint</a></li>
        </ul>
      </div>
    </section>

    <section class="box related">
      <h1 class="box-title">Downloads</h1>
      <div class="box-content">
        <ul>
          <li><a href="#">How to save bandwidth (PDF, 923mb)</a></li>
          <li><a href="#">Fox barx (PDF, 43kb)</a></li>
        </ul>
      </div>
    </section>
  </article>
</div>

{% highlight html %}
<article class="body-copy">
  <p>This is standard article body copy. Lorem …</p>

  <section class="box related">
    <h1 class="box-title">Facts</h1>
    <div class="box-content">
      <p>
        Cu ius primis laboramus persecuti. Graece …
      </p>
      <p>
        Duo åd magnä ænimæl sälutændi. Fastidii torquatos …
      </p>
    </div>
  </section>

  <section class="box related">
    <h1 class="box-title">Read more</h1>
    <div class="box-content">
      <ul>
        <li><a href="http://malmo.se/">Cu ius primis laboramus</a></li>
        <li><a href="http://malmo.se/">Graece håbemus</a></li>
        <li><a href="http://malmo.se/">Solet inciderint</a></li>
      </ul>
    </div>
  </section>
</article>
{% endhighlight %}
