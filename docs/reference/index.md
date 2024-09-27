<!-- Copyright © SixtyFPS GmbH <info@slint.dev> ; SPDX-License-Identifier: MIT -->
<!-- cSpell: ignore dgettext ngettext xgettext -->

```{image} https://github.com/slint-ui/slint/workflows/CI/badge.svg
:target: https://github.com/slint-ui/slint/actions
:alt: GitHub CI Build Status
```

```{image} https://img.shields.io/github/discussions/slint-ui/slint
:target: https://github.com/slint-ui/slint/discussions
:alt: GitHub Discussions
```

# Overview

[Slint](https://slint.dev/) is a toolkit to efficiently develop fluid graphical user interfaces for any display: embedded devices and desktop applications.

## The .slint Markup Language

Slint comes with a markup language that is specifically designed for user interfaces. This language provides a
powerful way to describe graphical elements, their placement, and the flow of data through the different states. It is a familiar syntax to describe the hierarchy
of elements and property bindings. Here's the obligatory "Hello World":

```slint
    export component HelloWorld inherits Window {
        width: 400px;
        height: 400px;

        Text {
           y: parent.width / 2;
           x: parent.x + 200px;
           text: "Hello, world";
           color: blue;
        }
    }
```

## Architecture

An application is composed of the business logic written in C++ and the `.slint` user interface design markup, which
is compiled to native code.

```{image} https://slint.dev/resources/architecture.drawio.svg
:alt: Architecture Overview
```

## Developing

You can create and edit `.slint` files using our [Slint Visual Studio Code Extension](https://marketplace.visualstudio.com/items?itemName=Slint.slint),
which features syntax highlighting and live design preview.

For a quick edit and preview cycle, you can also use the :code:`slint-viewer` command line tool, which can be installed using :code:`cargo install slint-viewer`,
if you have [Cargo](https://marketplace.visualstudio.com/items?itemName=Slint.slint) installed.

```{toctree}
:hidden:
:maxdepth: 2
:caption: Overview

src/overview/philosophy.md
src/overview/components.md
src/overview/types.md
src/overview/layouts.md
src/overview/states.md
src/overview/animation.md
src/overview/reactive.md
src/overview/functions.md
```

```{toctree}
:hidden:
:maxdepth: 2
:caption: C++

src/cpp/cmake_reference.md
src/cpp/cmake.md
src/cpp/generated_code.md
src/cpp/getting_started.md
src/cpp/overview.md
src/cpp/types.md
src/cpp/mcu/intro.md
src/cpp/mcu/esp_idf.md
src/cpp/mcu/stm32.md
src/cpp/mcu/generic.md
```

```{toctree}
:hidden:
:maxdepth: 2
:caption: Node

src/node/cover.md
```

```{toctree}
:hidden:
:maxdepth: 2
:caption: Introduction (old)

src/introduction/index.rst
src/introduction/supported_platforms.md
src/quickstart/index.rst
```

```{toctree}
:hidden:
:maxdepth: 2
:caption: Language Reference

src/language/index.rst
src/language/concepts/index.rst
src/language/syntax/index.rst
src/language/builtins/index.rst
src/language/widgets/index.rst
```

```{toctree}
:hidden:
:maxdepth: 2
:caption: Recipes & Examples

src/recipes/recipes.md
```

```{toctree}
:hidden:
:maxdepth: 2
:caption: Advanced Topics

src/advanced/debugging_techniques.md
src/advanced/style.md
src/advanced/backends_and_renderers.md
```
