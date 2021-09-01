
# a default value
ENV foo /bar
# or ENV foo=/bar

# ENV values can be used during the build
ADD . $foo
# or ADD . ${foo}
# translates to: ADD . /bar
RUN echo $foo

