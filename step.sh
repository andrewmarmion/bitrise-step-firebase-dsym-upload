#!/bin/bash
echo -e "\033[33mThis step is for use with FirebaseCrashlytics that has been installed by CocoaPods.\033[0m"
echo ""

if [ ! -e "$fdu_fabric_location" ]; then
  echo -e "\033[33mPlease provide the location of your CocoaPod installation of FirebaseCrashlytics\033[0m"
  echo ""
  exit 1
fi

if [ "$fdu_logging" = "yes" ]; then
  echo "Location of FirebaseCrashlytics is: $fdu_fabric_location"
  echo ""
fi

if [ ! -e "$fdu_google_services_location" ]; then
  echo -e "\033[33mPlease provide the location of your GoogleService-Info.plist\033[0m"
  echo ""
  exit 1
fi

if [ "$fdu_logging" = "yes" ]; then
  echo "Location of the GoogleService-Info.plist is: $fdu_google_services_location"
  echo ""
fi

if [ ! -e "$fdu_dsym_location" ]; then
  echo -e "\033[33mPlease provide the location of your dSYM\033[0m"
  echo ""
  exit 1
fi

if [ "$fdu_logging" = "yes" ]; then
  echo "Location of the dSYM location is: $fdu_dsym_location"
  echo ""
  echo
fi

"$fdu_fabric_location" -gsp "$fdu_google_services_location" -p ios "$fdu_dsym_location"
