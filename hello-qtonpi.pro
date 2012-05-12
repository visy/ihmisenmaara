TEMPLATE = app

target.path = /root/hello-qtonpi
TARGET = hello-qtonpi
INSTALLS += target

DEPENDPATH += .
INCLUDEPATH += .

CONFIG += qt plugin qmlimageproviderplugin

QT += quick

SOURCES += main.cpp

qml_folder.source = qml
DEPLOYMENTFOLDERS = qml_folder

OTHER_FILES += \
    qml/* \
    config.js

for(deploymentfolder, DEPLOYMENTFOLDERS) {
    item = item$${deploymentfolder}
    itemsources = $${item}.sources
    $$itemsources = $$eval($${deploymentfolder}.source)
    itempath = $${item}.path
    $$itempath= $$eval($${deploymentfolder}.target)
    export($$itemsources)
    export($$itempath)
    DEPLOYMENT += $$item
}

installPrefix = /root/$${TARGET}

for(deploymentfolder, DEPLOYMENTFOLDERS) {
    item = item$${deploymentfolder}
    itemfiles = $${item}.files
    $$itemfiles = $$eval($${deploymentfolder}.source)
    itempath = $${item}.path
    $$itempath = $${installPrefix}/$$eval($${deploymentfolder}.target)
    export($$itemfiles)
    export($$itempath)
    INSTALLS += $$item
}

HEADERS += \
    libs/bass.h

unix:!macx:!symbian: LIBS += -L$$PWD/libs/ -lbass

INCLUDEPATH += $$PWD/libs
DEPENDPATH += $$PWD/libs

