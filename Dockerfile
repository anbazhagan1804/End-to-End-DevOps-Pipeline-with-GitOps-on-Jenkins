FROM node:18-alpine
WORKDIR /app
COPY ../sample-app/package.json ./
RUN npm install --production
COPY ../sample-app/index.js ./
EXPOSE 3000
CMD ["node", "index.js"]