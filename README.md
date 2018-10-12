# Dockerfile used for development with livereload

## Usage

### `docker run`

```bash
export GO_WORKDIR=/go/src/github.com/<your repo>
docker run -it --rm -v $PWD:$GO_WORKDIR -w $GO_WORKDIR mraerino/golang-dev
```

### Docker Compose

`export GO_WORKDIR=/go/src/github.com/<your repo>`

```yml
version: "3.5"

services:
  app:
    image: mraerino/golang-dev
    working_dir: $GO_WORKDIR
    volumes:
      - $PWD:$GO_WORKDIR
```

#### Advanced

```yml
version: "3.5"

services:
  gocommerce:
    image: mraerino/golang-dev
    working_dir: $GO_WORKDIR
    volumes:
      - $PWD:$GO_WORKDIR
    command: realize start --no-config --run --legacy <args for your binary>
    environment:
      # env variables
    ports:
      # port mappings
```

## License

MIT License.
