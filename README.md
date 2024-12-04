# rocksdb-ldb

multi-arch docker repo for building rocksdb tools like ldb

to target a different rocksdb version update the tag that is cloned in the Dockerfile.  Currently v9.7.3

# using on an existing rocks db instance
for example, dump the rocks manifest:
`docker run -v /data/database:/db -it suburbandad/rocksdb-ldb:9.7.3-arm64 ldb --db=/db manifest_dump`

or just get the usage
`docker run -it suburbandad/rocksdb-ldb ldb --help`
