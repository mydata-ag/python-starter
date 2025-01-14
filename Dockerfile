FROM python:3.12-slim

ENV UV_LINK_MODE=symlink

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    curl build-essential git

# Copy only requirements to cache them in docker layer
WORKDIR /app

COPY . ./

# Project initialization:
RUN pip install uv && uv sync

# add BUILD_COMMIT and BUILD_TAG as ENV
ARG BUILD_COMMIT
ARG BUILD_TAG
ENV BUILD_COMMIT=${BUILD_COMMIT}
ENV BUILD_TAG=${BUILD_TAG}
ENV PATH="/app/.venv/bin:$PATH"