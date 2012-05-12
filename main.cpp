#include <QtGui>
#include <QtQuick>
#include "libs/bass.h"

DWORD chan,act,millis,level;
QWORD pos;

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQuickView view;

    printf("Raspitina starting\n");

    // setup output - default device
    if (!BASS_Init(-1,44100,0,0,NULL))
        printf("Can't initialize device: error code %d\n", BASS_ErrorGetCode());

    // try streaming the file/url
    if (chan=BASS_SampleGetChannel(BASS_SampleLoad(false,"music.mp3", 0,0,1,BASS_SAMPLE_SOFTWARE), true)) {
        pos=BASS_ChannelGetLength(chan,BASS_POS_BYTE);
    }


    millis=BASS_ChannelBytes2Seconds(chan,pos);

    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setSource(QUrl(QCoreApplication::applicationDirPath() + "/qml/main.qml"));
    view.show();
    BASS_ChannelPlay(chan,FALSE);
    return app.exec();

    // BASS_Free();
}

