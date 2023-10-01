import QtQuick 2.15

Item {
    Rectangle {
        id: requestPass
        width: 349
        height: 214
        color: "#ffffff"
        radius: 23
        border.width: 0

        Text {
            id: text27
            x: 23
            y: 25
            width: 304
            height: 26
            color: "#002e6e"
            text: qsTr("Request a pass or certificate")
            font.pixelSize: 22
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Fira Sans"
        }

        Text {
            id: text28
            x: 23
            y: 68
            width: 304
            height: 67
            color: "#002e6e"
            text: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n<html><head><meta name=\"qrichtext\" content=\"1\" /><meta charset=\"utf-8\" /><style type=\"text/css\">\np, li { white-space: pre-wrap; }\nhr { height: 1px; border-width: 0; }\n</style></head><body style=\" font-family:'Segoe UI'; font-size:9pt; font-weight:400; font-style:normal;\">\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Fira Sans'; font-size:14pt;\">Request</span><span style=\" font-family:'Fira Sans'; font-size:14pt; font-weight:700;\"> My Vaccine Pass</span><span style=\" font-family:'Fira Sans'; font-size:14pt;\"> or an </span></p>\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Fira Sans'; font-size:14pt; font-weight:700;\">International Travel Vaccination </span></p>\n<p style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:'Fira Sans'; font-size:14pt; font-weight:700;\">Certificate.</span></p></body></html>"
            font.pixelSize: 19
            lineHeight: 1
            font.family: "Fira Sans"
            textFormat: Text.RichText
        }

        Image {
            id: image8
            x: 30
            y: 148
            width: 290
            height: 46
            source: "assets/Thin Button.png"
            fillMode: Image.PreserveAspectFit

            Text {
                id: text29
                x: 0
                y: 0
                width: 290
                height: 46
                color: "#ffffff"
                text: qsTr("Request a pass or certificate")
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.Bold
                font.family: "Fira Sans"
            }

            MouseArea {
                id: requestButton
                x: 0
                y: 0
                width: 290
                height: 46

                onClicked: {
                    stackView.push("RequestPassPage.qml")
                }
            }
        }
    }
}
