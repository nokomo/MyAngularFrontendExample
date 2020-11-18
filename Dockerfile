FROM node:15.2.1
ENV WDIR=/app
WORKDIR $WDIR
COPY package.json ./
RUN npm install -g @angular/cli@11.0.1
RUN npm install
COPY . .
EXPOSE 4200

CMD npm start



