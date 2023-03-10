ARG repo_branch
ARG repo_url
ARG base_image
ENV REPO_BRANCH $repo_branch
ENV REPO_URL $repo_url
ENV BASE_IMAGE $base_image

FROM ${BASE_IMAGE}

RUN git clone -b ${REPO_BRANCH} ${REPO_URL}
