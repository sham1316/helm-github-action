#!/bin/sh -l

mkdir ~/.kube/ || true
if [ -f "~/.kube/config" ]; then
  echo -e "\033[36mExisting kubeconfig found, using that and ignoring input\033[0m"
else
  echo -e "\033[36mUsing kubeconfig from input\033[0m"
  echo "${INPUT_KUBECONFIG}" > ~/.kube/config
fi

echo "Hello $INPUT_EXEC"

