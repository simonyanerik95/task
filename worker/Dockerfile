FROM python:3.11-slim

WORKDIR /worker

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

RUN groupadd --system workergroup \
    && useradd --system --gid workergroup --home-dir /worker --create-home --shell /usr/sbin/nologin workeruser \
    && python -m pip install --no-cache-dir flask

COPY worker.py /worker/worker.py

RUN chown -R workeruser:workergroup /worker

USER workeruser

EXPOSE 5001

CMD ["python", "/worker/worker.py"]