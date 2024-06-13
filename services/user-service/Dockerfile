FROM golang:1.18 as builder

WORKDIR /app
COPY . .

RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o order-service .

FROM scratch
COPY --from=builder /app/order-service /order-service
ENTRYPOINT ["/order-service"]
