.PHONY: default
default:
	@echo 'make conf|docker-compose.yaml|clean'

.PHONY: conf
conf:
	@for i in {1..6} ; do \
			cat ./redis.conf.tmpl | \
			sed "s|{{port}}|700$$i|" | sed "s|{{host}}|redis-$$i|" \
			> "./conf/redis-$$i.conf" ; \
			echo "Wrote to ./conf/redis-$$i.conf" ; \
	done

docker-compose.yaml:
	@cat ./docker-compose.yaml.gotmpl | \
	docker run --rm -i hairyhenderson/gomplate -f - \
	> ./docker-compose.yaml ; \
	echo "Wrote to ./docker-compose.yaml"

.PHONY: clean
clean:
	@rm -vf ./data/redis-*/nodes.conf