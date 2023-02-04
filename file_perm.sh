#!/bin/bash
  if [ -r "/etc/shadow" ]; then
    echo "The file "/etc/shadow" has read permission"
    else
    echo "The file "/etc/shadow" Don't have read permission"
  fi

