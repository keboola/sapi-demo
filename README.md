# SAPI Demo

Demo project using [Angular](http://angularjs.com) and [Keboola Angular Library](http://keboola.github.com/angular-kb) scaffolded by [Yeoman](http://yeoman.io/).


## Development

* Clone the repo
* Instal global dependencies `npm install -g grunt-cli bower`
* Install local dependencies `npm install && bower install --dev`
* Server, watch and test with live reload `grunt server`

## Build dist package

* `grunt` builds app into `dist` folder


## Deployment to S3

If you deploy to S3, be sure to set **Cache-Control** header for **index.html** file:

	Cache-Control: no-cahe
	
This is set directly in S3, in AWS Console. If you do not set chache control, newer version will fail to update in browser.

TODO: handle S3 upload with grunt task

Read more in [Keboola Public Project Guidelines](https://github.com/keboola/public-project-guidelines)

