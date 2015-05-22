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

# apt-get build-dep -n --no-install-recommends python2.7 && \
# apt-get build-dep -n --no-install-recommends python3.4

RUN ["groupadd", "python"]
RUN ["useradd", "python", "-s", "/bin/bash", "-m", "-g", "python", "-G", "python"]
ADD bash_profile.bash /python/.bash_profile
ADD bashrc.bash /python/.bashrc
RUN ["chown", "-R", "python:python", "/home/python"]
ENV HOME /home/python
ENV BASH_ENV=/python/.bash_profile
WORKDIR /home/python
USER python

RUN ["/bin/bash", "-c", "curl -k -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash"]

RUN ["/bin/bash", "-c", "/python/.pyenv/bin/pyenv update"]
RUN ["/bin/bash", "-c", "pyenv install --list"]

# RUN ["/bin/bash", "-c", "/root/.pyenv/bin/pyenv install --list"]

# RUN ["/bin/bash", "-c", "/root/.pyenv/bin/pyenv install 2.7.9"]
# RUN ["/bin/bash", "-c", "/root/.pyenv/bin/pyenv install 3.4.3"]

