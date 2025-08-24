SQLite Explorer
====================

SQLite is a multi-platfrom graphical browser for SQLite database files.


Dependencies
------------

<img src="https://cloud.githubusercontent.com/assets/6119070/13334137/231ea0f8-dbd0-11e5-8546-8a409d80aa6d.png">

[Qt](http://www.qt.io/)
Qt is a cross-platform application framework for creating graphical user interfaces.
<br /> 

[SQLite](https://www.sqlite.org/)
SQLite is an embedded, platform independent, serverless, and transactional SQL database engine
<br /> 

Building from source
------------

Get source:
<pre>
git clone https://github.com/pedro-vicente/sqlite-explorer.git
</pre>

## build

```bash
./build.cmake.sh
```

## Linux Debian depencencies

Install dependency packages (Ubuntu):
<pre>
sudo apt-get update
sudo apt-get install -y build-essential cmake pkg-config
sudo apt-get install -y qt6-base-dev qt6-base-dev-tools libqt6sql6-dev
sudo apt-get install -y libsqlite3-dev
sudo apt-get install -y "^libxcb.*" libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libgl1-mesa-dev
</pre>





