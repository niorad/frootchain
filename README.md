# Frootchain
## Simple Frontend-Toolchain with as few outside dependencies as possible.

This is a frontend-toolchain for use in projects without "advanced" JS-Frameworks.
It's main purpose is to simplify development of html-templates for usage in server-side projects.

## Goals
- work on Mac/Lin/Win with as few outside-dependencies as possible (**WIP**), in order to make it more accessible to Frontend-Juniors and Backend-Developers
- HTML-Files have to be viewable without a running local-server

## Features
- HTML-Files are being processed by **Froot** (included), a file-processor which includes files into other files
  Example: >>>"./partials/header.html" will be replaced by the contents of header.html
- JS-Files are being simply concatenated without further parsing
- SCSS is compiled by **SASSC** (included)
- Everything is glued together by plain bash-scripts; the Windows-Version will work with .bat-Files



