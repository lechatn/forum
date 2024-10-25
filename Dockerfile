FROM golang:1.22

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

COPY utilisateurs.db /app/utilisateurs.db

RUN go build -o main .

EXPOSE 8080

CMD ["./main"]
