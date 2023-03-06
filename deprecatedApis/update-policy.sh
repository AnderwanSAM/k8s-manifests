!/bin/bash

# Define the dynamic values
group="flowcontrol.apiserver.k8s.io"
resources="[\"flowschemas\"]"
version="v1beta2"

# Construct the yq command using string interpolation
command="yq eval '.rules += [
  {\"level\": \"RequestResponse\", \"resources\": [{\"group\": \"$group\", \"resources\": $resources, \"version\": \"$ver>
  {\"level\": \"Metadata\", \"resources\": [{\"group\": \"$group\", \"resources\": $resources, \"version\": \"$version\"}>
  {\"level\": \"Request\", \"resources\": [{\"group\": \"$group\", \"resources\": $resources, \"version\": \"$version\"}]}
]' policy.yaml > new_audit_policy.yaml"

# Execute the command
eval $command

