include:
  - stackdriver

extend:
  stackdriver-agent-running:
    service:
      - running
      - watch:
        - file: /opt/stackdriver/collectd/etc/collectd.d/redis.conf

/opt/stackdriver/collectd/etc/collectd.d/redis.conf:
  file.managed:
    - source: salt://stackdriver/files/redis.conf
    - template: jinja
