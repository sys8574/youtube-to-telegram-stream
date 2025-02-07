FROM debian:latest

RUN apt-get update && apt-get install -y ffmpeg curl python3 python3-pip && pip3 install yt-dlp

COPY stream.sh /usr/local/bin/stream.sh
RUN chmod +x /usr/local/bin/stream.sh

ENTRYPOINT ["/usr/local/bin/stream.sh"]
