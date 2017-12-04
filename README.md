SQLite Explorer
====================

<img src="https://cloud.githubusercontent.com/assets/6119070/11098722/66e4ad1c-886c-11e5-9bd2-097b15457102.png">


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


Install dependency packages (Ubuntu):
<pre>
sudo apt-get install build-essential
sudo apt-get build-dep qt5-default
sudo apt-get install "^libxcb.*" libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev
sudo apt-get install libgl1-mesa-dev
sudo apt-get install libsqlite3-dev
</pre>

Get source:
<pre>
git clone https://github.com/pedro-vicente/sqlite-explorer.git
</pre>

Build with:
<pre>
qmake
make
</pre>

<a target="_blank" href="http://www.space-research.org/">
<img src="https://cloud.githubusercontent.com/assets/6119070/11140582/b01b6454-89a1-11e5-8848-3ddbecf37bf5.png"></a>


