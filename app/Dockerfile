FROM node:20-slim

WORKDIR /app

# Copy only dependency files first
COPY package*.json ./

RUN npm install --omit=dev

# Copy the rest of the app
COPY app/ ./

EXPOSE 8080

CMD ["npm", "start"]