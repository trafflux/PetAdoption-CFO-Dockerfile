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
#
#	Hi, Philip -- I see your post in: 
#		https://github.com/yql/yql-tables/issues/476
#	but do not see an email address readily
#
#	I wanted to discuss some usage / documentation writing
#	particularly as to getting patches to revive an affected 
#	Debian / CPAN package and back to 'working' (there are data 
#	validity questions) again, but with the extension of reading 
#	from a file, and using a YQL subscription key [not that I see 
#	how to _buy_ one as to finance data either, but I assume you 
#	know that as well] -- see:
#		Finance-YahooQuote
#		http://dirk.eddelbuettel.com/code/yahooquote.html
#
#	Others are affected as well with changes in the formerly 'free' data:
# 	http://blog.fosstrading.com/2017/06/yahoo-finance-alternatives.html
#
#	Please let me know a phone number if a call is in order
#	
#	Russ Herrold -- herrold@owlriver.com
#
