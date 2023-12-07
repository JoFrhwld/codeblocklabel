ARG VARIANT="4.3"
FROM ghcr.io/rocker-org/devcontainer/tidyverse:${VARIANT}

RUN install2.r --error --skipinstalled -n -1 \
        renv \
    && rm -rf /tmp/downloaded_packages 
