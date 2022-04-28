git:
  pkg.installed: []
  git.cloned:
   - name: https://github.com/IvanTatarnikov/www-hello-world.git
   - target: /www-hello-world
   - require:
     - pkg: git