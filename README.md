# Python Starter Template

A blazing-fast Python starter template designed to simplify and accelerate development with modern tools and practices.

## Key Features

- **Streamlined Dependency Management**: 
  Powered by `uv` and `devcontainers`, this setup ensures fast and straightforward setup inside a consistent environment.
  
- **Effortless Code Quality**: 
  Integrated formatting and linting powered by `ruff` help maintain clean and consistent code.
  
- **Pre-Commit Hooks**: 
  Ensure code quality and enforce standards automatically before every commit using `pre-commit`.

## Setup

Open the project inside WSL using:

```bash
code .
```
When asked, chose "Open in Devcontainers".

This installs all required dependencies, sets up the environment, and prepares your project for development.

## Managing Dependencies

### Adding Python Dependencies

To add a new runtime dependency to the project, use:

```bash
uv add <package-name>
```

### Adding Development Dependencies

To add a new development-only dependency, use:

```bash
uv add <package-name> --dev
```

## Running Your Code

### Execute Python Scripts

Run your scripts with:

```bash
uv run <package/script.py>
```

## Ensuring Code Quality

### Running Tests

Run all tests with:

```bash
make test
```

### Pre-Commit Hooks

Run `pre-commit` hooks to automatically check and format code before committing:

```bash
make pre-commit
```
