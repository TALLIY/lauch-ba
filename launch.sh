#!/bin/bash

TARGET_DIR="./talli"

mkdir -p "$TARGET_DIR"

git clone https://github.com/TALLIY/BA.git "$TARGET_DIR"

cd "$TARGET_DIR" || exit 1 


export PYTHONPATH="$(pwd)"
export TRAIN_DENSE_NETWORK=0

pip install -r requirements.txt

mkdir -p "./rosenbrock/datasets"
python $(pwd)/rosenbrock/generate_data/generate_data.py
python $(pwd)/rosenbrock/train_network.py
