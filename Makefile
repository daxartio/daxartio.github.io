.DEFAULT_GOAL := generate

.PHONY: generate
generate:
	mkdir site || true
	cp src/avatar.jpeg site/avatar.jpeg
	docker-compose run --rm pandoc pandoc src/profile.yml -o site/index.html --template=template/index.html

.PHONY: clean
clean:
	rm -r site || true
