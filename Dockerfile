FROM python:2.7-slim

RUN apt-get -y update && apt-get -y install libpq-dev build-essential

RUN pip install pgcli>=1.5

CMD ["/bin/bash"]
