FROM node:alpine
# Label can be any kv pair.
LABEL author="Brendan Prednis"

# make a folder where our app will live
# RUN mkdir -p /usr/bin/app

# ENV variables
ENV NODE_ENV=production
ENV PORT=8080

# use a docker workdir. This is the directory the linux container will run software in.
WORKDIR /var/www

# what files to copy: left is the directory from, right is the dir to (usually workdir)
COPY package.json yarn.lock ./

RUN yarn install

# ./ is the same as doing /var/www
COPY . ./ 

# Expose what web server we want.
EXPOSE ${PORT}
# what platform to access and how to start your app.
ENTRYPOINT [ "yarn", "start", "${PORT}" ]

# finally, build with: "docker build -t <image name here> . "A
# since we have our docker file as a node.dockerfile, we use the -f flag. ex: docker build -t nodeapp -f node.dockerfile . 
# if you want to add to a docker registry: "docker build -t <registry>/<name>:<tag> . "
# the docker registry name can be you or your company, depending on how you are required to store your images. 
# tages allow you to pull down a VERY specific version, but can you automate the versioning system? 
# to remove images: docker rmi <imageID>