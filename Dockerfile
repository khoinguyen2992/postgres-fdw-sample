FROM postgres:9.5.3

MAINTAINER Khoi Nguyen <minhkhoi@siliconstraits.com>

ENV HOME /tmp

WORKDIR $HOME

RUN mkdir /home/postgres

RUN chown postgres -R /home/postgres

RUN apt-get update

RUN apt-get -y install git

RUN git clone git://github.com/Kozea/Multicorn.git $HOME/Multicorn

RUN git clone https://github.com/asya999/yam_fdw $HOME/yam_fdw

RUN apt-get -y install git make postgresql-server-dev-9.5 python-dev gcc python-pip

RUN cd $HOME/Multicorn && make && make install

RUN cd $HOME/yam_fdw && python setup.py install



