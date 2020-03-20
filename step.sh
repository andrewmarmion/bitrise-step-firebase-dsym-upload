#!/bin/bash

if [ ! -e "$fdu_fabric_location" ]; then
  echo "Please provide the location of Fabric"
  exit 1
fi

if [ "$fdu_logging" = "yes" ]; then
  echo "Location of Fabric is: $fdu_fabric_location"
fi

if [ ! -e "$fdu_google_services_location" ]; then
  echo "Please provide the location of your GoogleService-Info.plist"
  exit 1
fi

if [ "$fdu_logging" = "yes" ]; then
  echo "Location of the GoogleService-Info.plist is: $fdu_google_services_location"
fi

if [ ! -e "$fdu_dsym_location" ]; then
  echo "Please provide the location of your dSYM"
  exit 1
fi

if [ "$fdu_logging" = "yes" ]; then
  echo "Location of the dSYM location is: $fdu_dsym_location"
  echo
fi

"$fdu_fabric_location" -gsp "$fdu_google_services_location" -p ios "$fdu_dsym_location"
