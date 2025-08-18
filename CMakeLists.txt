cmake_minimum_required(VERSION 3.60)
project(sqlite_explorer LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Widgets Network Sql)
qt_standard_project_setup()

if(UNIX AND NOT APPLE)
  set(LINUX TRUE)
endif()

#//////////////////////////
# resources
#//////////////////////////

qt_add_resources(qrc_sources sqlite_explorer.qrc)
if(WIN32)
  set(windows_resources sqlite_explorer.rc)
endif()
if(APPLE)
  set(MACOSX_BUNDLE_ICON_FILE sqlite_explorer.icns)
  set(app_icon_macos sqlite_explorer.icns)
  set_source_files_properties(${app_icon_macos} PROPERTIES MACOSX_PACKAGE_LOCATION "Resources")
endif()

#//////////////////////////
# include locations  
#//////////////////////////

include_directories(${CMAKE_SOURCE_DIR}/sqlite-3.21.0)

#//////////////////////////
# source files
#//////////////////////////

set(src 
  sqlite_explorer.cc
  sqlite_explorer.hh
  sqlite-3.21.0/sqlite3.c
  sqlite-3.21.0/sqlite3.h
)

# Qt MOC processing for headers with Q_OBJECT
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

add_executable(sqlite_explorer ${src} ${qrc_sources} ${windows_resources} ${app_icon_macos})

#//////////////////////////
# Qt libraries
#//////////////////////////

set(lib_dep 
    Qt6::Widgets
    Qt6::Network
    Qt6::Sql
)

if(WIN32)
    set(lib_dep ${lib_dep} shlwapi advapi32 shell32 user32 kernel32)
endif()

target_link_libraries(sqlite_explorer PRIVATE ${lib_dep})
set_target_properties(sqlite_explorer PROPERTIES WIN32_EXECUTABLE ON MACOSX_BUNDLE ON)

set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT sqlite_explorer)