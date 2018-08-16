# Seleccionamos la imagen para python
FROM alpine:3.7
# Actualizamos pip e instalamos setuptools
RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
        rm -r /usr/lib/python*/ensurepip && \
				pip3 install --upgrade pip setuptools
RUN pip install grip

WORKDIR /usr/src/grip

COPY . .

EXPOSE 80
CMD ["grip","stellar.md","0.0.0.0:80"]

