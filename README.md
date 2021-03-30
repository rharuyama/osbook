# osbook

## 動かし方（Mac）

VirtualBox（以下VB）, Vagrantを事前にインストールし，次のコマンドを順に実行したあと，  

`git clone https://github.com/rharuyama/osbook`  
`git --recurse-submodules -j8 git@github.com:tianocore/edk2.git`

`osbook`ディレクトリの中で以下のコマンドを実行する．  

`vagrant init`  
`vagrant up`  
`vagrant ssh`  
するとVB内にSSH接続される．  
`cd osbook`  
`sh run.sh`  
を行うとQEMUのコンソールに入るので，以下のコマンドでパスワードを設定する．  
`(qemu) set_password vnc hogehoge`  
その後，Finder->Command+K->`vnc://localhost:15900`に接続->パスワード`hogehoge`を入力して，"TianoCore"のロゴとともに画面が表示されたら成功である．

## 参考文献
この本をやっています：  
https://book.mynavi.jp/ec/products/detail/id=121220  
前提知識とか：  
https://knowledge.sakura.ad.jp/22963/  
もくもく会の案内：  
https://twitter.com/uchan_nos/status/1371446333228281856?s=21  
Vagrant:__
https://osdev-jp.readthedocs.io/ja/latest/2016/vagrant.html__

