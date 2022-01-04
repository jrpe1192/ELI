FROM debian:buster-slim
RUN cd /tmp && \
apt update && \
apt full-upgrade -y && \
apt install wget libglib2.0-0 netbase -y && \
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb && \
dpkg -i /tmp/uam-latest_amd64.deb
CMD /opt/uam/uam --pk D5C90F9721B52E14C910A0DF89E017DC3FB8B975B6A2B89B90DBCDCC8AC82C6C --no-ui
