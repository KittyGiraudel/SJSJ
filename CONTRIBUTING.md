# Contributing

## Adding a new entry

1. Create a Markdown file (`.md`) in `_glossary` folder, named after the entry in uppercase (e.g. `REACT.md`).
2. Start this file with a [YAML Front Matter](https://jekyllrb.com/docs/frontmatter/) containing:
  - `title`: the name of the entry;
  - `excerpt`: a short description of the entry (between 60 and 180 characters).
3. Start the content with the title of the entry (e.g. `# React`).
4. And finally the content written in Markdown. See below for [content guidelines](#content-guidelines).
5. Add the entry in `README.md` using the title and the description you provided in the YAML Front Matter of your file.

For example, here is what `_glossary/REACT.md` could look like:

```markdown
---
title: React
excerpt: a library developed and used at Facebook for building user interfaces
---

# React

Content for the React entry…
```

## Content guidelines

The goal of the project is to explain technical jargon to new-comers, so content should be written with simplicity in mind. Avoid buzzwords and explanations assuming too much technical knowledge from the users.

An entry should live somewhere between 200 and 800 words. Too little, and it is unlikely to provide any additional value to the description. Too long and it’s getting too deep and complex to provide real and quick value. Get to the point, provide some details if needed but avoid deep examples and explanations. An entry should not replace an existing documentation or a Wikipedia page: it should be concise and helpful.

Feel free to include images (hotlinked, or placed in `assets/images/`) and code snippets to expand around the main idea, as well as further readings at the end, if you would like to provide extra resources on the topic. Some people might be interested in digging deeper.

## Abbreviations

There are a lot of abbreviations repeated throughout the list of entries. To avoid cluttering the content with repeated acronym definitions, you can define them in [`_data/abbr.yml`](https://github.com/KittyGiraudel/SJSJ/blob/gh-pages/_data/abbr.yml). Jekyll will automatically convert them all in the content.

For instance, adding the `CLI` abbreviations would look like this:

```yaml
CLI: Command Line Interface
```

*Note: abbreviations are in alphabetical order. Please try to keep it this way.*
