### Build/test container ###
# Define builder stage
FROM projects:base as builder

# Share work directory
COPY . /usr/src/projects
WORKDIR /usr/src/projects/build

RUN cmake -DCMAKE_BUILD_TYPE=Coverage ..
RUN make coverage
RUN gcovr -r ..
