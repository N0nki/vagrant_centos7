# vagrant_centos7

```
vagrant box add https://app.vagrantup.com/centos/boxes/7
```

# GUI

[[CentOS]CentOS7最小限のインストールからのGnomeデスクトップ環境構築](http://zero-config.com/centos/gnome-0001.html)

# BRITE

javaでビルドするときにwarnigが出るが，JAVAとGUIのmakeファイルのjavaコンパイル部分に以下のオプションを追加する．  

```
-Xlint:unchecked
```

コンパイルは以下の通り．多分これでGUIのBRITEが動くようになる．  

```
make java
```

GUIのBRITEの起動は以下の通り．  

```
./brite &
```

参考

* [Waht causes javac toissue the "uses unchecked or unsafe operations" warning](https://stackoverflow.com/questions/197986/what-causes-javac-to-issue-the-uses-unchecked-or-unsafe-operations-warning)
