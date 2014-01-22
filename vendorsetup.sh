# This whole script is a hack. Hoping to replace it soon.
if [ ! -z "$JENKINS_HOME" ]
then
  DEVICE_NAME=${LUNCH#*_} DEVICE_NAME=${DEVICE_NAME%-*}
  if [ "$DEVICE_NAME" == "c8815" ]
  then
    sh device/huawei/c8815/patches/apply.sh
  fi
fi
