symbian:{
TARGET.UID3 = 0xE4F87F36
LIBS += -lavkon
}

CONFIG += qt-components

SOURCES += main.cpp

include(qmlapplicationviewer/qmlapplicationviewer.pri)
qtcAddDeployment()

HEADERS += helper.h

RESOURCES += QRC.qrc

OTHER_FILES += qml\*.qml
