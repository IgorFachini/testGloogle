FROM node:12-alpine as buildContainer
WORKDIR /app
COPY ./package.json ./package-lock.json /app/
RUN npm install
RUN npm install @quasar/cli

COPY . /app
RUN npm run build:ssr

FROM node:8-alpine

WORKDIR /app

# Get all the code needed to run the app
COPY --from=buildContainer /app/dist/ssr /app
RUN npm install
# Expose the port the app runs in
EXPOSE 3000

# Serve the app
CMD ["npm", "run", "start"]

