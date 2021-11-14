## Build

```
# very first time, add base application from things-factory (ie. operato-board)
$ yarn add @things-factory/operato-board
```

```
# install node_modules
$ yarn install
# data migration in development mode
$ yarn run migration --mode=development
# run application (@things-factory/operato-fnb) in development mode
$ DEBUG=things-factory:* yarn run serve:dev
```

```
# data migration in production mode
$ yarn run migration --mode=production
# build application (server module)
$ yarn build
# build application (client module)
$ yarn build:client
# run application (@things-factory/operato-fnb) in production mode
$ yarn run serve
```

# Browser Client

- URL : http://localhost:3000
- default user and password : admin@hatiolab.com / admin
