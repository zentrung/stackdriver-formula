include:
  - stackdriver

extend:
  stackdriver-agent-running:
    service:
      - running
      - watch:
        - file: /opt/stackdriver/collectd/etc/collectd.d/elasticsearch.conf

/opt/stackdriver/collectd/etc/collectd.d/elasticsearch.conf:
  file.managed:
    - source: salt://stackdriver/files/elasticsearch.conf
    - template: jinja
