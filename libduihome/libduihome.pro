TEMPLATE = lib
CONFIG += dll
TARGET = duihome
DEPENDPATH += .
INCLUDEPATH += ../include \
    . \
LIBS += -ldui

# For setting the coverage flag ON
contains(COV_OPTION, on) { 
    LIBS += -lgcov
    QMAKE_CXXFLAGS += -ftest-coverage \
        -fprofile-arcs
}

include(base.pri)

# Input
INSTALL_HEADERS += duihomesystemnotificationpluginbase.h \
    duihomesystemnotificationsourceinterface.h \
    duihomesystemnotificationplugininterface.h
HEADERS += \
    $$INSTALL_HEADERS
SOURCES += duihomesystemnotificationpluginbase.cpp
headers.path += /usr/include/$$TARGET
headers.files += $$INSTALL_HEADERS
target.path += /usr/lib
INSTALLS += target \
    headers
QMAKE_CLEAN += *.gcov \
    ./.obj/*.gcno
QMAKE_EXTRA_TARGETS += check
check.commands = $$system(true)
QMAKE_EXTRA_TARGETS += check-xml
check-xml.commands = $$system(true)
