function build() {
  platform_arg=""

  if [[ $1 == "amd" ]]; then
    platform_arg=" --platform=linux/amd64"
  fi

  echo "docker build$platform_arg -t armandxuuu/web-front-svelte ."

  cmd="docker build$platform_arg -t armandxuuu/web-front-svelte ."
  eval $cmd
}

function release() {
    build amd
    docker push armandxuuu/web-front-svelte
}