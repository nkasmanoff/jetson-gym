# Jetson-Gym

The goal of this project is a blending of a few things, primarily the practice of using Docker and NVIDIA Jetson to remotely train and track the
progress reinforcement learning (RL) tasks better done not on a Macbook.


This repository is structured by using a Dockerfile to build the Open-AI gym along with requisite repositories in order to train
such agents to succeed in the environments indicated by sub-folder.


To build:

## sudo docker build -t nsk367/jetson_gym .


To run:

## sudo docker run --runtime nvidia -it --rm --network host --volume ~/jetson-gym:/jetson-gym nsk367/jetson_gym


## TODO

  Pick an environment to get on the leaderboard of

  Set up MLOps ready code for training various agents
