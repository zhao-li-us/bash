# Bash
This project aims to deploy a container with bash access on to an OpenShift cluster so it can be modified for development purposes.

Prerequisites
-------------
1. install Docker
1. install Docker Compose
1. install Git
1. clone repository: `git clone --recursive https://github.com/zhao-li-us/bash.git`

Getting Started
---------------
1. run bootstrap.sh: `./bootstrap.sh`
1. start service: `docker compose up`

Deploying
---------
To Use Development Container on OpenShift:

    $ oc new-app ghcr.io/zhao-li-us/bash:main~https://github.com/zhao-li-us/bash.git --strategy=docker

Testing
-------
To test the application:

    app$ scripts/test_app.sh

Linting
-------
To lint the shell scripts:

    $ docker compose run shell-linter /bin/sh
    shell-linter$ scripts/lint_app.sh

    or

    $ docker compose run shell-linter scripts/lint_app.sh

Documenting
-----------
To document the application:

    app$ scripts/document_app.sh

Additional Notes
----------------
TBD

