# Education

Nix flake for building and maintaining education materials.

## Grade 6 end-of-year exams

Project folder:

```sh
Grade6/end_of_year_exams
```

Typst quiz sources:

```sh
Grade6/end_of_year_exams/typst/quizzes
```

Compiled PDFs:

```sh
Grade6/end_of_year_exams/build/quizzes
```

## Commands

Enter the development shell:

```sh
nix develop
```

Inside the development shell, use these shortcuts:

```sh
qbuild  # compile Grade 6 quiz PDFs
qopen   # open/read all compiled quiz PDFs
qmath   # open/read Mathematics quiz
qlang   # open/read Language Arts quiz
qsci    # open/read Science quiz
qsoc    # open/read Social Studies quiz
```

The reader shortcuts use Zathura when a graphical display is available. If there is no display, they automatically fall back to terminal reading with `pdftotext` and `less`.

You can also run the same actions directly without entering the shell:

```sh
nix run .#build-quizzes
nix run .#open-quizzes
nix run .#open-math
nix run .#open-language-arts
nix run .#open-science
nix run .#open-social-studies
```

Build the quiz PDFs as a Nix package:

```sh
nix build .#quiz-pdfs
```

Format the flake:

```sh
nix fmt
```

## Included tooling

The flake brings in:

- `typst` for compiling `.typ` files to PDFs
- `typstyle` for Typst source formatting in the development shell
- `zathura` for graphical PDF reading/reviewing
- `poppler-utils` for terminal PDF text extraction with `pdftotext`
- `less` for terminal reading
- `nixfmt` as the Nix formatter
