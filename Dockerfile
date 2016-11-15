FROM fedora:24
RUN dnf install nmap-ncat findutils -y && dnf clean all -y

CMD ["/usr/bin/ncat", "-l", "2000", "-k", "-c", "xargs -n1 echo"]
