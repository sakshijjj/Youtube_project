FROM node:16
WORKDIR /app
COPY package*.json ./
Run npm audit fix --force
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]
