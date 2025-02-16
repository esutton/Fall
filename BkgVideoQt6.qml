/**
 * GPLv3 license
 *
 * Copyright (c) 2021 Luca Carlon
 *
 * This file is part of Fall
 *
 * Fall is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Fall is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Fall.  If not, see <http://www.gnu.org/licenses/>.
 **/

//import QtQuick
//import QtMultimedia

// Lazy hack to make Qt 5.15.6 build happy
// ToDo: How to modify CMakeLists.txt to ignore BkgVideoQt6.qml for Qt 5?
import QtQuick 2.15
import QtMultimedia 5.15

Image {
    anchors.fill: parent

    Video {
        source: "file://" + mpath
        anchors.fill: parent
        fillMode: VideoOutput.Stretch
        Component.onCompleted: play()
    }
}
