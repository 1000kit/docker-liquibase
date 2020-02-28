FROM centos:8 as build

RUN curl https://github.com/1000kit/liquibase/releases/download/0.4.0/liquibase -O -J -L \
    && chmod +x liquibase

FROM scratch
COPY --from=build liquibase liquibase
