FROM mcr.microsoft.com/dotnet/core/sdk:2.2

WORKDIR /home/app

VOLUME [ "/home/app" ]

EXPOSE 5000

ENTRYPOINT [ "dotnet" ]

CMD [ "run" ]
