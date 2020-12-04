# YentenTipBot-Phyton

**authors:** Nugetzrul3, Yentencoin.

**Multilingual:** Russian, English

##### A telegram tipbot which utilises a REST [api](https://api.yentencoin.info) and [python-bitcoin-utils](https://github.com/karask/python-bitcoin-utils)

### Config
1. Create a `configs` folder and make a new `config.py` file within it
2. Use the template below to suit your coin:

```python
token = "BOT_API_TOKEN"
coin = {
    "ticker": "COIN_TICKER",
    "coin_name": "coin_name_lowercase",
    "minFee": "MINIMUM_TX_RELAY_FEE",
    "P2PKH_PREFIX": "PREFIX_IN_BYTE_FORM (EXAMPLE: b'\x3F')",
    "P2SH_PREFIX": "PREFIX_IN_BYTE_FORM",
    "WIF_PREFIX": "PREFIX_IN_BYTE_FORM",
    "bech32": "bech32_segwit_prefix"
}
apiUrl = "API_URL_WITH_ADDRESSINDEX_ENABLED"
```

### How to run?
1. Clone this repository and create configs directory like shown above.
2. In the repository directory, run a python [virtual environment](https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/#creating-a-virtual-environment)
3. Once virtual environment is running, run `pip install -r requirements.txt`. This will install all required libraries.
4. Once completed, run `python3 bot.py`.
5. Success! The bot is now running 😀

### Alternative installation instructions

*Tested to work on python3.7 version*

**code to run in background:**
``` bash
#!/bin/bash
cd /root/tipbotpy/
rm nohup.out
nohup python3.7 bot.py &
```

**Run for debugging:**
```python3.7 bot.py```

**Required packages**
```sudo apt-get install build-essential libssl-dev libffi-dev```

**Update pip and install dependencies**
```
python3.7 -m pip install --upgrade setuptools
python3.7 -m pip install --upgrade pip
python3.7 -m pip install -r requirements.txt
```

**//manual installation**
``` bash
python3.7 -m pip install bitcoin-utils
python3.7 -m pip install python-telegram-bot<=12.8
python3.7 -m pip install decorator>=4.4.0
python3.7 -m pip install tornado>=5.1
python3.7 -m pip install strict-rfc3339==0.7
python3.7 -m pip install cryptography
//python3.7 -m pip install cryptography --no-binary cryptography
```

**download phyton telegram bot version 12.8**
```
wget https://github.com/python-telegram-bot/python-telegram-bot/releases/download/v12.8/python-telegram-bot-12.8.tar.gz
python3.7 setup.py install
```

**Api bot instructions**
https://pypi.org/project/python-telegram-bot/

*Sometimes the version of libraries above is required:*
OpenSSL 1.0.2g  1 Mar 2016

*Where is phyton's cache and pip*
/usr/local/lib/python3.7/dist-packages
/usr/include/python3.7m
