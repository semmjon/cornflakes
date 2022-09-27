FROM python:3.8.1-alpine

# A few Utilities to able to install C based libraries such as numpy
RUN apk update
RUN apk add make automake gcc g++ git libffi libffi-dev

RUN pip install poetry && pip install ninja
RUN poetry install --verbose
