FROM nvcr.io/nvidia/dli/dli-nano-ai:v2.0.1-r32.6.1



#ENV DEBIAN_FRONTEND=noninteractive
ENV SHELL /bin/bash
WORKDIR /home/noah/jetson-gym
COPY . /home/noah/jetson-gym



#
# install development packages
#
RUN apt-get update && \
apt-get install -y --no-install-recommends \
    cmake \
nano \
&& rm -rf /var/lib/apt/lists/*


RUN apt-get install swig
# alias python3 -> python
RUN rm /usr/bin/python && \
ln -s /usr/bin/python3 /usr/bin/python && \
ln -s /usr/bin/pip3 /usr/bin/pip

RUN pip install --upgrade pip
# run req.txt and jupyter


RUN pip install -r requirements.txt
