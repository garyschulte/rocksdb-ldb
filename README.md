# rocksdb-ldb

multi-arch docker repo for building rocksdb tools like ldb

# using on an existing rocks db instance
for example, dump the rocks manifest:
`docker run -v /data/database:/db -it suburbandad/rocksdb-ldb:8.3.2-arm64 ldb --db=/db manifest_dump`

or just get the usage
`docker run -it suburbandad/rocksdb-ldb ldb --help`
