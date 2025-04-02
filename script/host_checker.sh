#!/bin/bash

while getopts ":l:o:" opt; do
  case $opt in
  l)
    in_file="$OPTARG"
    ;;
  o)
    out_file="$OPTARG"
    ;;
  \?)
    echo "Invalid option -$OPTARG" >&2
    exit 1
    ;;
  esac

  case $OPTARG in
  -*)
    echo "Option $opt needs a valid argument"
    exit 1
    ;;
  esac
done

if [ -z "$in_file" ]; then
  echo "Please provide a file as an argument."
  exit 1
fi

if [ ! -r "$in_file" ]; then
  echo "File '$file' is not readable."
  exit 1
fi

check_url_response() {
  url="$1"
  curl -s -o /dev/null -w "%{http_code}" "$url"
}

is_url_responsive() {
  url="$1"
  status_code=$(check_url_response "$url")
  echo $status_code
}

responsive_list=()

while IFS= read -r url; do

  code=$(is_url_responsive "$url")

  if [[ $code -ge 100 && $code -lt 600 ]]; then
    # URL is responsive
    printf '\033[32m%s\033[0m\n' "$code $url"
    responsive_list+=("$url")
  else
    # URL is not responsive
    printf '\033[31m%s\033[0m\n' "$code $url"
  fi

done <"$in_file"

if [[ -n "$out_file" ]]; then
  printf "%s\n" "${responsive_list[@]}" >"$out_file"
fi

unset responsive_list
