# toolbox-latex

Personal LaTeX toolbox containing reusable packages and templates used across my LaTeX projects.

## Features

* Reusable LaTeX packages (`.sty`) and document classes (`.cls`)
* Reusable document templates
* Integration with TeX Live through the user `texmf` directory
* Compatible with my `toolbox-make` project

## Installation

```bash
make install
```

This command creates the `~/texmf/tex/latex/chinjto` symbolic link, allowing TeX Live to discover the provided packages automatically.

Concretely, the link points to:

```text
~/texmf/tex/latex/chinjto -> ~/.latex/packages/chinjto
```

## Usage

Example:

```latex
\usepackage{chinjto-core}
```

## Available packages

The toolbox is organized into reusable LaTeX packages grouped by domain. Each package can be used independently or through a higher-level package aggregating several modules.

```text
packages/
└── chinjto/
    ├── core/
    │   ├── chinjto-core
    │   └── chinjto-core-colors
    ├── cheatsheet/
    │   ├── chinjto-cheatsheet
    │   ├── chinjto-cheatsheet-list
    │   ├── chinjto-cheatsheet-section
    │   └── chinjto-cheatsheet-tag
    └── cv/
        └── chinjto-cv-resume
```

### Core

Common packages shared across all document types.

| Package               | Description                                                                  |
|-----------------------|------------------------------------------------------------------------------|
| `chinjto-core`        | Common utilities and shared configuration                                    |
| `chinjto-core-colors` | Color palette definitions<br/>Change the `accent` value here to customize it |

### Cheatsheet

Packages dedicated to quick-reference and cheat sheet documents.

| Package                      | Description                                                |
|------------------------------|------------------------------------------------------------|
| `chinjto-cheatsheet`         | Main cheatsheet package aggregating all cheatsheet modules |
| `chinjto-cheatsheet-list`    | Custom list styles (`itemize`, `description`, ...)         |
| `chinjto-cheatsheet-section` | Section and subsection styling                             |
| `chinjto-cheatsheet-tag`     | Inline tags and badges                                     |

### CV

Packages dedicated to résumé generation.

| Package             | Description           |
|---------------------|-----------------------|
| `chinjto-cv-resume` | Resume document class |

## License

MIT License.
