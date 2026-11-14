FROM jenkins/jenkins:lts

USER root

# Python tooling for build jobs, from Debian's own packages.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        python3 \
        python3-dev \
        python3-pip \
        python3-venv \
        pipx \
        build-essential \
        make \
    && rm -rf /var/lib/apt/lists/*

# Debian blocks system-wide pip installs, so install pipenv with pipx
# into a shared location that every user can run.
ENV PIPX_HOME=/opt/pipx \
    PIPX_BIN_DIR=/usr/local/bin
RUN pipx install pipenv

# Run Jenkins as its normal unprivileged user.
USER jenkins
