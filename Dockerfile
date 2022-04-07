FROM adoptopenjdk/openjdk8:alpine-jre
ARG STRUCTURIZR_VERSION=1.19.0
ARG PLANTUML_VERSION=1.2021.7
WORKDIR /structurizr-to-png
COPY structurizr-to-png.sh .
RUN set -e; \
    apk add --no-cache bash graphviz ttf-dejavu fontconfig \
    && wget https://github.com/structurizr/cli/releases/download/v${STRUCTURIZR_VERSION}/structurizr-cli-${STRUCTURIZR_VERSION}.zip \
    && unzip structurizr-cli-${STRUCTURIZR_VERSION}.zip \
    && ln -s structurizr-cli-${STRUCTURIZR_VERSION}.jar structurizr-cli.jar \
    && rm structurizr-cli-${STRUCTURIZR_VERSION}.zip \
    && wget "https://downloads.sourceforge.net/project/plantuml/${PLANTUML_VERSION}/plantuml.${PLANTUML_VERSION}.jar" -O plantuml.jar

ENTRYPOINT [ "bash", "/structurizr-to-png/structurizr-to-png.sh" ]
