FROM python:3.11-slim

WORKDIR /app

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

RUN groupadd --system appgroup \
    && useradd --system --gid appgroup --home-dir /app --create-home --shell /usr/sbin/nologin appuser

COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt

COPY --chown=appuser:appgroup app.py /app/app.py
COPY --chown=appuser:appgroup entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

USER appuser

EXPOSE 5000

ENTRYPOINT ["/app/entrypoint.sh"]