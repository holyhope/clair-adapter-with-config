FROM goharbor/clair-adapter-photon:v1.0.1-v1.10.0

ADD entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]
