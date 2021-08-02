# The app

## build

s2i build . tutorial/nodejs-14-fedora myapp

## run

docker run -it -p 8080:8080 myapp
