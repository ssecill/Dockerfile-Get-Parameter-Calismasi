FROM node:12.16.1-alpine3.9 as build
# a default value
# ENV foo /bar
# or ENV foo=/bar
# ENV values can be used during the build
# ADD . $foo
# or ADD . ${foo}
# translates to: ADD . /bar
# RUN echo $foo
ENV SECIL $MY_SECRET
ADD . $SECIL
RUN echo secil-$MY_SECRET
RUN echo nur-$SECIL

