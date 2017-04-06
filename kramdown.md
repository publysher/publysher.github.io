---
title: kramdown
layout: layout-kramdown
permalink: /kramdown/
nav: false
---

#### Markdown kramdown
* [Headers](#headers)
* [Emphasis](#emphasis)
* [Marks](#marks)
* [Links](#links)
* [Images](#images)
* [Code and syntax highlighting](#code-and-syntax-highlighting)
* [Lists](#lists)
* [Tables](#tables)
* [Blockquotes](#blockquotes)
* [Horizontals](#horizontals)
* [Overview](#overview)
* [Definition lists](#definition-lists)
* [Link to me](#link-to-me)
* [Extra](#extra)

<br>

---

# Headers

~~~

# An h1 header
## An h2 header 
### An h3 header
#### An h4  *italic* header 
##### An h5 **bold** header 
###### An h6 header 

Alternatively, for H1 and H2, an underline-ish style:

An h1 header
============

An h2 header
------------

~~~

# An h1 header
## An h2 header 
### An h3 header
#### An h4  *italic* header 
##### An h5 **bold** header 
###### An h6 header 

<br>

---

# Emphasis

~~~

1.  **bold** 

2.  *italic* 

3. ~~linethrough~~

4. ==highlighted==

5. "quote"

6. _underlined_

7. `monospace`

~~~

1. **bold** 

2. *italic* 

3. ~~linethrough~~

4. ==highlighted==

5. "quote"

6. _underlined_

7. `monospace`


<br>

---

# Marks


~~~

'quote' 

''quote''

superscript 2^(nd) 2^o C

sentence with footnote.[^1]

[^1]: <small>Here is the text of the footnote itself.</small>

-- afbreekstreepje --

--- gedachtenstreepje ---

Unicode is supported: ☺

Font-awesome supported:
<span class="fa-stack fa">
  <i class="fa fa-github fa-stack-2x"></i>
</span>

~~~

'quote'

''quote''

superscript 2^(nd) 2^o C

sentence with footnote.[^1]

[^1]: <small>This is a footnote.</small>

-- afbreekstreepje --

--- gedachtenstreepje ---

Unicode is supported: ☺

Font-awesome supported:
<span class="fa-stack fa">
  <i class="fa fa-github fa-stack-2x"></i>
</span>


<br>

---

# Links

~~~

autolink http://blog.publysher.nl

autolink yigal@publysher.nl

[Link to me](#link-to-me)

redcarpet link [Publysher blog](http://blog.publysher.nl/)

sentence with footnote.[^2]

[^2]: <small>Here is the text of the footnote itself.</small>

~~~


autolink http://blog.publysher.nl

autolink yigal@publysher.nl

[Link to me](#link-to-me)

redcarpet link [Publysher blog](http://blog.publysher.nl/)

sentence with footnote.[^2]

[^2]: <small>Here is the text of the footnote itself.</small>


<br>

---

# Images

~~~

![alt text](../img/stencyl/step9-1.png "No More Lives Triggered?")

~~~

![alt text](../img/stencyl/step9-1.png "No More Lives Triggered?")


<br>

---

# Code and syntax highlighting

python code highlighting
(use tildes instead of backticks!) 

~~~

```python
import time
# Quick, count to ten!
for i in range(10):
   # (but not *too* quick)
   time.sleep(0.5)
   print i

```

~~~

python code highlighting

~~~python
import time
# Quick, count to ten!
for i in range(10):
    # (but not *too* quick)
    time.sleep(0.5)
    print i
~~~


<br>

---

# Lists


###### Unordered lists (ul) look like:

```

* this one
* that one
* the other one

  * this one
  * that one
  * the other one

*  Overview
   *  Philosophy
   *  Inline HTML
   *  Automatic Escaping for Special Characters

```

* this one
* that one
* the other one

  * this one
  * that one
  * the other one

*  Overview
   *  Philosophy
   *  Inline HTML
   *  Automatic Escaping for Special Characters

###### Ordered lists (ol) look like:

(In this example, leading and trailing spaces are shown with with dots: ⋅)

```

1. First ordered list item
2. Another item
   * Unordered sub-list. 
1. Actual numbers don't matter, just that it's a number
   1. Ordered sub-list
4. And another item.

   You can have properly indented paragraphs within list items. 

   Note that this line is separate, but within the same paragraph.

* Unordered list can use asterisks
- Or minuses
+ Or pluses

```

1. First ordered list item
2. Another item
   * Unordered sub-list. 
1. Actual numbers don't matter, just that it's a number
   1. Ordered sub-list
4. And another item.

    You can have properly indented paragraphs within list items. 

    Note that this line is separate, but within the same paragraph.

* Unordered list can use asterisks
- Or minuses
+ Or pluses

<br>

---

# Tables

Colons can be used to align columns.

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |

There must be at least 3 dashes separating each header cell.
The outer pipes (|) are optional, and you don't need to make the 
raw Markdown line up prettily. You can also use inline Markdown.

Markdown | Less | Pretty
--- | --- | ---
*Still* | `renders` | **nicely**
1 | 2 | 3


<br>

---

# Block quotes


> Block quotes are
> written like so.
>
> Lorem ipsum dolor sit amet, consectetur adipisicing elit.
> Molestias consequatur _temporibus_ accusantium iure, provident 
> accusamus nisi incidunt cum a quibusdam enim labore sequi harum, 
> nesciunt vero eligendi dolore modi aliquid?.


<br>

---

# Overview

Lorem **ipsum** dolor sit amet, ==consectetur== adipisicing elit. Laborum `modi ipsam`, iusto enim *doloremque* numquam, adipisci _voluptates_ dolorem voluptatem "pariatur" minus soluta culpa 'possimus' libero ''reiciendis magni'' nesciunt debitis, repellendus.


<br>

---

# Definition lists


Definition lists can have more than one definition associated with one term:

Apple
 : Pomaceous fruit of plants of the genus Malus in the family Rosaceae.
 : An American computer company.

Orange
:   The fruit of an evergreen tree of the genus Citrus.
You can also associate more than one term to a definition:

Term 1
Term 2
:   Definition a

Term 3
:   Definition b
If a definition is preceded by a blank line, Markdown Extra will wrap the definition in <p> tags in the HTML output. For example, this:

<br>

---

# Extra

This *is*{:.underline} some `code`{:#id}{:.class}.

A [link](test.html){:rel='something'} 

And some **tools**{:.tools}.

<br>

---

# Link to me


