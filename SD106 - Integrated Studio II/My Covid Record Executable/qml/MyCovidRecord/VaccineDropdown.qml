import QtQuick 2.15

Item {
    property alias vaccineDropdown: vaccineDropdown

    Rectangle {
        id: vaccineDropdown
        width: 341
        height: 513
        color: "#ffffff"
        radius: 23
        border.width: 0

        Text {
            x: 19
            y: 113
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("Dose 2")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Fira Sans"
        }

        Text {
            x: 19
            y: 139
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
            y: 179
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
            y: 198
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("Place administered")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Fira Sans"
        }

        Text {
            x: 19
            y: 230
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("New Zealand")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.styleName: "Regular"
            font.weight: Font.Normal
            font.family: "Fira Sans"
        }

        Rectangle {
            x: 19
            y: 263
            width: 311
            height: 1
            color: "#e7f1f9"
            border.width: 0
            anchors.rightMargin: 0
            anchors.verticalCenterOffset: -28
            anchors.leftMargin: 0
        }

        Text {
            x: 15
            y: 283
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("Manufacturer")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Fira Sans"
        }

        Text {
            x: 15
            y: 308
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("Pfizer-BioNTech")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.styleName: "Regular"
            font.weight: Font.Normal
            font.family: "Fira Sans"
        }

        Rectangle {
            x: 19
            y: 348
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
            y: 368
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("Batch Number")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.family: "Fira Sans"
        }

        Text {
            x: 19
            y: 393
            width: 311
            height: 19
            color: "#002e6e"
            text: qsTr("FJ8372")
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            font.styleName: "Regular"
            font.weight: Font.Normal
            font.family: "Fira Sans"
        }

        Rectangle {
            x: 19
            y: 433
            width: 311
            height: 1
            color: "#e7f1f9"
            border.width: 0
            anchors.rightMargin: 0
            anchors.verticalCenterOffset: -28
            anchors.leftMargin: 0
        }

        Image {
            x: 18
            y: 446
            width: 304
            height: 48
            source: "assets/Light Button.png"
            fillMode: Image.PreserveAspectFit

            Text {
                x: 0
                y: 0
                width: 304
                height: 48
                color: "#002e6e"
                text: qsTr("Book A Vaccine")
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Fira Sans"
                font.styleName: "Bold"
                font.weight: Font.Bold
            }
        }
    }
}
