FROM python:3.13.1

WORKDIR /app

COPY ./requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY ./amigosecreto amigosecreto

COPY ./entrypoint.sh entrypoint.sh

CMD ["sh", "entrypoint.sh"]