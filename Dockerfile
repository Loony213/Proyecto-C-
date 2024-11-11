# Usa la imagen base de .NET SDK
FROM mcr.microsoft.com/dotnet/sdk:6.0

# Copia el archivo HolaMundo.cs al contenedor
COPY HolaMundo.cs /app/HolaMundoApp/HolaMundo.cs

# Establece el directorio de trabajo
WORKDIR /app/HolaMundoApp

# Crea el proyecto C#
RUN dotnet new console

# Publica el proyecto
RUN dotnet publish -c Release -o out

# Ejecuta el programa C#
CMD ["dotnet", "out/HolaMundoApp.dll"]
