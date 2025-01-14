all:
	uv sync

clean:
	rm -rf .ruff-cache
	rm -rf .venv

format:
	ruff format .

test:
	uv run pytest

pre-commit-install:	
	pre-commit install

pre-commit:
	pre-commit run --all-files