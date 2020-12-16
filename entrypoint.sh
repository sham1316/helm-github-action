#!/bin/sh -l

mkdir ~/.kube/ || true
if [ -f "~/.kube/config" ]; then
  echo -e "\033[36mExisting kubeconfig found, using that and ignoring input\033[0m"
else
  echo -e "\033[36mUsing kubeconfig from input\033[0m"
  echo "${INPUT_KUBECONFIG}" > ~/.kube/config
fi

echo -e "\033[36mPreparing execution\033[0m"
echo "${INPUT_EXEC}" > run.sh
chmod +x ./run.sh

echo -e "\033[36mExecuting \033[0m"
output=$(./run.sh)
echo "$output"

