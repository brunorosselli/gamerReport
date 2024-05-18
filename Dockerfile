# Use a imagem base OpenJDK 17 Slim
FROM openjdk:17-slim

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo JAR da aplicação para o diretório de trabalho
COPY build/libs/gamer.report.jar /app/gamer.report.jar

# Se necessário, adicione um comando para conceder permissões ao script wait-for-it.sh
# RUN chmod +x /wait-for-it.sh

# Exponha a porta 8080
EXPOSE 8080

# Defina o comando padrão para executar a aplicação quando o contêiner for iniciado
CMD ["java", "-jar", "gamer.report.jar"]
