ARG BASE_IMAGE

FROM ${BASE_IMAGE}

ARG REPO_BRANCH
ARG REPO_URL

ENV repo_branch $REPO_BRANCH
ENV repo_url $REPO_URL

RUN echo ${repo_branch}
RUN git clone -b ${repo_branch} ${repo_url}
