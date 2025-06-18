FROM node:20-alpine

WORKDIR /app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN npm install

COPY . .

ENV DATABASE_URL=postgresql://postgres:Sarthak14@postgresdb:5432/postgres
#instead of localhost:5432 use the container name 
RUN echo $DATABASE_URL


RUN DATABASE_URL=$DATABASE_URL npx prisma migrate dev
RUN npx prisma generate
RUN npm run build

EXPOSE 3000

# Use environment variable for database URL
CMD ["npm", "start"]