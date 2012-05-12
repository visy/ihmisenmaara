/****************************************************************************
**
** Copyright (C) 2012 Nokia Corporation and/or its subsidiary(-ies).
** Contact: http://www.qt-project.org/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** You may use this file under the terms of the BSD license as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of Nokia Corporation and its Subsidiary(-ies) nor
**     the names of its contributors may be used to endorse or promote
**     products derived from this software without specific prior written
**     permission.
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.0

import "../config.js" as Sys

Rectangle {
    id: screen

    width: 1920; height: 1080
    color: "#000000"
    border.color: "black"

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Image {
        source: Sys.datapath+"raamit.jpg"
        SequentialAnimation on opacity {

            loops: Animation.Infinite

            NumberAnimation {
                from: 0.4; to: 1
                easing.type: Easing.OutCurve; duration: 30
            }
            NumberAnimation {
                from: 1; to: 0.4
                easing.type: Easing.OutCurve; duration: 20
            }
        }
    }
    Image {

        source: Sys.datapath+"raamit.jpg"
        SequentialAnimation on opacity {

            loops: Animation.Infinite

            NumberAnimation {
                from: 0.4; to: 0.6
                easing.type: Easing.OutCurve; duration: 20
            }
            NumberAnimation {
                from: 0.6; to: 0.4
                easing.type: Easing.OutCurve; duration: 30
            }
        }
        SequentialAnimation on y {

            loops: Animation.Infinite

            NumberAnimation {
                from: 0.0; to: 4.6
                easing.type: Easing.OutCurve; duration: 200
            }
            NumberAnimation {
                from: 4.6; to: 0.0
                easing.type: Easing.OutCurve; duration: 300
            }
        }
    }

    FontLoader { id: fixedFont; source: "http://ameba.lpt.fi/~pesspaav/fontti.ttf" }

    Item {
        id: scrollercontainer
        anchors.fill: parent

        SequentialAnimation on opacity {

            loops: Animation.Infinite

            NumberAnimation {
                from: 0.4; to: 0.6
                easing.type: Easing.OutCurve; duration: 30
            }
            NumberAnimation {
                from: 0.6; to: 0.4
                easing.type: Easing.OutCurve; duration: 20
            }
        }


        Text {
            id: scroller
            maximumLineCount: 26


            anchors.fill: parent

            font.family: fixedFont.name
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.StyledText
            text:
"<br/>
Ei ole ihmisen hyvä,<br/>
jos hän on heikko,<br/>
tuntea, nähdä ja elää<br/>
kaikkea: kuilu on syvä,<br/>
siellä on vaaniva peikko.<br/>"
            color: "#FFEEEE"
            font.pixelSize: 70

            SequentialAnimation on opacity {

                loops: Animation.Infinite

                NumberAnimation {
                    from: 0.4; to: 0.6
                    easing.type: Easing.OutCurve; duration: 30
                }
                NumberAnimation {
                    from: 0.6; to: 0.4
                    easing.type: Easing.OutCurve; duration: 20
                }
            }
            SequentialAnimation on rotation {

                loops: Animation.Infinite

                NumberAnimation {
                    from: 0.1; to: -0.1
                    easing.type: Easing.OutCurve; duration: 200
                }
                NumberAnimation {
                    from: -0.1; to: 0.1
                    easing.type: Easing.OutCurve; duration: 300
                }
            }

        }
        Text {
            id: scroller2
            maximumLineCount: 26


            anchors.fill: parent

            font.family: fixedFont.name
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.StyledText
            text:
"<br/>
Ei ole ihmisen hyvä,<br/>
jos hän on heikko,<br/>
tuntea, nähdä ja elää<br/>
kaikkea: kuilu on syvä,<br/>
siellä on vaaniva peikko.<br/>"
            color: "#FFEEEE"
            font.pixelSize: 69

            SequentialAnimation on opacity {

                loops: Animation.Infinite

                NumberAnimation {
                    from: 0.4; to: 0.6
                    easing.type: Easing.OutCurve; duration: 20
                }
                NumberAnimation {
                    from: 0.6; to: 0.4
                    easing.type: Easing.OutCurve; duration: 30
                }
            }
            SequentialAnimation on rotation {

                loops: Animation.Infinite

                NumberAnimation {
                    from: 0.1; to: -0.1
                    easing.type: Easing.OutCurve; duration: 100
                }
                NumberAnimation {
                    from: -0.1; to: 0.1
                    easing.type: Easing.OutCurve; duration: 300
                }
            }

        }
    }

}
