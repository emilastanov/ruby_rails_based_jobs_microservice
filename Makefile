pull:
	git pull
	docker stop ast_jobs-container
	docker build . --tag apaem/astpro-jobs
	docker run -d -p 8083:3000 --rm --name ast_jobs-container apaem/astpro-jobs
run:
	docker build . --tag apaem/astpro-jobs
	docker run -d -p 8083:3000 --rm --name ast_jobs-container apaem/astpro-jobs
stop:
	docker stop ast_jobs-container
reload:
	make stop
	make run

