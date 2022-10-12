# pull the official base image
FROM node:alpine
ARG DIRECTORY=demo
# set working direction
WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
RUN echo $DIRECTORY
# install application dependencies
COPY package.json ./
COPY package-lock.json ./
COPY ./* /app/
RUN ls /app/
RUN npm i
# add app
COPY . ./
# start app
CMD ["npm", "start"]
