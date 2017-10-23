FROM brimstone/debian:sid as builder

RUN package build-essential libboost-all-dev

COPY . /fastcoll

WORKDIR /fastcoll

RUN g++ -O3 *.cpp -lboost_filesystem -lboost_program_options -lboost_system \
    -o fastcoll -static \
 && strip fastcoll

FROM scratch

COPY --from=builder /fastcoll/fastcoll /fastcoll

ENTRYPOINT ["/fastcoll"]
