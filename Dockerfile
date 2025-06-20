FROM node:20-slim
WORKDIR /usr/src/app
COPY src/package*.json ./
RUN npm install --omit=dev
COPY src/ .
EXPOSE 3000
CMD ["node", "index.js"]