FROM golang:1.19
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY *.go ./
COPY . ./
RUN CGO_ENABLED=0 GOOS=linux go build -o /docker-hvs-demo-app

CMD ["/docker-hvs-demo-app"]
