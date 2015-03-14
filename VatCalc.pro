#    VatCalc: VAT Calculator for Sailfish OS
#    Copyright (C) 2015  TesX <tesfabpel@gmail.com>

#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

TARGET = harbour-vatcalc

CONFIG += sailfishapp

SOURCES += \
    src/harbour-vatcalc.cpp

OTHER_FILES += \
    qml/cover/CoverPage.qml \
    rpm/VatCalc.spec \
    qml/pages/Main.qml \
    qml/harbour-vatcalc.qml \
    rpm/harbour-vatcalc.yaml \
    rpm/harbour-vatcalc.spec \
    harbour-vatcalc.desktop \
    LICENSE.txt \
    README.md

