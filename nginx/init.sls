/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx/nginx.conf
    - user: root
    - group: root
    - mode: 644
nginx:
  pkg.installed: []
  service.running:
    - require:
      - pkg: nginx