# escape=`
FROM node:10 as builder

RUN npm install -g @angular/cli@8.2.1

WORKDIR /home/src
COPY src/client/. /home/src

RUN npm install && `
    ng build --prod

FROM nginx:1.16.0-alpine

COPY --from=builder /home/src/dist/client /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
