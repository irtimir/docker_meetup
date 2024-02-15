FROM python:3.12-slim as base

RUN pip install --no-cache-dir rich==13.7.0


FROM python:3.12-slim

WORKDIR /app/

COPY --from=base /usr/local/lib/python3.12/site-packages/rich/. /usr/local/lib/python3.12/site-packages/rich
COPY hello.py .

CMD ["./hello.py"]
