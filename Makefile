dist: clean
	cp -prv *.html css js lib plugin assets video dist/

clean:
	rm -rf dist
	mkdir dist

deploy: dist
	bin/s3-sync
