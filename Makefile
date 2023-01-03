TOP=.
include $(TOP)/Make.rules

CXXFLAGS=
CXXFLAGS+=-g -Wall -Werror -Wextra -std=c++14

TARGETS=\
    handout.pdf\
	gentest

all:: $(TARGETS)

clean:: texclean
	rm -f $(TARGETS) *.out *.o
