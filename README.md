# DS210 Sp26 B1 Knowledge Checks

As convenience, you can maintain your answers to the knowledge checks by forking
this repository and editing the `knowledge_checks-exported.md` file.  Then, you
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

