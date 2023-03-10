ARG REPO_BRANCH
ARG REPO_URL
ARG BASE_IMAGE
ENV repo_branch $REPO_BRANCH
ENV repo_url $REPO_URL

FROM ${BASE_IMAGE}

RUN echo ${repo_branch}
RUN git clone -b ${repo_branch} ${repo_url}
