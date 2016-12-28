
INCLUDEPATH += $$PWD

SOURCES += \
	$$PWD/qfacebook.cpp

HEADERS += \
	$$PWD/qfacebook.h

android {
	QT += androidextras
	SOURCES += $$PWD/qfacebook_android.cpp

        #If the source code is included into a project that already defines the JNI_OnLoad,
        #uncomment the following line
        #DEFINES += QFACEBOOK_NOT_DEFINE_JNI_ONLOAD
} else:ios {
	## the objective sources should be put in this variable
	OBJECTIVE_SOURCES += \
		$$PWD/qfacebook_ios.mm
#        LIBS += -F/path/to/FacebookSDK -framework FacebookSDK
} else {
	SOURCES += \
		$$PWD/qfacebook_desktop.cpp
}

OTHER_FILES += \
        $$PWD/README.md \
        $$files($$PWD/Android/src/org/gmaxera/qtfacebook/*)

