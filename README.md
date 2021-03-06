# Frootend
## Simple Frontend-Toolchain with as few outside dependencies as possible.

This is a toolchain for use in frontend-templating.
It's main purpose is to speed up and simplify development of html-templates for usage in mostly-server-side-projects.

Tested on Windows 10, macOS and Linux Ubuntu

## Goals
- work on Mac/Linux/Win with as few outside-dependencies as possible, in order to make it more accessible to Frontend-Juniors and Backend-Developers
- HTML-Files have to be viewable without a running local-server (usage of relative paths is mandatory)
- A complete build must not exceed three seconds

## Features
- Everything in src/ will be compiled and copied into dist/
- HTML-Files are being processed by **Froot** (included), a file-processor which includes files into other files
  Example: >>>"./partials/header.html" will be replaced by the contents of header.html
- JS-Files are first being processed by Froot and then concatenated with the libraries
- SCSS is compiled by **SASSC** (included)
- There's one script for building everything once (build.sh/bat) and one for starting a watcher and building when a file changes (dev.sh/bat)
- There's no local server included; this should be done by the developer if necessary (the server should point to the dist-folder)

## Dependencies/Prerequisites
- Currently the only dependency is fswatch, which is needed for watching file-changes on macOS and Linux. The Windows-Version works without it.
- If you get SASSC-DLL-Errors on Windows, try installing the Windows-10 Standalone SDK from https://developer.microsoft.com/de-de/windows/downloads/windows-10-sdk