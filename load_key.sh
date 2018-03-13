read -n1 -p "Load keystring [Y/n] " response

case $response in [yY][eE][sS]|[yY]|[jJ]|'') 

                      sudo loadkeys ~/script/keystrings;;
                  # *)
esac
