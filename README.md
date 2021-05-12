# mzabolotnov_microservices
mzabolotnov microservices repository

Поднят instance в yс. На нем установлен docker. Предпринята попытка развертывания контейнера с приложением, на образе 18.04 и 16.04. Приложение не стартует, ниже приведен лог.

mike@q190m20:~/Sources/mzabolotnov_microservices-1/docker-monolith$ docker ps
CONTAINER ID   IMAGE           COMMAND       CREATED          STATUS          PORTS     NAMES
a1092fa65011   reddit:latest   "/start.sh"   23 seconds ago   Up 22 seconds             reddit
mike@q190m20:~/Sources/mzabolotnov_microservices-1/docker-monolith$ docker logs a1092fa65011
about to fork child process, waiting until server is ready for connections.
forked process: 10
child process started successfully, parent exiting
Puma starting in single mode...
* Puma version: 5.3.1 (ruby 2.3.1-p112) ("Sweetnighter")
*  Min threads: 0
*  Max threads: 5
*  Environment: development
*          PID: 21
/reddit/helpers.rb:4: warning: redefining `object_id' may cause serious problems
/reddit/app.rb:11:in `block in <top (required)>': uninitialized constant Mongo::Client (NameError)
	from /var/lib/gems/2.3.0/gems/sinatra-2.0.8.1/lib/sinatra/base.rb:1427:in `configure'
	from /var/lib/gems/2.3.0/gems/sinatra-2.0.8.1/lib/sinatra/base.rb:1919:in `block (2 levels) in delegate'
	from /reddit/app.rb:10:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from config.ru:1:in `block in <main>'
	from /var/lib/gems/2.3.0/gems/rack-2.2.3/lib/rack/builder.rb:116:in `eval'
	from /var/lib/gems/2.3.0/gems/rack-2.2.3/lib/rack/builder.rb:116:in `new_from_string'
	from /var/lib/gems/2.3.0/gems/rack-2.2.3/lib/rack/builder.rb:105:in `load_file'
	from /var/lib/gems/2.3.0/gems/rack-2.2.3/lib/rack/builder.rb:66:in `parse_file'
	from /var/lib/gems/2.3.0/gems/puma-5.3.1/lib/puma/configuration.rb:345:in `load_rackup'
	from /var/lib/gems/2.3.0/gems/puma-5.3.1/lib/puma/configuration.rb:267:in `app'
	from /var/lib/gems/2.3.0/gems/puma-5.3.1/lib/puma/runner.rb:143:in `load_and_bind'
	from /var/lib/gems/2.3.0/gems/puma-5.3.1/lib/puma/single.rb:44:in `run'
	from /var/lib/gems/2.3.0/gems/puma-5.3.1/lib/puma/launcher.rb:181:in `run'
	from /var/lib/gems/2.3.0/gems/puma-5.3.1/lib/puma/cli.rb:80:in `run'
	from /var/lib/gems/2.3.0/gems/puma-5.3.1/bin/puma:10:in `<top (required)>'
	from /usr/local/bin/puma:23:in `load'
	from /usr/local/bin/puma:23:in `<main>'
! Unable to load application: NameError: uninitialized constant Mongo::Client
