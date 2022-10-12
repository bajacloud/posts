FROM node:alpine
	# checkov:skip=CKV_DOCKER_3: ADD REASON

WORKDIR /app
COPY package.json ./
RUN npm install
COPY ./ ./

CMD ["npm", "start"]