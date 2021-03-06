# escape=`
FROM mcr.microsoft.com/dotnet/core/sdk:2.2 as builder

WORKDIR /home/src
COPY src/server/api/. /home/src

RUN dotnet publish -c release `
    --runtime linux-x64 `
    --framework netcoreapp2.2 `
    --output /home/publish && `
    rm /home/publish/web.config

FROM mcr.microsoft.com/dotnet/core/aspnet:2.2

WORKDIR /home/app
COPY --from=builder /home/publish .

EXPOSE 5000

ENTRYPOINT ["dotnet", "api.dll"]
