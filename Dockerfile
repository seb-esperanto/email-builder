FROM node
WORKDIR /app
COPY package.json .
RUN npm install -g pnpm
RUN pnpm install
COPY . .
EXPOSE 3000
CMD ["pnpm", "dev"]
