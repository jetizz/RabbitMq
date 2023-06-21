FROM rabbitmq:3.12.0-management

RUN mkdir /opt/init
WORKDIR /opt
COPY ["./entrypoint.sh", "/opt"]
ENTRYPOINT ["/bin/bash", "/opt/entrypoint.sh"]
CMD ["rabbitmq-server"]

# Auto-health check to rabbit service status
HEALTHCHECK --interval=20s --timeout=5s --start-period=30s \
CMD rabbitmqctl status || exit 1