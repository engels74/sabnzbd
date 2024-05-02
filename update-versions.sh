#!/bin/bash
version=$(curl -u "${GITHUB_ACTOR}:${GITHUB_TOKEN}" -fsSL "https://api.github.com/repos/sabnzbd/sabnzbd/releases" | jq -re .[0].tag_name) || exit 1
[[ -z ${version} ]] && exit 0
[[ ${version} == null ]] && exit 0
par2turbo_version=$(curl -u "${GITHUB_ACTOR}:${GITHUB_TOKEN}" -fsSL "https://api.github.com/repos/animetosho/par2cmdline-turbo/releases/latest" | jq -re .tag_name) || exit 1
[[ -z ${par2turbo_version} ]] && exit 0
[[ ${par2turbo_version} == null ]] && exit 0
json=$(cat VERSION.json)
jq --sort-keys \
    --arg version "${version//v/}" \
    --arg par2turbo_version "${par2turbo_version//v/}" \
    '.version = $version | .par2turbo_version = $par2turbo_version' <<< "${json}" | tee VERSION.json
