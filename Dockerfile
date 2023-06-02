# Dockerfile for azure-vote-back
FROM mcr.microsoft.com/oss/bitnami/redis:6.0.8
ENV ALLOW_EMPTY_PASSWORD=yes

# Dockerfile for azure-vote-front
FROM mcr.microsoft.com/azuredocs/azure-vote-front:v1
ENV REDIS=azure-vote-back

# Expose the necessary ports
EXPOSE 6379 8081
