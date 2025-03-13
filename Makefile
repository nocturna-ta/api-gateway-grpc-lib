.PHONY: gen clean

PROTO_DIR=proto
MODULE=github.com/nocturna-ta/api-gateway-grpc-lib

gen:
	@echo "Generating Go Code from proto files..."
	@protoc -I ${PROTO_DIR} --go_opt=module=${MODULE} --go_out=. --go-grpc_opt=module=${MODULE} --go-grpc_out=. ${PROTO_DIR}/*.proto

clean:
	@echo "Cleaning generated files..."
	rm -rf proto/blockchain/v1/*.pb.go
	rm -rf proto/voting/v1/*.pb.go