#!/bin/bash
if [ "${PAM_TYPE}" = "open_session" ]; then
  curl \
    -H prio:high \
    -H tags:warning \
    -d "SSH login: ${PAM_USER} from ${PAM_RHOST}" \
    YOURDOMAIN.COM/ssh_login
fi
