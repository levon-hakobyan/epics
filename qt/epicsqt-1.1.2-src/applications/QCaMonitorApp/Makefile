#############################################################################
# Makefile for building: QCaMonitor
# Generated by qmake (2.01a) (Qt 4.8.4) on: Wed Jun 19 18:54:33 2013
# Project:  QCaMonitor.pro
# Template: app
# Command: /apps/Trolltech/Qt/bin/qmake -o Makefile QCaMonitor.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/misc/apps/Trolltech/Qt-4.8.4/mkspecs/linux-g++ -I. -I/misc/apps/Trolltech/Qt-4.8.4/include/QtCore -I/misc/apps/Trolltech/Qt-4.8.4/include -Iinclude -I../../ca_framework/api/include -I../../ca_framework/data/include -I../../ca_framework/plugins/include -I../../../base-3.14.12.3/include -I.
LINK          = g++
LFLAGS        = -Wl,-O1 -Wl,-rpath,/apps/Trolltech/Qt-4.8.4/lib
LIBS          = $(SUBLIBS)  -L/apps/Trolltech/Qt-4.8.4/lib -L/misc/clas/clas12/R3.14.12.3/epicsqt-1.1.2-src/ca_framework/plugins/release -lQCaPlugin -lQtCore -L/apps/Trolltech/Qt-4.8.4/lib -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /apps/Trolltech/Qt/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = src/main.cpp \
		src/monitor.cpp \
		/gdbmacros/gdbmacros.cpp moc_monitor.cpp
OBJECTS       = main.o \
		monitor.o \
		gdbmacros.o \
		moc_monitor.o
DIST          = /misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/unix.conf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/linux.conf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/gcc-base.conf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/gcc-base-unix.conf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/g++-base.conf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/g++-unix.conf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/qconfig.pri \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/modules/qt_webkit_version.pri \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/qt_functions.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/qt_config.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/exclusive_builds.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/default_pre.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/release.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/default_post.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/warn_on.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/qt.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/unix/thread.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/moc.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/resources.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/uic.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/yacc.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/lex.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/include_source_dir.prf \
		QCaMonitor.pro
QMAKE_TARGET  = QCaMonitor
DESTDIR       = 
TARGET        = QCaMonitor

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: QCaMonitor.pro  /misc/apps/Trolltech/Qt-4.8.4/mkspecs/linux-g++/qmake.conf /misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/unix.conf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/linux.conf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/gcc-base.conf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/gcc-base-unix.conf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/g++-base.conf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/g++-unix.conf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/qconfig.pri \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/modules/qt_webkit_version.pri \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/qt_functions.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/qt_config.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/exclusive_builds.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/default_pre.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/release.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/default_post.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/warn_on.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/qt.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/unix/thread.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/moc.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/resources.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/uic.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/yacc.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/lex.prf \
		/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/include_source_dir.prf \
		/apps/Trolltech/Qt-4.8.4/lib/libQtCore.prl
	$(QMAKE) -o Makefile QCaMonitor.pro
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/unix.conf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/linux.conf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/gcc-base.conf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/gcc-base-unix.conf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/g++-base.conf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/common/g++-unix.conf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/qconfig.pri:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/modules/qt_webkit_version.pri:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/qt_functions.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/qt_config.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/exclusive_builds.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/default_pre.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/release.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/default_post.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/unix/gdb_dwarf_index.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/warn_on.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/qt.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/unix/thread.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/moc.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/resources.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/uic.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/yacc.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/lex.prf:
/misc/apps/Trolltech/Qt-4.8.4/mkspecs/features/include_source_dir.prf:
/apps/Trolltech/Qt-4.8.4/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile QCaMonitor.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/QCaMonitor1.0.0 || $(MKDIR) .tmp/QCaMonitor1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/QCaMonitor1.0.0/ && $(COPY_FILE) --parents include/monitor.h .tmp/QCaMonitor1.0.0/ && $(COPY_FILE) --parents src/main.cpp src/monitor.cpp /gdbmacros/gdbmacros.cpp .tmp/QCaMonitor1.0.0/ && (cd `dirname .tmp/QCaMonitor1.0.0` && $(TAR) QCaMonitor1.0.0.tar QCaMonitor1.0.0 && $(COMPRESS) QCaMonitor1.0.0.tar) && $(MOVE) `dirname .tmp/QCaMonitor1.0.0`/QCaMonitor1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/QCaMonitor1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_monitor.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_monitor.cpp
moc_monitor.cpp: include/monitor.h
	/apps/Trolltech/Qt-4.8.4/bin/moc $(DEFINES) $(INCPATH) include/monitor.h -o moc_monitor.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

main.o: src/main.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o src/main.cpp

monitor.o: src/monitor.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o monitor.o src/monitor.cpp

gdbmacros.o: /gdbmacros/gdbmacros.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o gdbmacros.o /gdbmacros/gdbmacros.cpp

moc_monitor.o: moc_monitor.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_monitor.o moc_monitor.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

