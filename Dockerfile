FROM golang:1.18-alpine
ADD src /src
RUN cd /src && go build

FROM scratch
COPY --from=0 /src/fullcycle001 /main
CMD ["/main"]
