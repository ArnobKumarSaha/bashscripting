#!/bin/bash

TEMPLATE_FILE=template.yaml

# Append "---" in the last, if not present
last=$(cat $TEMPLATE_FILE | tail -c -3)
if [ "$last" != "---" ]; then
  echo -e -n "\n---" >> $TEMPLATE_FILE
fi

file=$(cat $TEMPLATE_FILE)

while IFS= read -r line; do
#  x=$(printf '%s\n' "$line")
  one+=$line
  one+='\n'
  if [[ "$line" =~ ^"kind: " ]]; then
      readarray -d : -t arr <<< "$line"
      kind=${arr[1]//[^[:alpha:].-]/}  # trim non-alpha-numeric characters
  fi
  if [ "$line" == "---" ] && [ "$kind" != "" ]; then
    filename=$(echo "$kind" | tr '[:upper:]' '[:lower:]')".yaml"
    echo -e "$one" >> template/$filename
    one=""
    kind=""
    continue
  fi
done <<< $file