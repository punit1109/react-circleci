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
RUN ls -al 
RUN pwd
RUN mkdir ./app1
COPY . ./
RUN cp -r react-app ./app1/ 
RUN  echo "-----------------------------------------------------------"
RUN ls ./app1/
RUN npm i
# add app
# start app
CMD ["npm", "start"]
