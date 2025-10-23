# Install script for directory: /home/sean-mz/Downloads/Spelunky/spelunky-psp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Debug/bin/Spelunky_PSP" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Debug/bin/Spelunky_PSP")
      file(RPATH_CHECK
           FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Debug/bin/Spelunky_PSP"
           RPATH "")
    endif()
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Debug/bin" TYPE EXECUTABLE FILES "/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/Spelunky_PSP")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Debug/bin/Spelunky_PSP" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Debug/bin/Spelunky_PSP")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Debug/bin/Spelunky_PSP")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Release/bin/Spelunky_PSP" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Release/bin/Spelunky_PSP")
      file(RPATH_CHECK
           FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Release/bin/Spelunky_PSP"
           RPATH "")
    endif()
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Release/bin" TYPE EXECUTABLE FILES "/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/Spelunky_PSP")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Release/bin/Spelunky_PSP" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Release/bin/Spelunky_PSP")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Release/bin/Spelunky_PSP")
      endif()
    endif()
  endif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/vendor/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/assets/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/entity-registry/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/viewport/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/video/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/audio/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/level/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/rendering-types/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/time/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/camera/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/input/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/graphics-utils/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/game-loop/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/texture-bank/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/collisions/cmake_install.cmake")
  include("/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/src/patterns/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/sean-mz/Downloads/Spelunky/spelunky-psp/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
