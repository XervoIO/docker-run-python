FROM onmodulus/image-run-base:0.0.1

ENV \
  PYENV_ROOT=/mnt/home/pyenv \
  PATH=/opt/modulus/bin:/mnt/home/pyenv/bin:$PATH

ADD . /opt/modulus
RUN /opt/modulus/bootstrap.sh

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]
