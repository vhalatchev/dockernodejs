FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]

#FROM jenkins:1.596
 
# USER root
# RUN apt-get update -qq \
 #   && apt-get --force-yes install -y sudo \
  #    && rm -rf /var/lib/apt/lists/*
# RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
 
# USER jenkins

