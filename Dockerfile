# pull the official base image
FROM node:alpine
ARG DIRECTORY=demo
RUN find / -type f -name “react-app”
# set working direction
WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# install application dependencies
COPY package.json ./
COPY package-lock.json ./
RUN ls /home/node/
RUN pwd
COPY $DIRECTORY /app/
RUN ls ./
RUN npm i
# add app
COPY . ./
# start app
CMD ["npm", "start"]
