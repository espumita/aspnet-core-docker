FROM microsoft/dotnet

WORKDIR /app
COPY . .

ENV ASPNETCORE_URLS http://+80
EXPOSE 80

RUN dotnet restore

RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "out/app.dll"]
