include(../common_top.pri)
TARGET = ut_launcher

PKGCONFIG += ContentManagerSearchIf

MODEL_HEADERS += $$SRCDIR/launcherbuttonmodel.h \
    $$SRCDIR/launchermodel.h \
    $$SRCDIR/launcherpagemodel.h

SOURCES += \
    ut_launcher.cpp \
    $$SRCDIR/launcher.cpp \
    $$SRCDIR/launcherpage.cpp

# service classes
SOURCES += \
    $$SRCDIR/launcherbutton.cpp

# unit test and unit classes
HEADERS += \
    ut_launcher.h \
    $$SRCDIR/launcher.h \
    $$SRCDIR/launcherpage.h \
    $$SRCDIR/launchermodel.h \
    $$SRCDIR/launcherdatastore.h \
    $$SRCDIR/launcherpagemodel.h \
    $$SRCDIR/launcherbuttonmodel.h

# service classes
HEADERS += \
    $$SRCDIR/launcherbutton.h

DEFINES += APPLICATIONS_DIRECTORY=\'$$quote(\"/tmp/ut_launcher/applications/\")\'
DEFINES += CATEGORIES_DIRECTORY=\'$$quote(\"/tmp/ut_launcher/categories/\")\'

include(../common_bot.pri)
