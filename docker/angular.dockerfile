FROM node:10

RUN npm install -g @angular/cli@8.3.5

WORKDIR /home/app

VOLUME [ "/home/app" ]

EXPOSE 4200

ENTRYPOINT [ "ng" ]

# On windows hosts for linux containers, the angular cli needs to poll
# since docker does not support change detection with this setup.
CMD [ "serve", "--host", "0.0.0.0", "--poll", "200" ]
