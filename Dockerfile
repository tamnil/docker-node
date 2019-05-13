FROM node:10

# RUN adduser tamnil
# RUN usermod -a -G www-data tamnil
RUN mkdir -p /app
# RUN chown tamnil: /app
WORKDIR /app
COPY package.json /app
RUN npm install
# COPY . /app
EXPOSE 3000
USER tamnil
CMD  node app.js
