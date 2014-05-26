---
layout: default
title:  Tables
permalink: /tables/
---

# {{ page.title }}

Use a standard table markup with `thead` and `tbody` sections to get the correct styling.

Add a `wrap` class for responsive tables. It will wrap the table in a container with a horizontal scroll when the device isn't wide enough as seen in this live example.

The `full` class give you a full width table.

<div class="example">
  <table class="wrap full">
    <thead>
      <tr>
        <th></th>
        <th>2013</th>
        <th>2014</th>
        <th>2015</th>
        <th>2016</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th>Net</th>
        <td>56%</td>
        <td>14%</td>
        <td>98%</td>
        <td>11%</td>
      </tr>
      <tr>
        <th>Gross</th>
        <td>55%</td>
        <td>48%</td>
        <td>97%</td>
        <td>3%</td>
      </tr>
      <tr>
        <th>Comment</th>
        <td>Sed do eiusmod.</td>
        <td>Sit amet, consectetur</td>
        <td>Consectetur adipisicing elit</td>
        <td>Lorem ipsum dol.</td>
      </tr>
    <tr>
      <th>Fox</th>
      <td>Sit amet</td>
      <td>Excepteur sint occaecat.</td>
      <td>Sed do eiusmod tempor incididunt ut.</td>
      <td>Duis aute irur.</td>
    </tr>
    <tr>
      <th>Barx</th>
      <td>Duis aute irur.</td>
      <td>Consectetur</td>
      <td>Excepteur sint occaecat.</td>
      <td>Adipisicing elit</td>
    </tr>
    <tr>
      <th>Box</th>
      <td>Excepteur sint occaecat.</td>
      <td>Sed do eiusmod.</td>
      <td>Duis aute irur.</td>
      <td>Psum dol.</td>
    </tr>
    </tbody>
  </table>
</div>
{% highlight html %}
<table class="wrap full">
  <thead>
    <tr>
      <th></th>
      <th>2013</th>
      <th>2014</th>
      <th>2015</th>
      <th>2016</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Net</th>
      <td>56%</td>
      <td>14%</td>
      <td>98%</td>
      <td>11%</td>
    </tr>
    <tr>
      <th>Gross</th>
      <td>55%</td>
      <td>48%</td>
      <td>97%</td>
      <td>3%</td>
    </tr>
    ...
  </tbody>
</table>
{% endhighlight %}
