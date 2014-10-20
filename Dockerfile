# DOCKER-VERSION 1.0
FROM dit4c/dit4c-container-x11
MAINTAINER t.dettrick@uq.edu.au

# Install
# - octave
# - ghostscript for octave plots
RUN yum install -y \
  octave \
  ghostscript-devel

RUN cd /tmp && \
    wget "http://downloads.sourceforge.net/project/pstoedit/pstoedit/3.62/pstoedit-3.62.tar.gz" && \
    tar xzvf pstoedit-3.62.tar.gz && \
    cd pstoedit-3.62 && \
    ./configure && \
    make && \
    make install && \
    cd .. && rm -r pstoedit-*
