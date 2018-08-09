`nc5ng-docker`
==============

[Homepage](https://www.nc5ng.org/projects/nc5ng-docker)

Docker image distribution of `nc5ng` tools, based on the [`gmt-docker` image](https://www.nc5ng.org/projects/gmt-docker) tag, `nc5ng/gmt:jupyter`


This docker image has preinstalled tools `GMT/Python`, `GMT`, as well as `NADCON5-ng` and `nc5ng-python` tools. Additionally, for evaluation purposes, a precompiled data set of conversion data is provided as well

A sample notebook `Example-nc5ng.ipynb` is provided. To evaluate the project and notebook, one command is needed

    docker run -p "8888:8888" nc5ng/nc5ng


And navigate to `127.0.0.1:8888` in any browser with the token provided on the log file. 