# Curator in docker

This is dockerized version of elasticsearch curator,
tool to manage time-based indices.

## Why this image

This image keeps up to date with curator releases and has tags
in the docker registry. It is also based on minimal `alpine` image,
resulting in a just 38mb image.

## Usage

Image entrypoint is set to curator script, so just run the image:

```
docker run --rm quay.io/lalamove/elasticsearch-curator:5.4.0 --help
```

Pick whatever version you need.
