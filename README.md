# Curator in docker

This is dockerized version of elasticsearch curator,
a tool to manage time-based indices.
It is a fork of the good work by @bobrik.

## Why this image

This image keeps up to date with curator releases and has tags
in the docker registry. It is also based on minimal `alpine` image
and uses the build_exe setup.py target for curator, resulting
in a slim 17mb image.

## Usage

Image entrypoint is set to curator script, so just run the image:

```
docker run --rm quay.io/lalamove/elasticsearch-curator:5.4.0 --help
```

Currently, only 5.4 is available.
