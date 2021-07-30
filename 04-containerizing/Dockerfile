FROM node:alpine-latest

# make a folder where our app will live
RUN mkdir -p /usr/bin/app

# use a docker hub id.

WORKDIR /var/www

# what files to copy: left is the directory from, right is the dir to (usually workdir)
COPY . .
# Expose what web server we want.
EXPOSE 3000

# what platform to access
ENTRYPOINT [ "node", "main.ts" ]