#/usr/sbin/bash

echo "Check memory usage:"
free -m 

echo "Clear swap? y/n"
read swap_ans

case $swap_ans in

  y)
    sudo swapoff -a
    echo "Waiting 30 seconds for swap to clear..."
    sleep 30
    sudo swapon -a 
    echo "Updated memory usage:"
    free -m
    ;;
  n)
    echo "Swap not cleared."
    ;;
  *)
    echo "Aborted."

esac


