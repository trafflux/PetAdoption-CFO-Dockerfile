FROM node:6.9-slim
	
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
#Version Selector. currently unused
ENV RELEASE_VERSION 1.0.0

RUN apt-get update \
	&& apt-get install -y git-core \
	&& apt-get clean \
	&& rm -r /var/lib/apt/lists/*

# Bundle app source
RUN git clone https://github.com/cforlando/PetAdoption-API.git /usr/src/app

RUN npm install

CMD [ "npm", "start" ]