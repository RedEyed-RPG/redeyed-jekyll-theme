<div align="center">

<img src="https://aever.net/images/brand/banner/RedEyedRPG-960-Red.png" alt="RedEyed RPG" />

# redeyed-jekyll-theme<br />v0.1.3

<em>A versatile, responsive, and powerful Jekyll Theme designed for a gaming site</em>

[**https://www.redeyed-rpg.com**](https://www.redeyed-rpg.com)

#### [Contributing](https://github.com/RedEyed-RPG/redeyed-jekyll-theme/wiki/Contributor's-Guide) &middot; [Community Guidelines](https://github.com/RedEyed-RPG/redeyed-jekyll-theme/wiki/Contributor-Covenant-&-Code-of-Conduct) &middot; [Submit an Issue](https://github.com/RedEyed-RPG/redeyed-jekyll-theme/issues/new/choose) &middot; [Ask a Question](https://github.com/RedEyed-RPG/redeyed-jekyll-theme/discussions)

<a href="https://patreon.com/ragdata"><img src="assets/img/social/patreon.svg" height="24" width="24"></a> &nbsp;
<a href="https://twitter.com/RedeyedRPG"><img src="assets/img/social/twitter.svg" height="24" width="24"></a> &nbsp;
<a href="https://reddit.com/r/redeyed"><img src="assets/img/social/reddit.svg" height="24" width="24" alt="RedEyed-RPG Subreddit"></a> &nbsp;
<a href="https://facebook.com/RedeyedRPG"><img src="assets/img/social/facebook.svg" height="24" width="24"></a> &nbsp;
<a href="https://redeyed-rpg.tumblr.com"><img src="assets/img/social/tumblr.svg" height="24" width="24"></a> &nbsp;
<a href="https://github.com/redeyed-rpg"><img src="assets/img/social/github.svg" height="24" width="24"></a> &nbsp;
<a href="https://www.guilded.gg/i/27dYX5Xk"><img src="assets/img/social/guilded.svg" height="24" width="24"></a>

[![Gem Version](https://badge.fury.io/rb/redeyed-jekyll-theme.svg)](https://badge.fury.io/rb/redeyed-jekyll-theme) &nbsp;
[![Build Status](https://github.com/RedEyed-RPG/redeyed-jekyll-theme/workflows/build/badge.svg?branch=master&event=push)](https://github.com/RedEyed-RPG/redeyed-jekyll-theme/actions?query=branch%3Amaster+event%3Apush) &nbsp;
[![GitHub license](https://img.shields.io/github/license/RedEyed-RPG/redeyed-jekyll-theme.svg)](https://github.com/RedEyed-RPG/redeyed-jekyll-theme/blob/master/LICENSE) &nbsp;
[![Repo Code Weight](https://img.shields.io/github/languages/code-size/RedEyed-RPG/redeyed-jekyll-theme)](https://github.com/RedEyed-RPG/redeyed-jekyll-theme)
<br/>
[![Support Me @ Patreon](https://img.shields.io/badge/Patreon-Ragdata-%23FF424D?logo=patreon)](https://patreon.com/ragdata) &nbsp;
[![Support Me @ GitHub](https://img.shields.io/badge/Github-Sponsor_This_Project-blue?logo=Github)](https://github.com/sponsors/Ragdata) &nbsp;
[![Buy me a Ko-fi](https://img.shields.io/badge/Ko--fi-Ragdata-%23FF5E5B?logo=ko-fi)](https://ko-fi.com/ragdata)
<br/><br/>
[![](https://img.shields.io/badge/Guilded-Support%20Server%20Online-%23F5C400?logo=guilded)](https://www.guilded.gg/i/27dYX5Xk)

</div>

## Features

- Localized Layout
- Dark/Light Theme Mode
- Pinned Posts
- Hierarchical Categories
- Last Modified Date for Posts
- Table of Contents
- Auto-Generated Related Posts
- Syntax Highlighting
- Mathematical Expressions
- Disqus/Utterances/Giscus/Gitment Comments
- Site Search
- Atom Feeds
- Google Analytics
- SEO & Performance Optimisation

## Introduction

<div align="center"><img src="assets/img/banner.svg" widtH="100%"></div>

If you want to use the theme just as it is on your own website, you have two options:

- To install this theme as part of a brand-new Jekyll site, you want the [RedEyed Jumpstarter]().
- To add this theme to your existing website, see [this documentation]().

## Installation

Add this line to your Jekyll site's `Gemfile`:

```console
gem "redeyed-jekyll-theme"
```

And add this line to your Jekyll site's `_config.yml`:

```console
theme: redeyed-jekyll-theme
```

And then execute:

```console
$ bundle
```

Or install it yourself as:

```console
$ gem install redeyed-jekyll-theme
```

## 📚 Developer's Quick Start

Before you start, please ensure that you've followed the instructions in the [Jekyll Docs](https://jekyllrb.com/docs/installation/) to complete the installation of `Ruby`, `RubyGems`, `Jekyll`, and `Bundler`.  You also need to have the following packages installed:

- Git
- Node.js & npm (I recommend [NVM](https://github.com/nvm-sh/nvm) regardless of your platform)

### 📘 1. Fork the Project

The first step you have already hopefully completed before getting to this part of the instructions - you need to fork the project from Github using your favourite tools or the Github website itself.

### 📘 2. Rename & Modify the Gemspec

The next thing you'll want to do is rename the `redeyed-jekyll-theme.gemspec` file to reflect the name of your own project.  Then, open that file and take care of the following details:

- spec.name
- spec.version
- spec.authors
- spec.email
- spec.summary
- spec.homepage
- spec.license
- spec.metadata

### 📘 3. Install standard-version

(Yes, I know it's deprecated - I'll change this as soon as I find a suitable replacement)

Install `standard-version` as a global `bin`:

```console
$ npm i -g standard-version
```

### 📘 4. Install Commitlint & Husky

> If you don't need to do things your own way, Commitlint and Husky can be installed using the script I've included with this package:
> ```console
> $ bash bin/install-commitlint
> ```
> Otherwise, follow each step below and make your changes as necessary

Install `commitlint` & `husky`

```console
$ npm i --save-dev --location=global @commitlint/cli @commitlint/config-conventional husky
```

Configure `commitlint` to use conventional config:

```console
$ echo "module.exports = {extends: ['@commitlint/config-conventional']}" > ..commitlintrc.js
```

And then enable `husky`:

```console
$ husky install
```

Add a husky commit hook:

```shell
cat <<EEE > .husky/commit-msg
#!/usr/bin/env bash
. "\$(dirname "\$0")/_/husky.sh"
npx --no -- commitlint --edit "\${1}"
EEE
```

Make the hook executable:

```console
$ chmod a+x .husky/commit-msg
```

Make sure you check out the [Contributor's Guide - Appendices](.github/CONTRIBUTING.md#appendix-a-commitlint-commit-types) for tips on how to use commitlint, why it's useful, and examples of how to structure your own commit messages to make the best use of the package.

### 📘 5. Install Dependencies

Install Jekyll dependencies:

```console
$ bundle install
```

### 📘 6. Start Local Server

Then, start your local server in watch mode:

```console
$ bundle exex jekyll serve --watch
```

Now, open your browser to http://localhost:4000 and make your changes

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `redeyed-jekyll-theme.gemspec` accordingly.

## 📋 License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
