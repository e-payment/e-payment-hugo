# e-payment.github.io

hugo source for e-payment.github.io

## Write Content

	hugo new posts/post-name.md

## Preview

	hugo server -D

## Build

	make build

## Publish

	make publish

## Notes

### Setting Up Google Analytics on Hugo

	mkdir -p layouts/partials
	cp themes/{THEME-NAME}/layouts/partials/header.html layouts/partials

Add code below to `header.html`

	{{ template "_internal/google_analytics.html" . }}

 - [Setting Up Google Analytics on Hugo](http://cloudywithachanceofdevops.com/posts/2018/05/17/setting-up-google-analytics-on-hugo/)