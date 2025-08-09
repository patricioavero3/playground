#!/usr/bin/env bash

terraform output -raw ssh_private_key_pem > ssh-key.pem  && chmod 400 ssh-key.pem