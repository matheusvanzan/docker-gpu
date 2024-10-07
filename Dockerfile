FROM nvidia/cuda:11.7.1-devel-ubuntu22.04

RUN apt update
RUN apt install -y python3 python3-pip

RUN mkdir -p /tmp/code
RUN mkdir -p /code

COPY ./code /tmp/code
RUN pip install -r /tmp/code/requirements.txt

# CMD ["nvidia-smi"]
ENTRYPOINT ["tail", "-f", "/dev/null"]
