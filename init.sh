#!/usr/bin/env bash
echo 'Start PIKA initialization!'


if [ -d 'output' ]; then
	echo 'already download'
else
	pika='https://hub.fastgit.org/Qihoo360/pika/releases/download/v3.3.5/pika-linux-x86_64-v3.3.5.tar.bz2' 
	echo $pika
	curl -Lk $pika | tar xjv
	# mv output pika
fi


rm output/tools/nemo_to_blackwidow
rm output/tools/ssdb_to_pika
rm output/tools/txt_to_pika
chmod 755 pika/entrypoint.sh
docker-compose build

# pika='https://github.com/Qihoo360/pika/releases/download/v3.3.5/pika-linux-x86_64-v3.3.5.tar.bz2'
