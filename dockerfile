# Use a imagem oficial do Node.js como base
FROM node:22

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /

# Copie os arquivos de dependências para o contêiner
COPY package.json package-lock.json ./ 

# Instale as dependências do projeto
RUN npm install

# Copie o restante do código do projeto para o contêiner
COPY . .

# Construa o projeto Next.js
RUN npm run build

# Exponha a porta padrão do Next.js
EXPOSE 3000

# Comando para iniciar o servidor Next.js
CMD ["npm", "start"]