import QtQuick 2.15

Item {
    property alias resultsDropdown: resultsDropdown

    Rectangle {
        id: resultsDropdown
        width: 341
        height: 438
        color: "#ffffff"
        radius: 23
        border.width: 0

        Text {
            x: 19
            y: 111
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("Test Date")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Fira Sans"
        }

        Text {
            x: 19
            y: 137
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("16 October 2021")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.styleName: "Regular"
            font.weight: Font.Normal
            font.family: "Fira Sans"
        }

        Rectangle {
            x: 19
            y: 177
            width: 311
            height: 1
            color: "#e7f1f9"
            border.width: 0
            anchors.rightMargin: 0
            anchors.verticalCenterOffset: -28
            anchors.leftMargin: 0
        }

        Text {
            x: 19
            y: 196
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("Result")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Fira Sans"
        }

        Text {
            x: 19
            y: 228
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("Negative")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.styleName: "Regular"
            font.weight: Font.Normal
            font.family: "Fira Sans"
        }

        Rectangle {
            x: 19
            y: 261
            width: 311
            height: 1
            color: "#e7f1f9"
            border.width: 0
            anchors.rightMargin: 0
            anchors.verticalCenterOffset: -28
            anchors.leftMargin: 0
        }

        Image {
            x: 22
            y: 282
            width: 304
            height: 48
            source: "assets/Thin Button.png"
            fillMode: Image.PreserveAspectFit

            Text {
                x: 0
                y: 0
                width: 304
                height: 48
                color: "#ffffff"
                text: qsTr("Report a RAT result")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.Bold
                font.family: "Fira Sans"
            }

            MouseArea {
                x: 0
                y: 0
                width: 304
                height: 48

                onClicked: {
                    stackView.push("RAT.qml")
                }
            }
        }

        Image {
            x: 22
            y: 340
            width: 304
            height: 48
            source: "assets/Light Button.png"
            mirror: false
            autoTransform: false
            rotation: 0
            fillMode: Image.PreserveAspectFit

            Text {
                x: 0
                y: 0
                width: 304
                height: 48
                color: "#002e6e"
                text: qsTr("Order a Free RAT Test")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.Bold
                font.family: "Fira Sans"
            }
        }

        Text {
            x: 47
            y: 398
            width: 245
            height: 40
            color: "#766161"
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">Report a rapid antigen test result (RAT) for </p>\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\">yourself and others.</p></body></html>"
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            textFormat: Text.RichText
            clip: false
        }
    }
}
