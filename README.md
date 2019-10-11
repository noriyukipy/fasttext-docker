# fasttext-docker

This repository provides Dockerfile for [fastText](https://fasttext.cc/).

## Build

```sh
$ docker image build -t fasttext .
```

## Usage

Built image provides the same `fasttext` command as original one.

```sh
$ docker container run -it --rm fasttext
usage: fasttext <command> <args>
...
```

Docker container uses `/work` directory as a default working directory.
Mount your directory to `/work` directory when trianining or prediction.

Following example shows how to train a embedding model.

```sh
$ docker container run -v $(pwd):/work -it --rm fasttext skipgram -dim 100 -input corpus.txt -output corpus.model
```
