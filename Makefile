# Compiler flags
# build directory
BDIR=build
# object directory
ODIR=objects
# source directory
SDIR=src
# include directory
IDIR=include
# test directory
TDIR=test
# library directory
LDIR=lib
# example source directory
EDIR=examples
# example bin directory
EBIN=examples/bin

# generated library path
LIB=$(LDIR)/libtmath.a
# include flag
INC=-I$(IDIR)
# other compiler flags
CFLAGS=-std=c++11 -g -gstabs

TUTILS=tutils
TUTILS_OBJ=$(ODIR)/$(TUTILS).o

_UNITS= abs.o cosecant.o cosine.o cotangent.o degrad.o equality.o \
		explog.o factorial.o fcm.o power.o roots.o secant.o sine.o \
		tangent.o vector.o matrix.o
OBJECTS=$(patsubst %,$(ODIR)/%,$(_UNITS))
TESTS=$(patsubst %,$(ODIR)/test_%,$(_UNITS))

all: lib tests
	@echo "done."

lib: folders $(LIB)
	@echo "build library."

folders:
	@mkdir -p $(BDIR) $(ODIR) $(LDIR)

tests: folders utils $(TESTS)
	@echo "all tests passed."

# build test utilities
utils:
	$(CC) $(INC) $(CFLAGS) -c -o $(TUTILS_OBJ) $(TDIR)/test_utils.cpp

$(EBIN):
	@mkdir -p $(EBIN)

$(EDIR): $(EBIN) lib
	$(CC) $(INC) $(CFLAGS) -o $(EBIN)/gauss $(EDIR)/gauss-method/main.cpp $(LIB)
	$(CC) $(INC) $(CFLAGS) -o $(EBIN)/jacobi $(EDIR)/jacobi-iteration/main.cpp $(LIB)

# build and run tests
$(ODIR)/test_%.o: $(TDIR)/%.cpp
	$(CC) $(INC) $(CFLAGS) -o $@ $< $(TUTILS_OBJ) $(LIB)
	@$@
	
# build objects
$(ODIR)/%.o: $(SDIR)/%.cpp
	$(CC) -c $(INC) -o $@ $< $(CFLAGS)

# build library
$(LIB): $(OBJECTS)
	ar rvs $(LIB) $^
	
# make clean
clean:
	@rm -rf $(BDIR) $(ODIR) $(LDIR) $(EBIN)
	@echo "workspace cleaned."
