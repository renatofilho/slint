#!/bin/bash -x

while getopts a:s:i: flag
do
    case "${flag}" in
        a) api=${OPTARG};;
        s) server=${OPTARG};;
        i) index=${OPTARG};;
    esac
done

# Get the directory of the current script
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Set defaults
if [ -z "$index" ]; then
  index=local
fi

echo "API Key: $api";
echo "Server: $server";
echo "Index: $index";
echo "Script Directory: $script_dir";

# Update server and api in searchbox.html
searchbox_html="$script_dir/../reference/_templates/searchbox.html"
sed -i '' "s|\$TYPESENSE_SERVER_URL|$server|g" $searchbox_html
sed -i '' "s|\$TYPESENSE_SEARCH_API_KEY|$api|g" $searchbox_html
sed -i '' "s|local|$index|g" $searchbox_html

# Create docs
cargo xtask slintdocs --show-warnings
