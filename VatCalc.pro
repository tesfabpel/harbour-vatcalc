# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed
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
    harbour-vatcalc.desktop

