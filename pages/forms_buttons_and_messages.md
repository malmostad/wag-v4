---
layout: default
title:  Forms, Buttons & Messages
permalink: /forms_buttons_and_messages/
---

# {{ page.title }}

We use the [Bootstrap v3](https://getbootstrap.com/) markup structure for forms with some additions to make them responsive without any non-semantic classes for the grid.

To apply the styling to your forms, you need to set a `mf-v4` class somewhere *outside* the form. You can set it in the `body` element to have all your forms styled. Buttons will be styled based on their class names only and does not require the `mf-v4` scoping class name.

## Compliance Level 2
If you have an approved exception from webbteamet@malmo.se to deliver a web application with [Compliance Level 2]({{ site.baseurl }}/getting_started#compliance-level-2), omit the `mf-v4` class and your forms will not be affected by the Global Assets. It is your responsibility to ensure that your forms are responsive, accessible, nice looking and user friendly.


## Forms

### Single Field Forms
An input field used together with an action button, most often used for search forms.

<div class="example">
  <form action="/search" method="get">
    <div class="input-group">
      <input name="q" class="form-control" placeholder="Type and hit the button" type="text" autocapitalize="off"/>
      <span class="input-group-btn">
        <input class="btn btn-default" name="" type="submit" value="Search"/>
      </span>
    </div>
  </form>
</div>

{% highlight html %}
<form action="/search" method="get">
  <div class="input-group">
    <input name="q" class="form-control" placeholder="Type and hit the button" type="text" autocapitalize="off"/>
    <span class="input-group-btn">
      <input class="btn btn-default" name="" type="submit" value="Search"/>
    </span>
  </div>
</form>
{% endhighlight %}


### Responsive Forms

The example below covers the most common use case for a responsive form. Bootstrap's non-semantic hard coded grid classes (like `class="col-md-4"`) are not available in the Global Assets, we use a slighly different approach here to get a responsive form grid:

1. Add `class="basic"` to your `form`.
2. In each `form-group`, add `class="controls"` to the `div` with the form controls.

For a `form-group` without a main label, use `<span class="no-control-label"></span>` instead of the  `label` block. This is what we use for the form actions below (Save/Cancel).

<div class="example">
  <form action="/" method="post" class="basic">
    <p class="help-block">
      Some instructions to the form may, or may not, be necessary. Lorem lipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor.
    </p>

    <div class="form-group">
      <label for="person-name" class="control-label">Name:*</label>
      <div class="controls">
        <input type="text" id="person-name" name="person-name" class="form-control" placeholder="e.g. Joan Doe"/>
      </div>
    </div>
    <div class="form-group">
      <label for="email" class="control-label">Email address:*</label>
      <div class="controls">
        <input type="email" id="email" name="email" class="form-control" placeholder="e.g. joan.doe@malmo.se"/>
        <p class="help-block">
          Inline help for a form control.
        </p>
      </div>
    </div>

    <div class="form-group">
      <label for="something" class="control-label">Street address:</label>
      <div class="controls">
        <input type="text" id="something" name="something" placeholder="e.g. 308 Negra Arroyo Lane" class="form-control"/>
        <label class="radio-inline">
          <input type="radio" name="something-boolean" value="true"/>
          Office
        </label>
        <label class="radio-inline">
          <input type="radio" name="something-boolean" value="false"/>
          Home
        </label>
      </div>
    </div>

    <div class="form-group">
      <div class="control-label">Revenue:*</div>
      <div class="controls radio">
        <label class="radio">
          <input type="radio" name="revenue" value="100000"/>
          $100.000
        </label>
        <label class="radio">
          <input type="radio" name="revenue" value="100000000"/>
          $100.000.000
        </label>
        <label class="radio">
          <input type="radio" name="revenue" value="100000000000"/>
          $100.000.000.000
        </label>
      </div>
    </div>

    <div class="form-group">
      <div class="control-label">Main business:</div>
      <div class="controls radio">
        <label class="radio-inline">
          <input type="radio" name="biz" value="washing"/>
          Washing cars
        </label>
        <label class="radio-inline">
          <input type="radio" name="biz" value="other"/>
          Other
        </label>
      </div>
    </div>

    <div class="form-group">
      <span class="no-control-label"></span>
      <div class="controls">
        <input type="submit" value="Save" class="btn btn-primary"/>
        <input type="button" value="Cancel" class="btn btn-default"/>
      </div>
    </div>
  </form>
</div>

{% highlight html %}
<form action="/" method="post" class="basic">
  <p class="help-block">
    Some instructions to the form may, or may not, be necessary. Lorem lipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    tempor.
  </p>

  <div class="form-group">
    <label for="person-name" class="control-label">Name:*</label>
    <div class="controls">
      <input type="text" id="person-name" name="person-name" class="form-control" placeholder="e.g. Joan Doe"/>
    </div>
  </div>
  <div class="form-group">
    <label for="email" class="control-label">Email address:*</label>
    <div class="controls">
      <input type="email" id="email" name="email" class="form-control" placeholder="e.g. joan.doe@malmo.se"/>
      <p class="help-block">
        Inline help for a form control.
      </p>
    </div>
  </div>

  <div class="form-group">
    <label for="something" class="control-label">Street address:</label>
    <div class="controls">
      <input type="text" id="something" name="something" placeholder="e.g. 308 Negra Arroyo Lane" class="form-control"/>
      <label class="radio-inline">
        <input type="radio" name="something-boolean" value="true"/>
        Office
      </label>
      <label class="radio-inline">
        <input type="radio" name="something-boolean" value="false"/>
        Home
      </label>
    </div>
  </div>

  <div class="form-group">
    <div class="control-label">Revenue:*</div>
    <div class="controls radio">
      <label class="radio">
        <input type="radio" name="revenue" value="100000"/>
        $100.000
      </label>
      <label class="radio">
        <input type="radio" name="revenue" value="100000000"/>
        $100.000.000
      </label>
      <label class="radio">
        <input type="radio" name="revenue" value="100000000000"/>
        $100.000.000.000
      </label>
    </div>
  </div>

  <div class="form-group">
    <div class="control-label">Main business:</div>
    <div class="controls radio">
      <label class="radio-inline">
        <input type="radio" name="biz" value="washing"/>
        Washing cars
      </label>
      <label class="radio-inline">
        <input type="radio" name="biz" value="other"/>
        Other
      </label>
    </div>
  </div>

  <div class="form-group">
    <span class="no-control-label"></span>
    <div class="controls">
      <input type="submit" value="Save" class="btn btn-primary"/>
      <input type="button" value="Cancel" class="btn btn-default"/>
    </div>
  </div>
</form>
{% endhighlight %}

As you can see in the above example, the labels will be placed over the controls block on narrow devices (vertical form) and to the left of the controls on wider ones (horizontal form). If the breakpoint isn't optimal for your scenario, you can easily adjusted it by including a mixin from the [Sass utilities](https://github.com/malmostad/shared_assets/) and specify another breakpoint like this:

{% highlight sass %}
@media (max-width: 42em) {
  @include form-force-vertical();
}
{% endhighlight %}


### Form Validation
Place a `warning` message at the top of the form telling the user that some information needs to be corrected. Add a `warning` class to the `form-group`(s) that needs to be corrected along with a `help-block` message.

<div class="example">
  <form action="/" method="post" class="basic">
    <p class="help-block">
      Some instructions to the form may, or may not, be necessary. Lorem lipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
      tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
      quis nostrud exercitation.
    </p>
    <div class="warning">Please correct the indicated fields below</div>

    <div class="form-group">
      <label for="person-name" class="control-label">Name:*</label>
      <div class="controls">
        <input value="Walter White" type="text" id="person-name" name="person-name" class="form-control" placeholder="e.g. Joan Doe"/>
      </div>
    </div>
    <div class="form-group warning">
      <label for="email" class="control-label">Email address:*</label>
      <div class="controls">
        <input type="email" value="walter.white@a1acarwash.c" id="email" name="email" class="form-control" placeholder="e.g. joan.doe@malmo.se"/>
        <div class="help-block">
          Please enter a valid email address
        </div>
      </div>
    </div>

    <div class="form-group warning">
      <div class="control-label">Revenue:*</div>
      <div class="controls radio">
        <label class="radio">
          <input type="radio" name="revenue" value="100000"/>
          $100.000
        </label>
        <label class="radio">
          <input type="radio" name="revenue" value="100000000"/>
          $100.000.000
        </label>
        <label class="radio">
          <input type="radio" name="revenue" value="100000000000"/>
          $100.000.000.000
        </label>
        <div class="help-block">
          Please select your revenue
        </div>
      </div>
    </div>

    <div class="form-group">
      <span class="no-control-label"></span>
      <div class="controls">
        <input type="submit" value="Save" class="btn btn-primary"/>
        <input type="button" value="Cancel" class="btn btn-default"/>
      </div>
    </div>
  </form>
</div>

{% highlight html %}
<form action="/" method="post" class="basic">
  <p class="help-block">
    Some instructions to the form may, or may not, be necessary. Lorem lipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
    quis nostrud exercitation.
  </p>
  <div class="warning">Please correct the indicated fields below</div>

  <div class="form-group">
    <label for="person-name" class="control-label">Name:*</label>
    <div class="controls">
      <input value="Walter White" type="text" id="person-name" name="person-name" class="form-control" placeholder="e.g. Joan Doe"/>
    </div>
  </div>
  <div class="form-group warning">
    <label for="email" class="control-label">Email address:*</label>
    <div class="controls">
      <input type="email" value="walter.white@a1acarwash.c" id="email" name="email" class="form-control" placeholder="e.g. joan.doe@malmo.se"/>
      <div class="help-block">
        Please enter a valid email address
      </div>
    </div>
  </div>

  <div class="form-group warning">
    <div class="control-label">Revenue:*</div>
    <div class="controls radio">
      <label class="radio">
        <input type="radio" name="revenue" value="100000"/>
        $100.000
      </label>
      <label class="radio">
        <input type="radio" name="revenue" value="100000000"/>
        $100.000.000
      </label>
      <label class="radio">
        <input type="radio" name="revenue" value="100000000000"/>
        $100.000.000.000
      </label>
      <div class="help-block">
        Please select your revenue
      </div>
    </div>
  </div>

  <div class="form-group">
    <span class="no-control-label"></span>
    <div class="controls">
      <input type="submit" value="Save" class="btn btn-primary"/>
      <input type="button" value="Cancel" class="btn btn-default"/>
    </div>
  </div>
</form>
{% endhighlight %}


### Datepicker
We use Eternicode's [Bootstrap Datepicker](https://github.com/eternicode/bootstrap-datepicker). See their documentation and excellent demo for usage. The example below covers the most common use case.

Do not set the date format explicitly, `language: "sv"` will provide the Swedish date format automatically. Be nice to the user and set `autoclose: true`.

<div class="example">
  <div class="input-group date" id="start-date">
    <input type="text" class="form-control">
    <span class="input-group-addon">
      <span class="m-icon-calendar"></span>
    </span>
  </div>
</div>

{% highlight html %}
<div class="input-group date" id="start-date">
  <input type="text" class="form-control">
  <span class="input-group-addon">
    <span class="m-icon-calendar"></span>
  </span>
</div>
{% endhighlight %}

{% highlight coffeescript %}
$('#start-date').datepicker
  weekStart: 1
  language: "sv"
  autoclose: true
  todayHighlight: true
{% endhighlight %}

### Autocomplete
[jQueryUI Autocomplete](https://jqueryui.com/autocomplete/) is available in the Global Assets with custom styling. Here is a live example using City of Malmö's map service REST API.

<div class="example">
  <form action="/" method="get">
    <div class="input-group">
      <input class="form-control" id="street-name" type="text" placeholder="type a street name"/>
      <span class="input-group-btn">
        <input type="submit" class="btn btn-default" value="Add"/>
      </span>
    </div>
  </form>
</div>

{% highlight html %}
<form action="/" method="get">
  <div class="input-group">
    <input class="form-control" id="street-name" type="text" placeholder="type a street name"/>
    <span class="input-group-btn">
      <input type="submit" class="btn btn-default" value="Add"/>
    </span>
  </div>
</form>
{% endhighlight %}

{% highlight coffeescript %}
$("#street-address").autocomplete
  source: (request, response) ->
    $.ajax
      url: "//kartor.malmo.se/api/v1/addresses/"
      dataType: "jsonp"
      data:
        q: request.term
        items: 10
      success: (data) ->
        response $.map data.addresses, (item) ->
          label: "#{item.name} (#{item.towndistrict})"
          value: item.name
  minLength: 2
{% endhighlight %}


## Buttons
Follow the Bootstrap v3 class name standard to get the correct styling for buttons and button groups. No default styling is applied to buttons, you need to use the class names.

<div class="example buttons">
  <a class="btn btn-default" href="#">Link</a>
  <button class="btn btn-default" type="submit">Button</button>
  <input class="btn btn-default" type="button" value="Input"/>
  <input class="btn btn-default" type="submit" value="Submit"/>
</div>

{% highlight html %}
<a class="btn btn-default" href="#">Link</a>
<button class="btn btn-default" type="submit">Button</button>
<input class="btn btn-default" type="button" value="Input"/>
<input class="btn btn-default" type="submit" value="Submit"/>
{% endhighlight %}


### Action Semantics
Use `btn-primary` for actions where the user is creating or saving something. This includes a Login button (creating a different state).

`btn-danger` is used for deleting actions where a warning is appropriate.

For all other buttons, like *Search*, *Cancel* or *Update filter*, use `btn-default`.

<div class="example">
  <button class="btn btn-default">Search</button>
  <button class="btn btn-primary">Save</button>
  <button class="btn btn-default">Cancel</button>
  <button class="btn btn-danger">Delete</button>
</div>

{% highlight html %}
<button class="btn btn-default">Search</button>
<button class="btn btn-primary">Save</button>
<button class="btn btn-default">Cancel</button>
<button class="btn btn-danger">Delete</button>
{% endhighlight %}

### Button Sizes
<div class="example">
  <button class="btn btn-default btn-xs">Extra small</button>
  <button class="btn btn-default btn-sm">Small</button>
  <button class="btn btn-default">Regular</button>
  <button class="btn btn-default btn-lg">Large</button>
</div>

{% highlight html %}
<button class="btn btn-default btn-xs">Extra small</button>
<button class="btn btn-default btn-sm">Small</button>
<button class="btn btn-default">Regular</button>
<button class="btn btn-lg">Large</button>
{% endhighlight %}

### Disabled Buttons

<div class="example">
  <button class="btn btn-default" disabled="disabled">Search</button>
  <button class="btn btn-primary" disabled="disabled">Save</button>
  <button class="btn btn-danger" disabled="disabled">Delete</button>
</div>
{% highlight html %}
<button class="btn btn-default" disabled="disabled">Search</button>
<button class="btn btn-primary" disabled="disabled">Save</button>
<button class="btn btn-danger" disabled="disabled">Delete</button>
{% endhighlight %}


### Button Groups
A button group is used for connected buttons, e.g. in a toolbar.

<div class="example">
  <div class="btn-group">
    <button class="btn btn-default">Left</button>
    <button class="btn btn-default">Middle</button>
    <button class="btn btn-default">Right</button>
  </div>
</div>
{% highlight html %}
<div class="btn-group">
  <button class="btn btn-default">Left</button>
  <button class="btn btn-default">Middle</button>
  <button class="btn btn-default">Right</button>
</div>
{% endhighlight %}


### Button Dropdowns

Dropdown multi action buttons. Delete is a split button with a default action.

<div class="example">
  <div class="btn-toolbar">
    <div class="btn-group">
      <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
        Select <span class="caret"></span>
      </button>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">All posts</a></li>
        <li><a href="#">New posts</a></li>
        <li><a href="#">Posts with comments</a></li>
      </ul>
    </div>
    <div class="btn-group">
      <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
        Add <span class="caret"></span>
      </button>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">Comment</a></li>
        <li><a href="#">Post</a></li>
        <li class="divider"></li>
        <li><a href="#">Group</a></li>
      </ul>
    </div>
    <div class="btn-group">
      <button class="btn btn-danger">
        Delete
      </button>
      <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
        <span class="caret"></span>
        <span class="a11y">Delete…</span>
      </button>
      <ul class="dropdown-menu" role="menu">
        <li><a href="#">Comment</a></li>
        <li><a href="#">All comments</a></li>
      </ul>
    </div>
  </div>
</div>

{% highlight html %}
<div class="btn-toolbar">
  <div class="btn-group">
    <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
      Select <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu">
      <li><a href="#">All posts</a></li>
      <li><a href="#">New posts</a></li>
      <li><a href="#">Posts with comments</a></li>
    </ul>
  </div>
  <div class="btn-group">
    <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
      Add <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu">
      <li><a href="#">Comment</a></li>
      <li><a href="#">Post</a></li>
      <li class="divider"></li>
      <li><a href="#">Group</a></li>
    </ul>
  </div>
  <div class="btn-group">
    <button class="btn btn-danger">
      Delete
    </button>
    <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
      <span class="caret"></span>
      <span class="a11y">Delete…</span>
    </button>
    <ul class="dropdown-menu" role="menu">
      <li><a href="#">Comment</a></li>
      <li><a href="#">All comments</a></li>
    </ul>
  </div>
</div>
{% endhighlight %}


## Messages

There are three kind of response messages to the user.

1. Use the *success message* when it is appropriate to tell the user that her data was saved or sent, when here login or logout actions succeeed etc.
1. Use the *warning message* when the user needs to take an action, e.g. correcting a form field.
1. The *error message* must only be used when the system, or a background system, fails. In other words, we failed and not the user.

Those messages are most often displayed at the top of the page or application view.

<div class="example">
  <div class="success">Your profile was updated</div>
  <div class="warning">Please correct the indicated fields below</div>
  <div class="error">Your account can not be displayed. Please try again later.</div>
</div>
{% highlight html %}
<div class="success">Your profile was updated</div>
<div class="warning">Please correct the indicated fields below</div>
<div class="error">Your account can not be displayed. Please try again later.</div>
{% endhighlight %}

Public announcement messages---and the use of the formatting for them (not shown here)---are strictly reserved for the main editorial team to publish.
