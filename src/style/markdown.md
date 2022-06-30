---
title: Visual Style Guide - Markdown
layout: default
permalink: /style/markdown.html
---

# Basic Syntax

These are the elements specified in John Gruber's original design document.
All Markdown applications support these elements.

---

# Header 1
## Header 2
### Header 3
#### Header 4
##### Header 5
###### Header 6

### Basic Typography

**Bold Text**

*Italic Text*

***Bold Italic Text***

> Blockquote

##### Ordered List
1. First
2. Second
3. Third

##### Unordered List
- First
- Second
- Third

### Code Formatting

{% highlight yml %}
field:
    value: 3
{% endhighlight %}

### Hypertext Anchor
[Link](https://www.redeyed-rpg.com)

### Image
![Alt Text](../assets/img/favicons/android-chrome-192x192.png)

---

# Extended Syntax

These elements extend the basic syntax by adding additional features.
Not all Markdown applications support these elements.

##### Tables

| Syntax | Description |
|--------|-------------|
| Header | Title |
| Paragraph | Text |

##### Fenced Code Block
```
{
    "firstName": "John",
    "lastName": "Smith"
    "age": 25
}
```

##### Footnotes
Here's a sentence with a footnote [^1]

[^1]: And this is the footnote

##### Heading ID {#custom-id}

##### Definition List
term
: definition

##### Strikethrough
~The world is flat~

##### Task List
- [x] Element 1
- [ ] Element 2
- [ ] Element 3

##### Emoji
SO funny :joy:
(If you've encoded in utf-8, you should also be able to simply copy-and-paste any unicode character like so: ⭐)


##### Highlight
I want to highlight these ==very important words==

##### Subscript
H~2~O

##### Superscript
X^2^
