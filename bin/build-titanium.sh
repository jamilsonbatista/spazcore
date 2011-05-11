#!/bin/bash
# run this from the base dir of SpazCore

BUILD_FILE='builds/spazcore-titanium.js'
MIN_FILE='builds/spazcore-titanium.min.js'
BUILD_DATE=`date "+%Y-%m-%d %H:%M:%S %Z"`

COMPRESS_CMD="uglifyjs -o ${MIN_FILE} ${BUILD_FILE}"

echo "/*********** Built ${BUILD_DATE} ***********/" > $BUILD_FILE

cat libs/spazcore.js \
	vendors/date.js \
	vendors/json2.js \
	vendors/underscore.js \
	vendors/underscore.string.js \
	vendors/sha1.js \
	vendors/oauth.js \
	helpers/datetime.js \
	helpers/event.js \
	helpers/hash.js \
	helpers/javascript.js \
	helpers/json.js \
	helpers/location.js \
	helpers/string.js \
	helpers/sys.js \
	helpers/url.js \
	helpers/view.js \
	helpers/xml.js \
	libs/spazaccounts.js \
	libs/spazauth.js \
	libs/spazfilterchain.js \
	libs/spazimageurl.js \
	libs/spazimageuploader.js \
	libs/spazprefs.js \
	libs/spazshorttext.js \
	libs/spazshorturl.js \
	libs/spaztemplate.js \
	libs/spaztimeline.js \
	libs/spaztmdb.js \
	libs/spaztwit.js \
	platforms/Titanium/helpers/file.js \
	platforms/Titanium/helpers/network.js \
	platforms/Titanium/helpers/sys.js \
	platforms/Titanium/libs/spazprefs.js \
	>> $BUILD_FILE

echo $COMPRESS_CMD
$COMPRESS_CMD
