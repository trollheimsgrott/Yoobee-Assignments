import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import "application.js" as Script

Window {
    id: window
    width: 375
    height: 812

    visible: true
    title: qsTr(Script.title)

    property int pos: 294
    property string homeColor: "#ffffff"
    property string contactColor: "#002e6e"
    property string profileColor: "#002e6e"

    StackView {
        id: stackView
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        initialItem: PrivacyStatement {}
    }

    SideBar {
        id: sideBar
        visible: false
    }
}
