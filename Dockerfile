FROM  ubuntu:22.04
  
WORKDIR /opt/facebooc

COPY . .

RUN  apt-get update && apt-get install -yq build-essential \
make \
libsqlite3-dev \
sqlite3

EXPOSE 16000

RUN make all

CMD ["bin/facebooc"]