# Grunt runner docker image

Designed to run for Oxid theme.

The image expects project folder to be binded to `/app`. If you have Gruntfile.js in the nested folders, please change WORKDIR with -w flag as per example below.

Example
```
docker run --rm -v $(pwd)/oxideshop:/app -w="/app/source/Application/views/mytheme" mprokopov/oxid-grunt-runner build
```
