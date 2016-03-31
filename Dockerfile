# Base OS 
FROM saipranav/node:4.3.1

# Environment variable which can be changed with -e in docker run command
ENV NODE_ENV production

# Create a app folder in container
RUN mkdir -p /usr/src/app

# Work directory
WORKDIR /usr/src/app

# Bundle app source
COPY . /usr/src/app

# Install app dependencies
RUN npm install

# Expose port
EXPOSE 3001

# Command to run after building container
CMD node . >> /var/log/app.log 2>&1
