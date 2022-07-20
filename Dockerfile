FROM klakegg/hugo:0.101.0

WORKDIR /src

COPY ./archetypes ./archetypes
COPY ./content ./config
COPY ./data ./data
COPY ./layouts ..layouts
COPY ./resources ./resources
COPY ./static ./static
COPY ./themes ./themes
COPY .hugo_build.lock .
COPY config.toml .

CMD ["server"]