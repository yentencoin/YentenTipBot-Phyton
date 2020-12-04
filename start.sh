#node --stack-size=10000 bin/instance
#screen -dmS explorerd node --stack-size=10000 bin/instance


#!/bin/bash

cd /root/tipbotpy/
rm nohup.out
nohup python3.7 bot.py &