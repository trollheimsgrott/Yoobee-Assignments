import QtQuick 2.15

Item {
    property alias vaccines: vaccines
    property alias vaccineButton: vaccineButton

    Rectangle {
        id: vaccines
        width: 349
        height: 101
        color:  "#ffffff"
        radius: 23
        border.color: "#55a3eb"
        border.width: 0
        Text {
            x: 101
            y: 0
            width: 197
            height: 39
            color: "#002e6e"
            text: "My Vaccines"
            font.pixelSize: 20
            verticalAlignment: Text.AlignBottom
            font.weight: Font.Bold
            font.family: "Fira Sans"
            font.styleName: "Bold"
        }

        Text {
            x: 101
            y: 44
            width: 197
            height: 57
            color: "#002e6e"
            text: qsTr("Pfizer BioNTech
COVID-19")
            font.pixelSize: 18
            font.family: "Fira Sans"
            font.styleName: "Regular"
        }

        Image {
            x: 298
            y: 36
            width: 28
            height: 28
            source: "assets/Dropdown Circle.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            x: 10
            y: 15
            width: 71
            height: 71
            source: "assets/Vaccine Icon.png"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: vaccineButton
            x: 0
            y: 0
            width: 349
            height: 101
        }
    }
}
