build:
	hugo --gc --minify

publish:
	cp -R ./public/* ../e-payment.github.io/
