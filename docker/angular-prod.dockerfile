# escape=`
FROM node:10

RUN npm install -g @angular/cli@8.2.1

WORKDIR /home/src
COPY src/client/. /home/src

RUN npm install && `
    ng build --prod

ENTRYPOINT [ "bash" ]
