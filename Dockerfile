FROM twentycrm/twenty:latest

EXPOSE 3000

# Healthcheck для Timeweb (проверяет, что сервер отвечает на корне после запуска)
HEALTHCHECK --interval=30s --timeout=10s --start-period=120s --retries=5 \
  CMD curl -f http://localhost:3000/ || exit 1

# Запуск по умолчанию из образа
