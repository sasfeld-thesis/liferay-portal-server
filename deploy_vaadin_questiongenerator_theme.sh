#!/bin/sh

TARGET_PATH=tomcat-7.0.62/webapps/ROOT/html/VAADIN/themes/questiongenerator
ORIGIN_PATH=tomcat-7.0.62/webapps/qg-portlet/VAADIN/themes/questiongenerator

rm -R $TARGET_PATH

mkdir $TARGET_PATH

cp -R $ORIGIN_PATH/* $TARGET_PATH/

echo "The vaadin question generator theme was deployed on Liferay successfully"
