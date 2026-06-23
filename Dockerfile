# use node 20
FROM node:20

# create a new folder inside the docker
WORKDIR /app

# Copy depedency files first (better caching) GPT told this
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Run tests
CMD ["npm", "test"]