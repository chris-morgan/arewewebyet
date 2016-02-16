# Project Documentation

This document outlines the technologies used, the structure of the project and data and jump starts your development and setup.

## Getting started

This project is hosted on github pages and uses the default [Jekyll](http://www.jekyll.rb) setup to do that. Jekyll is a static website compiler – it uses our data to render a bunch of HTML pages out of it. If you do not have jekyll yet, you can install it by using bundler (`bundler install jekyll`) or any other way [outlined on the official website](http://jekyllrb.com/docs/installation/).

To install the latest version as rendered by github pages, please use bundle:

```bash
bundle install
```

To compile the documents run from the main directory

```bash
bundle exec jekyll serve
```

Now open a browser on `http://localhost:4000` and you'll be able to see the homepage in its latest version. Any changes you make immediately rerender the websites after saving the file, you just need to refresh the browser. Note: for changes done to the `_config.yml` you need to restart `jekyll`.

## Site structure

To make contributing easy we use markdown, where we can. So you'll find all topic pages (in `topics/`) as well as all other info pages with the markdown ending `.md`. You will find that this matches the different `jekyll` layouts we provide (in `_layouts`): `main` and `topic`.

A `topic` in this website refers to a distinct subset of the web ecosystem to investigate. For example, JSON is a topic and the file might look like this:

```yaml
---
layout: topic
title: "JSON Support"

level: 3
packages:
 - serde_json
 - json_macros
 - jsonway
 - weakjson
 - jsonrpc
---
```

Aside from the layout and it's title, a topic also has the "maturity" level – an indicator from 0-6, which indicates how mature the curators believe this topic to be in rust (0 being the most mature and tested). Usually a topic also comes with a list of packages. These reference the packages-filenames as mentioned below in the data structures section.

Anything after the second `---` is then rendered after the title in the top of the page, before the packages are listed. If no packages are found, none are rendered. Which might be what you want, especially if you want to split them up into your own sections. In that case, however, you have to do the rendering yourself at the moment. Take a look at the `topics/services.md` for an example on how to achieve that.


## Data Structure

We are using [jekyll datafiles](http://jekyllrb.com/docs/datafiles/) to manage package data. If you are unfamiliar with datafiles, you might want to check out the documentation.

We are storing our package-crate information in the `_data/pkgs/` folder, where each package is referenced by its id and the `.json` extension. The information inside that file is the direct export of crates.io API request for that package.

These packages are then referenced by that id in the templates and site

### Fetch package data

We have a bash script which lets you easily fetch the latest package information – you need to have `curl` installed for it. You can run it to fetch the latest info like this (don't forget the `.json` prefix):

```bash
bash scripts/update_crates.sh hyper.json
```

To update all crates already listed, you can run

```bash
bash scripts/update_crates.sh `ls -1 _data/pkgs/`
```


## Template Includes

### Level

You can easily render the level indicator (colored and with the right icon) by including the `level.html`-include. It takes one parameter `level`, which is an integer from 0-5, anything else will be understood as "worse than 6".

Example:

```liquid
{% include level.html level=2%}
```


### Package

You can render the package-`li`-element at any point by just including the `package.html` template. It takes one parameter `name`, which is the name of the package in question.

Example:

```liquid
{% include package.html name='curl' %}
```

### Packages

To render a list of packages as a `ul`-block, just include the `packages.html` include. It takes one parameter `packages`, which is the list of names of packages.

Example:

```liquid
{% include packages.html packages=page.passwords_packages %}
```
