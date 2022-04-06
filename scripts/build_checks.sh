#!/bin/bash
set -eo pipefail
project_name=md-to-docx

echo Run Black.
poetry run black $project_name tests --check

echo Run Flake8.
poetry run flake8 $project_name tests

echo Run  isort.
poetry run isort $project_name tests

echo Run Mypy.
poetry run mypy $project_name tests

echo Run Unit tests.
poetry run pytest
