#!/bin/bash

echo -e "\033[33mFabric is being deprecated November 15 2020.\033[0m"
echo -e "\033[33mMake sure you update your dependencies to use FirebaseCrashlytics before then.\033[0m"

if [ ! -e "$fdu_fabric_location" ]; then
  echo "Please provide the location of Fabric or FirebaseCrashlytics"
  exit 1
fi

if [ "$fdu_logging" = "yes" ]; then
  echo "Location of Fabric or FirebaseCrashlytics is: $fdu_fabric_location"
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
