#!/bin/bash
PY_VERSION=3.11
BENCHMARK="import timeit; print(timeit.timeit('import json; json.dumps(list(range(10000)))', number=5000))"
docker run --rm -t python:$PY_VERSION-slim python -c "$BENCHMARK"
docker run --rm -t python:$PY_VERSION-alpine python -c "$BENCHMARK"