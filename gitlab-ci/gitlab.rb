external_url 'http://192.168.223.233'
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password').gsub("\n", "")
