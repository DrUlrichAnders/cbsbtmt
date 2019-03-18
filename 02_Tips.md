# Tips and tricks

## Editor

Use Visual Studio Code (VS Code) from [https://code.visualstudio.com/](https://code.visualstudio.com/). It helps you to type text and to format it at a much later stage.

### Editor plugins

VS Code comes with a lot of plugins. For writing your thesis you should install:

+ Code Spell Checker: [https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)

+ Markdown Footnotes: [https://marketplace.visualstudio.com/items?itemName=bierner.markdown-footnotes](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-footnotes)

+ Markdown GitHub Styling: [https://marketplace.visualstudio.com/items?itemName=bierner.markdown-preview-github-styles](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-preview-github-styles)


## Markdown

### Headers

Headers are denoted with 1-6 hashes (`#`). One hash (`#`) means chapter, two hashes (`##`) mean section, three hashes (`###`) mean subsection and so on.

### Bullets

Here comes an unordered list:

+ This is the first bullet.
+ This is the second bullet.
+ This is the third bullet.

### Ordered lists

Here comes an ordered list:

1. This is the first item.
1. This is the second item.
1. This is the third item.

The good thing is you can start all items with a `1.` and Markdown is numbering them automatically. This has been done here to produce the above.

```Markdown
1. This is the first item.
1. This is the second item.
1. This is the third item.
```

### Indented lists

It is easy to indent lists. Just use four (=4) spaces before the indented list.


```Markdown
1. This is the first item.
    + One bullet.
    + Another bullet.
    + Yet another bullet.
1. This is the second item.
1. This is the third item.
```

1. This is the first item.
    + One bullet.
    + Another bullet.
    + Yet another bullet.
1. This is the second item.
1. This is the third item.


### Footnotes

It is easy to produce footnotes in Markdown.[^noteasy] Just add a marker at the end of the sentence and start a later paragraph with this marker and a colon.[^easy] It looks like this:

[^noteasy]: Nothing is really easy.

[^easy]: Oh, it's really not difficult either.

```Markdown
It is easy to produce footnotes in Markdown.[^noteasy]

[^noteasy]: Nothing is really easy.
```


### Images

Put images into a folder named `img`. Name them `01_01.jpg`, `03_05.jpg` for the first image in chapter 01 and the fifth image in chapter 03. This way your files do not become large and clumsy.

You can then include images with this command:

```Markdown
![First image in chapter 01.\label{i01_01}](img/01_01.jpg)
```

![First image in chapter 01.\label{i01_01}](img/01_01.jpg)

This automatically adds a caption and also makes an entry of the image into the List of Figures. In your text you can then refer to your image with `\ref{i01_01}`. So let me refer to figure \ref{i01_01}.

### Tables

Tables are easy to construct. Use colons to indicate if they are aligned to the right, left or to both sides:

```Markdown
| Default | Left | Right | Center |
|---------|:-----|------:|:------:|
|    12   |  12  |   12  |    12  |
|   123   |  123 |  123  |   123  |
|     1   |    1 |    1  |     1  |

: This is something. \label{t01}
```

This way you can produce tables very fast.

| Default | Left | Right | Center |
|---------|:-----|------:|:------:|
|    12   |  12  |   12  |    12  |
|   123   |  123 |  123  |   123  |
|     1   |    1 |    1  |     1  |

: This is something. \label{t01}

And, again we can refer to table \ref{t01}.


## Pandoc

Pandoc is a tool that can translate allmost any text file type into any other type. For instance you can transform Markdown (.md) files easily into Word (.docx) files with the following command:

```sh
pandoc README.md -o README.docx
```

The advantage is that your result always looks beautiful without you getting caught up in formatting.

For this to work you need to install _pandoc_ first from [https://pandoc.org/installing.html](https://pandoc.org/installing.html).

If you want to use a certain .docx template you need to put a `reference.docx` into the folder `templates` and then call:

```sh
pandoc --reference-doc=templates/reference.docx README.md -o README.docx
```

You can modify the `reference.docx` template according to your needs.

If you want to know more details about _pandoc_ download the manual at [https://pandoc.org/MANUAL.pdf](https://pandoc.org/MANUAL.pdf).


