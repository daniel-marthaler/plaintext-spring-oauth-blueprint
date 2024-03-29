#!/bin/bash
# code generated by: https://chat.openai.com/
# Get the current version from the POM fileUp
current_version=$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)

# Remove the SNAPSHOT suffix and increment the last version number
release_version=${current_version%-SNAPSHOT}
neuer_string=${release_version// /\.}
echo "${neuer_string}"