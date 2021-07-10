FROM nvidia/cuda:10.2-devel-ubuntu18.04
WORKDIR /app

RUN apt-get update
# RUN apt-get install apt-utils -y  # Attempt to remove warning results in errors
RUN apt-get install software-properties-common -y
RUN apt-get update
RUN apt-get install wget -y
RUN add-apt-repository universe

COPY download_pretrained_models.sh . 
RUN bash ./download_pretrained_models.sh

RUN apt-get install python2.7 -y
RUN apt-get install python-pip -y
RUN pip install torch==0.4.0
RUN pip install torchtext==0.2.3
RUN pip install torchvision==0.2.2
RUN pip install scipy==1.2.3
RUN pip install matplotlib==2.2.5
RUN pip install dominate==2.6.0
RUN pip install visdom==0.1.8.5

# Not sure if I executed this inside the docker container:
# curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | apt-key add -
# distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
# curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | tee /etc/apt/sources.list.d/nvidia-docker.list
# apt-get update

RUN apt install -y netcat  # debug only
RUN apt install -y iproute2
COPY . .

EXPOSE 8097

# CMD [ "bash", "-i", "scripts/train_half_style.sh", "--gpu_ids", "-1" ]
CMD [ "bash", "-c", "sleep 2; nc -v visdom 8097" ]
