FROM python:3.11.2-slim

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUSERBASE=/usr

ENV TZ=America/Sao_Paulo

RUN apt-get update -y \
    && apt-get install -y tzdata vim bash bash-completion git curl iputils-ping wget net-tools libpq-dev gcc\
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN useradd -ms /bin/bash app
RUN chown app:app /usr /usr/bin /usr/lib /usr/include

COPY ./requirements.txt /src/app/requirements.txt
# COPY ./app /src/app
USER app

WORKDIR /src
