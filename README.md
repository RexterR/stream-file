# stream-file
<b>StreamFile</b> is a multi-upload cli. Using `Golang, gRPC-stream` and `ScyllaDB`. It is using golang's <em>concurrency primitives</em> for multi-upload, gRPC stream to uplaod <em>chunck-data of blob</em> to server and stores the uploaded files in <b>ScyllaDB</b>, which is a <em>distributed real-time big-data Database</em>.

## Installation
- `git clone git@github.com:sourikghosh/go-grpc-streaming-scylla.git`
- `cd go-grpc-streaming-scylla`
- `go mod downlaod`
- `make server`
- `make client`

## Usage

<img src="https://raw.githubusercontent.com/RexterR/stream-file/main/upload.gif">

```bash
~
🚀 fileServer
fileServer searchs all file/s in the input directory to concurrently upload them to scyllaDB.
It was a project to get familiarize with gRPC streams and scyllaDB.fileServer takes two config --flag. For example:

If the fileServer server is not running on localhost:1500 you can change it with
        fileServer --addr localhost:8080

You can change the concurrency with
        fileServer --workerCount 6
Higher workerCount means higher concurrency
The default value is 6.

Usage:
  fileServer [command]

Available Commands:
  completion  generate the autocompletion script for the specified shell
  help        Help about any command
  upload      uplaods all file/s concurrently to scyllaDB

Flags:
  -a, --addr string       the server address (default "localhost:1500")
  -h, --help              help for fileServer
  -w, --workerCount int   no of concurrent worker count to upload files (default 6)

Use "fileServer [command] --help" for more information about a command.
```
