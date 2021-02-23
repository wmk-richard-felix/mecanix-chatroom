FROM node:14

RUN node --version
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN yarn

# replace default chatroom index.html
COPY chatroom_handoff.html index.html

RUN yarn build

EXPOSE 8080

CMD [ "yarn", "serve" ]