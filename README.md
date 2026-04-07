# DS210 Sp26 B1 Knowledge Checks

As convenience, you can maintain your answers to the knowledge checks by forking
this repository and editing the `knowledge_checks_part*_-exported.md` files.  Then, you
can build the book and view your changes in your browser.

## Building the Book

Fork the repository to your personal GitHub account.

Then clone your forked repository to your local machine.

```bash
git clone https://github.com/your-username/ds210-sp26-b1-knowledge-checks.git
cd ds210-sp26-b1-knowledge-checks
```

If you haven't already, install `mdbook`:

```bash
cargo install mdbook
```

You only need to do that once.

To build the mdbook, run the following command:

```bash
mdbook build
```

## Viewing the Book

To serve the book locally, run the following command:

```bash
mdbook serve --open
```

This will also build the book.

## Generating LaTeX from Markdown

Use `md2tex.sh` to convert a knowledge-check Markdown file into a `.tex` file in
`./pdfs/`.

The script takes an optional source file path:

```bash
./md2tex.sh
```

By default, this uses:

```text
./src/knowledge_checks_part2-exported.md
```

You can also provide a different source file:

```bash
./md2tex.sh ./src/knowledge_checks_part1-exported.md
```

The output filename is derived automatically from the source filename and written
to `./pdfs/<source-basename>.tex`.

After generating the `.tex` file, you can compile it to PDF using your LaTeX tools
in VSCode (for example, LaTeX Workshop) or upload it to Overleaf and build there.

## Important Notes

If you build the mdbook as described above in a VS Code terminal, you can make edits to your local copy of the knowledge check, and see updates to the book in your browser every time you save the file.
