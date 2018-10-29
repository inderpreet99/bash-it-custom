#export BASH_IT_HTTP_PROXY=http://www-proxy.lmig.com:80/
#export BASH_IT_HTTPS_PROXY=http://www-proxy.lmig.com:80/
#export PAC="http://www-proxy-pac.lmig.com/proxy.pac"
export PROXY_ADDR=http://www-proxy.lmig.com:80/

alias pulseDev='/Applications/Pulse\ Secure.app/Contents/Plugins/JamUI/jamCommand -importfile ~/Downloads/DN.PULSEPRECONFIG'
alias pulseReg='/Applications/Pulse\ Secure.app/Contents/Plugins/JamUI/jamCommand -importfile ~/Downloads/Connect.jnprpreconfig'

proxyOn() {
  echo 'Setting up proxy env...'
  # sudo networksetup -setautoproxyurl "Wi-Fi" http://www-proxy-pac.lmig.com/proxy.pac
  export HTTP_PROXY=$PROXY_ADDR
  export HTTPS_PROXY=$PROXY_ADDR
  # export ALL_PROXY=$PROXY_ADDR
  # export http_proxy=$PROXY_ADDR
  # export https_proxy=$PROXY_ADDR
  # export all_proxy=$PROXY_ADDR
  # echo 'proxy=http://localhost:3128' > ~/.curlrc
  # echo 'use_proxy=yes' > ~/.wgetrc
  # echo 'http_proxy=http://localhost:3128' >> ~/.wgetrc
  # echo 'https_proxy=http://localhost:3128' >> ~/.wgetrc
  # git config --global http.proxy $PROXY_ADDR
  # git config --global https.proxy $PROXY_ADDR
  # npm config set proxy $PROXY_ADDR
  # npm config set https-proxy $PROXY_ADDR
  # sudo networksetup -setautoproxystate "Wi-Fi" on
  # brew services start cntlm
}

proxyOff() {
  echo 'Setting up proxyless env...'
  # git config --global --unset http.proxy
  # git config --global --unset https.proxy
  # npm config rm proxy
  # npm config rm https-proxy
  unset HTTP_PROXY
  unset HTTPS_PROXY
  # unset ALL_PROXY
  # unset http_proxy
  # unset https_proxy
  # unset all_proxy
  # echo '' > ~/.curlrc
  # echo '' > ~/.wgetrc
  # sudo networksetup -setautoproxystate "Wi-Fi" off
  # brew services stop cntlm
}
