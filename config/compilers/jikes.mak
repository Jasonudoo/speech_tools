 ###########################################################################
 ##                                                                       ##
 ##                Centre for Speech Technology Research                  ##
 ##                     University of Edinburgh, UK                       ##
 ##                         Copyright (c) 1996                            ##
 ##                        All Rights Reserved.                           ##
 ##                                                                       ##
 ##  Permission is hereby granted, free of charge, to use and distribute  ##
 ##  this software and its documentation without restriction, including   ##
 ##  without limitation the rights to use, copy, modify, merge, publish,  ##
 ##  distribute, sublicense, and/or sell copies of this work, and to      ##
 ##  permit persons to whom this work is furnished to do so, subject to   ##
 ##  the following conditions:                                            ##
 ##   1. The code must retain the above copyright notice, this list of    ##
 ##      conditions and the following disclaimer.                         ##
 ##   2. Any modifications must be clearly marked as such.                ##
 ##   3. Original authors' names are not deleted.                         ##
 ##   4. The authors' names are not used to endorse or promote products   ##
 ##      derived from this software without specific prior written        ##
 ##      permission.                                                      ##
 ##                                                                       ##
 ##  THE UNIVERSITY OF EDINBURGH AND THE CONTRIBUTORS TO THIS WORK        ##
 ##  DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING      ##
 ##  ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT   ##
 ##  SHALL THE UNIVERSITY OF EDINBURGH NOR THE CONTRIBUTORS BE LIABLE     ##
 ##  FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    ##
 ##  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN   ##
 ##  AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,          ##
 ##  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF       ##
 ##  THIS SOFTWARE.                                                       ##
 ##                                                                       ##
 ###########################################################################
 ##                                                                       ##
 ##                 Author: Richard Caley (rjc@cstr.ed.ac.uk)             ##
 ##                   Date: Fri Feb 27th 1998                             ##
 ## --------------------------------------------------------------------  ##
 ## Descriptin of Sun's JDK 1.1.*                                         ##
 ##                                                                       ##
 ###########################################################################

include $(EST)/config/compilers/jikes_defaults.mak

JAVA_COMPILER_DESC=Jikes

JAVA_COMPILER_VERSION_COMMAND=$(JAVAC) 2>&1 | sed -n '/^\(Version.*)\).*/{s//\1/;p;}' 

ifndef SYSTEM_JAVA_CLASSPATH
ifdef CLASSPATH
    SYSTEM_JAVA_CLASSPATH = $(CLASSPATH)
else
    SYSTEM_JAVA_CLASSPATH = $(JAVA_HOME)/lib/classes.zip
endif
endif

JAVAFLAGS = -depend

DEBUG_JAVAFLAGS = -g

WARN_JAVAFLAGS  = -deprecation +P
NOWARN_JAVAFLAGS  =  -nowarn

VERBOSE_JAVAFLAGS = -verbose

OPTIMISE_JAVAFLAGS = -O




