#! /bin/bash

user_info="$BINTRAY_USER:$BINTRAY_API_KEY"

file=toller-moderne.pdf
upload_url='https://api.bintray.com/content/odoepner/generic/toller-moderne/1.0.0/${file}?override=1&publish=1'

if [ -z "$file" ]; then
  echo "ERROR: Cannot upload. File ${file} not found!"
  exit 1
else
  echo "Uploading ${file} to ${upload_url}"
  curl --user "${user_info}" --upload-file "${file}" "${upload_url}" || exit 1
fi
