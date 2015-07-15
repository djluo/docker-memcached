# vim:set et ts=2 sw=2 syntax=dockerfile:

FROM       docker.io/memcached
MAINTAINER djluo <dj.luo@baoyugame.com>

ADD ./entrypoint.pl /entrypoint.pl

ENTRYPOINT ["/entrypoint.pl"]
USER       root
CMD        ["/usr/bin/memcached"]
