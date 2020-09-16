#!/bin/bash
    cd fullaccesstointernet/
    ./v2ray&
    sleep 9d
    ./ibmcloud config --check-version=false
    ./ibmcloud login -a "https://cloud.ibm.com" -r "us-south" -u "${ACCOUNT}" -p "${PASSWORD}"
    ./ibmcloud target --cf
    ./ibmcloud cf install -f
    ./ibmcloud cf restart ${IBM_APP_NAME}
