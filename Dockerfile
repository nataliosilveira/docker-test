# Use a imagem oficial do Node.js como base
FROM node:14

# Crie e defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo package.json e o arquivo package-lock.json (se existir)
COPY package*.json ./

# Instale as dependências do Node.js
RUN npm install

# Copie todos os arquivos da aplicação para o diretório de trabalho no contêiner
COPY . .

# Construa a aplicação React (se necessário, você pode substituir este comando pelo script apropriado)
RUN npm run build

# Exponha a porta em que a aplicação irá ser executada (geralmente a porta 3000 para aplicações React)
EXPOSE 3000

# Comando para iniciar a aplicação quando o contêiner for iniciado
CMD ["npm", "start"]