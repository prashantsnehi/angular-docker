FROM node:16-alpine as builder

WORKDIR '/app'
COPY . .

RUN npm install -g @angular/cli@12.2.13
RUN npm install
RUN ng build

FROM nginx
RUN rm /usr/share/nginx/html/index.html
COPY --from=builder /app/dist/frontend /usr/share/nginx/html


