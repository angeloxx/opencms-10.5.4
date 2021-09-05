FROM alkacon/opencms-docker:10.5.4

# Jessie is deprecated, we need to use archive.debian.org as repo
COPY sources.list /etc/apt/sources.list
RUN rm /etc/apt/sources.list.d/jessie-backports.list && apt -o Acquire::Check-Valid-Until=false update && apt install -y --force-yes python3-pip git build-essential && apt-get clean
RUN pip3 install requests pygit
