FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install -y --no-install-recommends curl ca-certificates && \
apt-get install -y --no-install-recommends git-core && \
apt-get install -y --no-install-recommends mercurial && \
apt-get install -y --no-install-recommends build-essential && \
apt-get install -y --no-install-recommends libssl-dev && \
apt-get install -y --no-install-recommends libreadline-dev && \
apt-get install -y --no-install-recommends libbz2-dev && \
apt-get install -y --no-install-recommends libsqlite3-dev && \
apt-get install -y --no-install-recommends libffi-dev && \
apt-get install -y --no-install-recommends python-dev

RUN ["groupadd", "python"]
RUN ["useradd", "python", "-s", "/bin/bash", "--home-dir", "/python", "-g", "python", "-m", "-G", "python"]
ADD bash_profile.bash /python/.bash_profile
ADD bashrc.bash /python/.bashrc
RUN ["chown", "-R", "python:python", "/python"]
USER python
WORKDIR /python
ENV HOME /python

RUN ["/bin/bash", "-c", "curl -k -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash"]
RUN ["/bin/bash", "-c", "/python/.pyenv/bin/pyenv update"]
RUN ["/bin/bash", "-c", "/python/.pyenv/bin/pyenv install --list"]

# TODO: Fix the forkbomb/recursive eval that this seems to cause.
# ENV BASH_ENV=/python/.bashrc
# RUN ["/bin/bash", "-c", "pyenv install --list"]
