import QtQuick

Window {
    id: root
    width: 170
    height: 250
    flags: Qt.WindowStaysOnTopHint | Qt.WA_TranslucentBackground | Qt.FramelessWindowHint
    color: "#00000000" // Note: for translucency, use a rectangle with color instead because blending is broken on MacOS

    SystemPalette {
        id: myPalette;
    }

    visible: true
    Rectangle {
        anchors.fill: parent

        color: "#20ffffa0"
        border.color: "black"
        border.width: 3
        Rectangle {
            anchors.fill: parent

            color: "#00000000"
            border.color: "#30ffffff"
            border.width: 20
            TextEdit {
                anchors.fill: parent
                anchors.margins: 20
                color: "black"
                        wrapMode: TextEdit.WordWrap
            }
        }
}
    DragHandler {
        onActiveChanged: if (active) root.startSystemMove();
        target: null
    }
}
