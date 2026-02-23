FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
EXPOSE 5000
CMD ["npm","start"]


# FROM node:20-alpine
# WORKDIR /app
# COPY package*.json ./
# RUN npm install 
# COPY . .
# EXPOSE 5000
# ENTRYPOINT [ "node", "start"]
