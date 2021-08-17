FROM nvidia/cuda:11.4.0-devel-ubuntu18.04
WORKDIR /app

# RUN apt-get install apt-utils -y  # Attempt to remove warning results in errors
# Try install cuda
RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository universe
RUN apt-get install curl -y
RUN curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | apt-key add -
RUN apt-get update
RUN curl -s -L https://nvidia.github.io/nvidia-docker/ubuntu18.04/nvidia-docker.list | tee /etc/apt/sources.list.d/nvidia-docker.list
RUN apt-get update

# Cuda on WSL requires experimental branch currently:
RUN curl -s -L https://nvidia.github.io/nvidia-container-runtime/experimental/ubuntu18.04/nvidia-container-runtime.list | tee /etc/apt/sources.list.d/nvidia-container-runtime.list
RUN curl -s -L https://nvidia.github.io/nvidia-docker/ubuntu18.04/nvidia-docker.list | tee /etc/apt/sources.list.d/nvidia-docker.list
RUN apt-get update --allow-unauthenticated --allow-insecure-repositories
RUN apt-get install -y nvidia-docker2



CMD [ "which", "nvidia-smi" ]

# RUN apt update
# RUN apt install -y wget
# COPY download_pretrained_models.sh . 
# RUN bash ./download_pretrained_models.sh

# RUN apt install -y python2.7
# RUN apt install -y python-pip
# RUN pip install torch==0.4.0
# RUN pip install torchtext==0.2.3
# RUN pip install torchvision==0.2.2
# RUN pip install scipy==1.2.3
# RUN pip install matplotlib==2.2.5
# RUN pip install dominate==2.6.0
# RUN pip install visdom==0.1.8.5

# RUN apt install -y iproute2  # debug only
# RUN apt install -y netcat  # debug only

# COPY . .

# EXPOSE 8097

# CMD [ "bash", "scripts/docker_entry.sh" ]

# RUN apt install -y netcat  # debug only
# RUN apt install -y iproute2  # debug only

