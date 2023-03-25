#!/bin/bash
# code generated by: https://chat.openai.com/
# Get the current version from the POM file
current_version=$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)

# Increment the last version number
next_version=$(echo "$current_version" | awk -F. '{$NF+=1; OFS="."; print}')
snapshot_version="${next_version}-SNAPSHOT"
neuer_string=${snapshot_version// /\.}
echo "${neuer_string}"