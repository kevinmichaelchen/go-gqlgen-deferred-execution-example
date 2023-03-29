PORT = 8081

.PHONY: run
run:
	PORT=$(PORT) go run main.go

.PHONY: gen-server
gen-server:
	go run github.com/99designs/gqlgen generate
