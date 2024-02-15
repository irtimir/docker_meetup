FROM python:3.12-slim

WORKDIR /app/

COPY ./print_args.py .

ENTRYPOINT ["./print_args.py"]
CMD ["ping", "google.com"]