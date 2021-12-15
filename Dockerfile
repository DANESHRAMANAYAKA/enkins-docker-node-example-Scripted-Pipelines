FROM mhart/alpine-node:6.1.0

# Create app directory
RUN mkdir -p /app
WORKDIRt /app

# Install app dependencies
COPY . /app/
RUN npm install

EXPOSE 3000
CMD [ "npm", "start" ]
