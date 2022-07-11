# How to Contribute

I'd like to personally thank you for sparing your time to improve this project!

Here are a few guidelines to help ensure that all contributions are heading in the same direction:

## Basic Process

Generally, you may contribute to this project by:

1. Forking this project on Github and cloning it locally
2. Creating a new branch from the master branch and giving it a descriptive name (format: `feature/<add-new-feat>` / `fix/<fix-a-bug>`)
3. After completing development AND TESTING, submit a new _Pull Request_
   1. (note that your commit message MUST follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/), otherwise it will fail the PR check.

## Modifying Javascript

If your contribution involves the modification of javascript, please read the following sections:

### Inline Scripts

If you need to add comments to the inline Javascript (the code between the html tags `<script>` and `</script>`), please use `/* */` instead of double slashes `//` because the HTML will be compressed by [jekyll-compress-html](https://github.com/penibelst/jekyll-compress-html) during deployment.

### External Scripts

If you need to add/change/delete any Javascripts in the `_javascript` directory, setting up [`Node.js`](https://nodejs.org) and [`npx`](https://www.npmjs.com/package/npx) is a requirement, as is the installation of the following dev dependencies:

```console
$ npm i
```

During Javascript development, real-time debugging can be performed through the following commands:

Firstly, start a Jekyll server:

```console
$ bash bin/serve
```

Then, open a new terminal and run:

```console
# Type 'Ctrl + C' to stop
$ npx gulp dev
```

After debugging, run the command `npx gulp` (without arguments) to automatically minify the files into the `assets/js/dist` directory.

## Verify Your Commit Messages

If you want to make sure your commit messages will pass the CI check, implement the following:

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
$ echo "module.exports = {extends: ['@commitlint/config-conventional']}" > .commitlintrc.js
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

### Appendix A: Commitlint Commit Types

The following commit types are recognised by Commitlint

- 🛠 `build`
- ♻️ `chore`
- ⚙️ `ci`
- 📚 `docs`
- ✨ `feat`
- 🐛 `fix`
- 🚀 `perf`
- 📦 `refactor`
- 🗑  `revert`
- 💎 `style`
- 🚨 `test`

---
### Appendix B: Commit Message Structure

```
<type>(optional scope): <subject>

<optional body>

<optional footer(s)>
```

#### Rules

- Type MUST be in the list provided in [Appendix A](#appendix-a-commitlint-commit-types)
- Type MUST be all lowercase
- Type CANNOT be empty


- Subject MUST start lowercase
- Subject CANNOT be empty
- Subject CANNOT end in a period


- Max length of `<type>(scope): <subject>` is 100 chars


- Body MUST be preceded by a blank line
- Max length of body is 100 chars PER LINE


- Footer MUST be preceded by a blank line
- Max length of footer is 100 chars PER LINE

### Examples

#### Commit message with description and BREAKING CHANGE footer:
```
feat: allow provided config object to extend other configs

BREAKING CHANGE: `extends` key in config file is now used for
extending other config files
```
#### Commit message with `!` to draw attention to breaking change:
```
feat!: send an email to the customer when a product is shipped
```
#### Commit message with scope and `!` to draw attention to breaking change:
```
feat(api)!: send an email to the customer when a product is shipped
```
#### Commit message with both `!` and BREAKING CHANGE footer
```
chore!: drop support for Node 6

BREAKING CHANGE: use Javascript features not available in Node 6
```
#### Commit message with no body
```
docs: correct spelling of CHANGELOG
```
#### Commit message with scope
```
feat(lang): add Polish language
```
#### Commit message with multi-paragraph body and multiple footers
```
fix: prevent racing of requests

Introduce a request id and a reference to latest request.
Dismiss incoming responses other than from latest request.

Remove timeouts which were used to mitigate the racing issue
but are obsolete now.

Reviewed-by: Z
Refs: #123
```

### Appendix C: Reasons for using [Conventional Commits](https://www.conventionalcommits.org)

- Automatically generated CHANGELOGs
- Automatically determines a semantic version bump (based on the types of commits landed)
- Communicating the nature of changes to teammates, the public, and other stakeholders
- Triggering build and publish processes
- Tames the chaos of multiple developers' bad habits in commit messages and changelogs

---

Remember:

> _We see much further, and reach much higher, when standing upon the shoulders of giants_

:tada: THANK YOU :tada:
