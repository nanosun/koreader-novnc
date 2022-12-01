#!/bin/sh

echo "http://localhost:8081"
docker rm koreader ; docker run -p 8081:8080 -v $PWD/books:/books --env EMULATE_READER_W=1000 --env EMULATE_READER_H=600 --name koreader wardwouts/koreader-novnc
