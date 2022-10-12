# pull the official base image
FROM node:alpine
ARG DIRECTORY=demo
# set working direction
RUN ls /home/
WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# install application dependencies
RUN ls /home/node/
COPY package.json ./
COPY package-lock.json ./
RUN ls /home/node/
RUN pwd
COPY /home/circleci/demo/react-app /app/
RUN ls ./
RUN npm i
# add app
COPY . ./
# start app
CMD ["npm", "start"]
