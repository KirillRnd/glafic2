FROM tensorflow/tensorflow:2.9.1-gpu-jupyter

RUN apt install wget

WORKDIR /glafic

RUN wget http://heasarc.gsfc.nasa.gov/FTP/software/fitsio/c/cfitsio-4.1.0.tar.gz; wget http://www.fftw.org/fftw-3.3.10.tar.gz; wget https://ftp.gnu.org/gnu/gsl/gsl-2.7.tar.gz

RUN tar -xvzf cfitsio-4.1.0.tar.gz; tar -xvzf fftw-3.3.10.tar.gz; tar -xvzf gsl-2.7.tar.gz

WORKDIR /glafic/cfitsio-4.1.0
RUN ./configure --prefix=/usr/local; make; make install

WORKDIR /glafic/fftw-3.3.10
RUN ./configure --enable-shared; make; make install

WORKDIR /glafic/gsl-2.7
RUN ./configure; make; make install

WORKDIR /glafic/
RUN git clone https://github.com/KirillRnd/glafic2

WORKDIR /glafic/glafic2
RUN make; make python; pip install .
ENV LD_LIBRARY_PATH /usr/local/lib

WORKDIR /tf/glafic