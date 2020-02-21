#**
#
#
#  YOU SHOULD NOT BE WATCHING THIS, UNLESS YOU WANT TO CHEAT :P
#  THIS IS INTENDED FOR TRAINING, SO I DONT SEE THE POINT 
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#                                                                   ,-,
#                                                             _.-=;~ /_
#                                                          _-~   '     ;.
#                                                      _.-~     '   .-~-~`-._
#                                                _.--~~:.             --.____88
#                              ____.........--~~~. .' .  .        _..-------~~
#                     _..--~~~~               .' .'             ,'
#                 _.-~                        .       .     ` ,'
#               .'                                    :.    ./
#             .:     ,/          `                   ::.   ,'
#           .:'     ,(            ;.                ::. ,-'
#          .'     ./'.`.     . . /:::._______.... _/:.o/
#         /     ./'. . .)  . _.,'               `88;?88|
#       ,'  . .,/'._,-~ /_.o8P'                  88P ?8b
#    _,'' . .,/',-~    d888P'                    88'  88|
# _.'~  . .,:oP'        ?88b              _..--- 88.--'8b.--..__
#:     ...' 88o __,------.88o ...__..._.=~- .    `~~   `~~      ~-._ Seal _.
#`.;;;:='    ~~            ~~~                ~-    -       -   -
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
# //

kubectl taint node minikube canIRunHere=no:NoSchedule > /dev/null 2>&1;

kubectl create ns exercise4 > /dev/null 2>&1;
kubectl run --generator=run-pod/v1 nginx --image nginx -n exercise4 > /dev/null 2>&1;

kubectl run nginx2 --image nginx --limits 'memory=100Gi' -n exercise4 > /dev/null 2>&1;

kubectl config set-context --current --namespace whatIam > /dev/null 2>&1;