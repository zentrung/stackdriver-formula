stackdriver-agent-installed:
  cmd.script:
    - name: https://repo.stackdriver.com/stack-install.sh
    - cwd: /tmp
    - args: --write-gcm
    - unless: dpkg -s stackdriver-agent

stackdriver-agent-running:
  service.running:
    - name: stackdriver-agent
    - enable: True
    - require:
      - stackdriver-agent-installed
