TARGET = "sqlite-explorer"
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
QT += widgets
HEADERS = sqlite_explorer.hh sqlite-3.21.0\sqlite3.h
SOURCES = sqlite_explorer.cc sqlite-3.21.0\sqlite3.c
RESOURCES = sqlite_explorer.qrc
ICON = sample.icns
RC_FILE = sqlite_explorer.rc
unix: {
 LIBS += -lsqlite3
}
win32 {
 DEFINES += _CRT_SECURE_NO_WARNINGS
 DEFINES += _CRT_NONSTDC_NO_DEPRECATE
 INCLUDEPATH += sqlite-3.21.0
 LIBS += 
}
