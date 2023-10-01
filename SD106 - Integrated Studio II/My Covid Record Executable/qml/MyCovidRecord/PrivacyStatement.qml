import QtQuick 2.15
import QtQuick.Controls 2.15

Flickable {    
    Rectangle {
        width: 375
        height: 812
        color: "#e3f3ff"

        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#e3f3ff"
            }

            GradientStop {
                position: 1
                color: "#edf7ff"
            }
            orientation: Gradient.Vertical
        }

        Image {
            x: 0
            y: 0
            width: 347
            height: 119
            source: "assets/Second Logo.png"
        }

        Image {
            x: 14
            y: 143
            width: 346
            height: 627
            source: "assets/Get Started.png"

            MouseArea {
                x: 48
                y: 533
                width: 250
                height: 50

                onClicked: {
                    stackView.push("LoginPage.qml")
                }
            }
        }
    }
}
