# Use the official .NET SDK image as a base image
FROM mcr.microsoft.com/dotnet/sdk:8.0

# Set the working directory inside the container
WORKDIR /app

# Copy the contents of the local ./app directory into the container at /app
COPY ./app /app

# Set environment variables
ENV ASPNETCORE_URLS=http://+:80
ENV DOTNET_USE_POLLING_FILE_WATCHER=1

# Expose port 80 for the application
EXPOSE 80

# Run the following commands when the container starts
CMD ["bash", "-c", "dotnet restore && dotnet watch run --no-launch-profile"]