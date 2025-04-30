# Utiliza a imagem oficial mais recente do PostgreSQL como base.
FROM postgres:latest

# Define o nome do banco de dados que será criado automaticamente ao iniciar o contêiner.
ENV POSTGRES_DB=northwind

# Define o nome do usuário padrão do PostgreSQL.
ENV POSTGRES_USER=postgres

# Define a senha do usuário padrão do PostgreSQL.
ENV POSTGRES_PASSWORD=postgres

# Copia o arquivo SQL (dump do banco de dados Northwind) para o diretório padrão de inicialização do PostgreSQL.
# Esse diretório é usado pelo PostgreSQL para executar scripts automaticamente ao iniciar o contêiner.
COPY northwind.sql /docker-entrypoint-initdb.d/