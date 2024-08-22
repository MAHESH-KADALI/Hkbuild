FROM python:3.9

RUN apt update -y && apt install git -y && apt install wget -y && apt install ffmpeg -y
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN git clone https://github.com/HINATA-NAMIKAZE/swebdl
WORKDIR /usr/src/app/swebdl
RUN chmod 777 /usr/src/app/swebdl


RUN pip3 install -r requirements.txt 
CMD ["bash","start.sh"]
