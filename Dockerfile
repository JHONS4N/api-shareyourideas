FROM node
COPY . /var/www
WORKDIR /var/www
RUN npm install --only=production
ENV PORT=3000
EXPOSE 5000
ENTRYPOINT ["npm","start"]