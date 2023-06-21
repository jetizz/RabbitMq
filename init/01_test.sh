#!/bin/bash

rabbitmqctl add_user MYUSER MYPASS \
    && rabbitmqctl add_vhost MYVHOST \
    && rabbitmqctl set_permissions -p MYVHOST MYUSER ".*" ".*" ".*"