function npm-which() {
  npm_bin=$(npm bin)
  bin_name=$1
  local_path="${npm_bin}/${bin_name}"

  [[ -f $local_path ]] && echo "$local_path"
}
