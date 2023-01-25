function handler () {
  EVENT_DATA=$1

  aws --version 1>&2;

  echo "$EVENT_DATA" 1>&2;

  RESPONSE=$EVENT_DATA

  echo "$RESPONSE"
}
