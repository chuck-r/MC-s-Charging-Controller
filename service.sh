#!/system/bin/sh
# MC's Charging Controller
# mcc Service ( 201801132 )
# MCMotherEffin' @ XDA Developers

# Verbose logger
set -x 2>${0%/*}/service.log

# Define variables
data_dir=${0%/*}/data

# Set all the switches writable
for i in 1 2 3 4; do
  switch=$(sed -n s/^switch_$i=//p $data_dir/settings.conf | awk '{print $1}')
  case $switch in
    not_found_yet)
      break
    ;;
    *            )
      chown 0:0 $switch
      chmod 644 $switch
    ;;
  esac
done

# Trigger the service minding [ --autoshut ]
sleep 90; export no_logging=true;
(mcc --service_trigger) &
