FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["npm", "run", "deploy"]
EXPOSE 10000