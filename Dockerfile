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
RUN pwd
COPY ./react-app/ ./app1/app2
RUN ls react-app
RUN  echo "-----------------------------------------------------------" 
RUN ls react-app/app1
RUN ls react-app/app1/app2
RUN npm i
# add app
COPY . ./
# start app
CMD ["npm", "start"]
