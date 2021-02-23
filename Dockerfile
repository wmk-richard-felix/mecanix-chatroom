FROM node:14

RUN node --version

RUN git clone https://github.com/wmk-richard-felix/mecanix-chatroom.git

WORKDIR /chatroom

RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN yarn

RUN yarn install
RUN yarn build

EXPOSE 8080

CMD [ "yarn", "serve" ]