FROM node:alpine

WORKDIR '/app'

#  re-build image only if package.json is re-built
COPY package.json .
RUN npm install 
COPY . .

CMD ["npm","start"]