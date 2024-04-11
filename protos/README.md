Init Protos
dart create --template=package --force .

Install Dep
dart pub add protobuf grpc

Generate Protoc
protoc --dart_out=grpc:lib/src/generated -Iprotos protos/\*
