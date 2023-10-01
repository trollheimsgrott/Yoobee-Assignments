import QtQuick 2.15

Item {
    property alias profileDropdown: profileDropdown

    Rectangle {
        id: profileDropdown
        width: 341
        height: 545
        color: "#ffffff"
        radius: 23
        border.width: 0

        Text {
            x: 0
            y: 120
            width: 341
            color: "#55a3eb"
            text: qsTr("Your NHI Number")
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Fira Sans"
        }

        Text {
            x: 0
            y: 146
            width: 341
            color: "#002e6e"
            text: qsTr("ABC1234")
            font.pixelSize: 27
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Fira Sans"
        }

        Text {
            x: 0
            y: 184
            width: 341
            height: 38
            color: "#002e6e"
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Fira Sans'; font-size:12pt;\">Share your NHI number with others when </span></p>\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Fira Sans'; font-size:12pt;\">required</span></p></body></html>"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            lineHeight: 1
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
            textFormat: Text.RichText
            font.styleName: "Regular"
            font.family: "Fira Sans"
        }

        Text {
            x: 18
            y: 368
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("Name")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Fira Sans"
        }

        Text {
            x: 18
            y: 394
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("John Michael Doe")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.styleName: "Regular"
            font.weight: Font.Normal
            font.family: "Fira Sans"
        }

        Text {
            x: 18
            y: 453
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("Date of birth")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.family: "Fira Sans"
            font.weight: Font.Bold
        }

        Text {
            x: 18
            y: 478
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("12 May 2004")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.family: "Fira Sans"
            font.styleName: "Regular"
            font.weight: Font.Normal
        }

        Rectangle {
            x: 18
            y: 354
            width: 311
            height: 1
            color: "#e7f1f9"
            border.width: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.verticalCenterOffset: -28
        }

        Rectangle {
            x: 18
            y: 434
            width: 311
            height: 1
            color: "#e7f1f9"
            border.width: 0
            anchors.verticalCenterOffset: 55
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        Rectangle {
            x: 18
            y: 518
            width: 311
            height: 1
            color: "#e7f1f9"
            border.width: 0
            anchors.verticalCenterOffset: -28
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        Image {
            x: 115
            y: 232
            width: 110
            height: 110
            source: "assets/qr-code.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 6
            fillMode: Image.PreserveAspectFit
        }
    }
}
