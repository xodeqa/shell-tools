#!/bin/bash
# desc install rvm and ruby

install_rvm()
{
    echo "[tips:] install rvm"
    curl -L get.rvm.io | bash -s stable && \
        usermod -a -G rvm root && \
        source /etc/profile.d/rvm.sh  # 安装完后，需要手动执行 `source /etc/profile.d/rvm.sh` 或 重新登录才能在命令行下使用 ruby 命令
}   

install_ruby()
{
    echo "[tips:] install ruby"
    rvm install 2.2
}

install_watir()
{
    echo "[tips:] install watir-webdriver"
    gem install watir-webdriver
}

install_phantomjs()
{
    #http://phantomjs.org/download.html
    # todo
    echo "[tips:] install phantomjs"
    wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
        tar jxcf phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
        cp phantomjs-2.1.1-linux-x86_64/phantomjs /usr/local/bin/phantomjs
}

install_rvm && \
    install_ruby && \
    install_watir && \
    install_phantomjs

