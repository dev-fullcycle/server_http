FROM python:3.9.18-alpine3.18

ENV PYTHONUNBUFFERED 1

RUN apk add tzdata
RUN ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
RUN mkdir /app

COPY ./webapp.py /app/webapp.py

WORKDIR app

ENTRYPOINT ["python"]

CMD ["webapp.py"]
