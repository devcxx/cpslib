
TARGET = cpslib
TEMPLATE = lib

DEFINES += CPSLIB_LIBRARY
DEFINES -= UNICODE

HEADERS += \
    types.h \
    common.h \
    cpslib.h \
    export.h \

SOURCES += \
    common.cpp \

win32 {
    QMAKE_CXXFLAGS -= -Zc:strictStrings
    QMAKE_CXXFLAGS_RELEASE -= -Zc:strictStrings
    QMAKE_CXXFLAGS_RELEASE_WITH_DEBUGINFO -= -Zc:strictStrings

    HEADERS += \
        $$PWD/windows/pslib_windows.h \

    SOURCES += \
        $$PWD/windows/pslib_windows.cpp \
}

linux {
    SOURCES += \
        $$PWD/linux/pslib_linux.cpp \
}

macx {
    SOURCES += \
        $$PWD/osx/pslib_osx.cpp \
}
