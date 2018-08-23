# vagrant_centos7

```
vagrant box add https://app.vagrantup.com/centos/boxes/7
```

# GUI

[[CentOS]CentOS7最小限のインストールからのGnomeデスクトップ環境構築](http://zero-config.com/centos/gnome-0001.html)

GUIを起動するには以下のコマンドを実行する

```bash
startx
```

# BRITE

javaでビルドするときにwarnigが出るが，JAVAとGUIのmakeファイルの`all`ターゲットの末尾に以下のオプションを追加すると無効化できる  

```bash
-Xlint:unchecked
```

コンパイルは以下の通り．多分これでGUIのBRITEが動くようになる．  

```bash
make java
```

GUIのBRITEの起動は以下の通り．  

```bash
./brite &
```

参考

* [Waht causes javac toissue the "uses unchecked or unsafe operations" warning](https://stackoverflow.com/questions/197986/what-causes-javac-to-issue-the-uses-unchecked-or-unsafe-operations-warning)
