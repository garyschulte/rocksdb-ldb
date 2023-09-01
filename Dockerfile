# Use Ubuntu 20.04 as the base image
FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && \
    apt-get install -y git build-essential gcc g++ bash make binutils libgflags-dev libsnappy-dev zlib1g-dev libbz2-dev liblz4-dev libzstd-dev && \
    apt-get clean  && \
    rm -rf /var/lib/apt/lists/*

# Clone the RocksDB repository
RUN git clone --depth 1 https://github.com/facebook/rocksdb.git && \
    cd rocksdb && make all && \
    cp ./sst_dump /usr/local/bin && \
    cp ./db_sanity_test /usr/local/bin && \
    cp ./db_stress /usr/local/bin && \
    cp ./write_stress /usr/local/bin && \
    cp ./ldb /usr/local/bin && \
    cp ./db_repl_stress /usr/local/bin && \
    cp ./rocksdb_dump /usr/local/bin && \
    cp ./rocksdb_undump /usr/local/bin && \
    cp ./*.so /usr/local/lib && \
    ldconfig && cd .. && rm -rf rocksdb
