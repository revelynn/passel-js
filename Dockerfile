
FROM node:18

WORKDIR /app

COPY package.json /app

# The error is caused because the package.json file is being copied, but not the package-lock.json file
# So we need to copy both files in order to install the application dependencies

COPY package-lock.json /app

# Install the application dependencies

RUN npm install

# Now that we have both package.json and package-lock.json files copied, the application dependencies can be installed successfully

# Copy the rest of the application files into the working directory

COPY . /app

CMD ["npm", "start"]
