# go-gqlgen-deferred-execution-example

This is a Go example of using the [GQLGEN](https://gqlgen.com/) GraphQL server
library.

It's an extension of the discussion [**here**](https://github.com/99designs/gqlgen/discussions/2600).

We have two mutations in our selection set:

```graphql
mutation {
  createFoo(input: {id: "1"}) {
    id
  }

  createBar(input: {id: "1"}) {
    id
  }
}
```

But we want these mutations to execute together rather than sequentially and 
independently.

## Getting started

### Start the server

Start the GraphQL server on port 8081:

```shell
make run
```

### Hit the server

Visit [localhost:9097](http://localhost:9097/) and run the above mutation!
