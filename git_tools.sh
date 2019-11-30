#!/usr/bin/env bash
# Commix ([comm]and [i]njection e[x]ploiter) 
git clone https://github.com/commixproject/commix.git commix



# The PenTesters Framework (PTF)
https://github.com/trustedsec/ptf
https://github.com/zardus/ctf-tools


## Offensive Web Testing Framework
$ python3 -m venv ~/.virtualenvs/owtf
$ source ~/.virtualenvs/owtf/bin/activate
$ brew install coreutils gnu-sed openssl
# We need to install 'cryptography' first to avoid issues
$ pip install cryptography --global-option=build_ext --global-option="-L/usr/local/opt/openssl/lib" --global-option="-I/usr/local/opt/openssl/include"




## Penetration Testing Tools Repo
git clone --recursive https://github.com/Aptive/penetration-testing-tools.git
cd penetration-testing-tools/infra/nmap/
git pull
cd penetration-testing-tools/
git submodule foreach git pull

