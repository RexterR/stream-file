clean-files:
	rm -rf files/*

clean-pb:
	rm -rf internal/pb

gen:
	protoc -I=$$PWD --go_out=$$PWD --go-grpc_out=$$PWD $$PWD/pkg/proto/*.proto

server:
	@echo "Running File Server..."
	mkdir -p files
	go run cmd/server/main.go -port 1500

client:
	@echo "Installing FileServer CLI..."
	go install cmd/client/fileServer.go

.PHONY: clean-pb gen server client