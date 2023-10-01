import QtQuick 2.15

Item {
    property alias profile: profile
    property alias profileButton: profileButton

    Rectangle {
        id: profile
        width: 349
        height: 101
        color: "#ffffff"
        radius: 23
        border.color: "#55a3eb"
        border.width: 0

        Text {
            x: 99
            y: 0
            width: 199
            height: 51
            color: "#002e6e"
            text: qsTr("John Doe")
            font.pixelSize: 20
            verticalAlignment: Text.AlignBottom
            font.weight: Font.Bold
            font.family: "Fira Sans"
        }

        Text {
            x: 99
            y: 51
            width: 199
            height: 50
            color: "#002e6e"
            text: qsTr("View NHI and Profile")
            font.pixelSize: 18
            font.styleName: "Regular"
            font.family: "Fira Sans"
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
            x: 0
            y: 33
            width: 99
            height: 35
            source: "assets/Profile Button.png"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: profileButton
            x: 0
            y: 0
            width: 349
            height: 101
        }
    }
}
