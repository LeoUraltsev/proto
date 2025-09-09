.PHONY: gen
gen_auth:
	protoc -I proto proto/auth/*.proto --go_out=./gen/go/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/ --go-grpc_opt=paths=source_relative

gen_chat:
	protoc -I proto proto/chat/*.proto --go_out=./gen/go/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/ --go-grpc_opt=paths=source_relative

gen_notification_settings:
	protoc -I proto proto/notification_settings/*.proto --go_out=./gen/go/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/ --go-grpc_opt=paths=source_relative
