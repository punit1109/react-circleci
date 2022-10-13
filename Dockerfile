# pull the official base image
FROM node:alpine
ARG DIRECTORY=demo
# set working direction
WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# install application dependencies
COPY package.json ./
COPY package-lock.json ./
RUN ls -al ./app
RUN pwd
RUN mkdir ./app1 
COPY ./react-app/ ./app1/
RUN  echo "-----------------------------------------------------------" 
RUN npm i
# add app
COPY . ./
# start app
CMD ["npm", "start"]
