dist: clean
	cp -prv index.html css js lib plugin assets dist/

clean:
	rm -rf dist
	mkdir dist

deploy: dist
	bin/s3-sync
