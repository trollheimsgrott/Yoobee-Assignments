import QtQuick 2.15

Item {
    property alias results: results
    property alias resultsButton: resultsButton

    Rectangle {
        id: results
        width: 349
        height: 101
        color: "#ffffff"
        radius: 23
        border.color: "#55a3eb"
        border.width: 0

        Text {
            x: 99
            y: 0
            width: 207
            height: 101
            color: "#002e6e"
            text: qsTr("Covid-19 Test
Results")
            font.pixelSize: 20
            font.weight: Font.Bold
            verticalAlignment: Text.AlignVCenter
            font.family: "Fira Sans"
            font.styleName: "Bold"
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
            id: resultsButton
            x: 0
            y: 0
            width: 349
            height: 101
        }
    }
}
