#!/bin/bash
# deploy to the gh-pages folder
grunt package
cd ../../../datasciventures-ghpages/talk/google-analytics-101/
unzip ../../../datasciventures/talk/google-analytics-101/reveal-js-presentation.zip
cp -R ../../../datasciventures/talk/google-analytics-101/markdown/* markdown/
