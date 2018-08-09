FROM nc5ng/gmt:jupyter

COPY requirements.txt /requirements-nc5ng.txt
COPY Example.ipynb /workspace/Example-nc5ng.ipynb
ADD https://github.com/nc5ng/nadcon5-ng/releases/download/v0.0.1/nadcon5-20171120-190144.ussd.nad27.conus.900.0.tgz /nc5dat/

RUN apt-get update &&\
    apt-get install -y gfortran &&\
    pip install -r /requirements-nc5ng.txt &&\
    rm -rf /var/lib/apt/lists/* &&\
    ( cd /nc5dat && tar -xzf nadcon5-20171120-190144.ussd.nad27.conus.900.0.tgz) 



