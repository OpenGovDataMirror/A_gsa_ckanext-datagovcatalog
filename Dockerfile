ARG CKAN_VERSION=2.9
FROM openknowledge/ckan-dev:${CKAN_VERSION}
ARG CKAN_VERSION

RUN pip install --upgrade pip

COPY . /app
WORKDIR /app

# python cryptography takes a while to build
RUN pip install -r requirements.txt -r dev-requirements.txt -e .

WORKDIR ${APP_DIR}
