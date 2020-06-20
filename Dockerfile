# from base image node
FROM node:12.16.3

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# copying all the files from your file system to container file system
COPY package.json .
COPY package-lock.json .

# install all dependencies
RUN npm install

# copy oter files as well
COPY ./ .

RUN npm run build

#expose the port
EXPOSE 8080

# command to run when intantiate an image
CMD ["npm","start"]