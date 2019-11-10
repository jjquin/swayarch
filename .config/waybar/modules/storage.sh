#!/bin/sh

zpool="zroot"
warning=20
critical=10

zpool list -H $zpool | awk -v warning=$warning -v critical=$critical '
 {
  text=$4
  tooltip="Zpool:\t"$1"\rSize:\t"$2"\rUsed:\t"$3"\rAvail:\t"$4"\rUse%:\t"$8"\rHealth:\t"$10
  use=$5
  exit 0
}
END {
  class=""
  gsub(/%$/,"",use)
  if ((100 - use) < critical) {
    class="critical"
  } else if ((100 - use) < warning) {
    class="warning"
  }
  print "{\"text\":\""text"\", \"percentage\":"use",\"tooltip\":\""tooltip"\", \"class\":\""class"\"}"
}
'
