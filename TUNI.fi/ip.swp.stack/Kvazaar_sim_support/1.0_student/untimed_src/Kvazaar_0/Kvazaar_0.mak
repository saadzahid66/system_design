_INCLUDES= ../../../../../ip.sw/Kvazaar/0.7.2/src ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/avx2 ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/generic ../../../../../ip.sw/Kvazaar/0.7.2/src/extras ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/altivec ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/sse2 ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/sse41 ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/x86_asm ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies ../supplement ../systemc
INCLUDES=$(patsubst %, -I%, $(_INCLUDES))

DEPS= Kvazaar_0.mak

ENAME= Kvazaar_0
EFLAGS= $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS) -DIP_DEBUG -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11
EBUILDER= g++
_OBJ= bitstream.c.o cabac.c.o checkpoint.c.o cli.c.o config.c.o context.c.o cu.c.o dct-avx2.c.o dct-generic.c.o encmain.c.o encoder_state-bitstream.c.o encoder_state-ctors_dtors.c.o encoder_state-geometry.c.o encoder.c.o encoderstate.c.o filter.c.o getopt.c.o image.c.o imagelist.c.o input_frame_buffer.c.o inter.c.o interface_main.c.o intra-avx2.c.o intra-generic.c.o intra.c.o ipol-avx2.c.o ipol-generic.c.o kvazaar.c.o nal-generic.c.o nal.c.o picture-altivec.c.o picture-avx2.c.o picture-generic.c.o picture-sse2.c.o picture-sse41.c.o picture-x86-asm.c.o quant-avx2.c.o quant-generic.c.o rate_control.c.o rdo.c.o sao.c.o scalinglist.c.o search_inter.c.o search_intra.c.o search.c.o strategies-dct.c.o strategies-intra.c.o strategies-ipol.c.o strategies-nal.c.o strategies-picture.c.o strategies-quant.c.o strategyselector.c.o tables.c.o threadqueue.c.o transform.c.o videoframe.c.o yuv_io.c.o camera_supplement.c.o encmain_supplement.c.o encoderstate_supplement.c.o sc_kvazaar_ip_sub.c.o sc_kvazaar.c.o sc_main.c.o search_intra_supplement.c.o search_supplement.c.o
ODIR= obj
OBJ= $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ENAME): $(OBJ)
	$(EBUILDER) -o $(ENAME) $(OBJ) $(EFLAGS)

clean:
	rm -f $(OBJ:%.o=%.d);
	rm -f $(OBJ);

all: $(OBJ)

$(OBJ): | $(ODIR)

$(ODIR):
	mkdir -p $(ODIR)

DEBUG_FLAGS +=
debug: DEBUG_FLAGS += -ggdb -fno-omit-frame-pointer -fno-inline-functions -fno-inline-functions-called-once -fno-optimize-sibling-calls
debug: $(ENAME)

PROFILE_FLAGS +=
profile: PROFILE_FLAGS += -pg -fno-omit-frame-pointer -fno-inline-functions -fno-inline-functions-called-once -fno-optimize-sibling-calls
profile: $(ENAME)

-include $(OBJ:%.o=%.d)

$(ODIR)/bitstream.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/bitstream.c
	g++ -MMD -MP -c -o $(ODIR)/bitstream.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/bitstream.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/cabac.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/cabac.c
	g++ -MMD -MP -c -o $(ODIR)/cabac.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/cabac.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/checkpoint.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/checkpoint.c
	g++ -MMD -MP -c -o $(ODIR)/checkpoint.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/checkpoint.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/cli.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/cli.c
	g++ -MMD -MP -c -o $(ODIR)/cli.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/cli.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/config.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/config.c
	g++ -MMD -MP -c -o $(ODIR)/config.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/config.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/context.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/context.c
	g++ -MMD -MP -c -o $(ODIR)/context.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/context.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/cu.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/cu.c
	g++ -MMD -MP -c -o $(ODIR)/cu.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/cu.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/dct-avx2.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/avx2/dct-avx2.c
	g++ -MMD -MP -c -o $(ODIR)/dct-avx2.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/avx2/dct-avx2.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/dct-generic.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/generic/dct-generic.c
	g++ -MMD -MP -c -o $(ODIR)/dct-generic.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/generic/dct-generic.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/encmain.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/encmain.c
	g++ -MMD -MP -c -o $(ODIR)/encmain.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/encmain.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/encoder_state-bitstream.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/encoder_state-bitstream.c
	g++ -MMD -MP -c -o $(ODIR)/encoder_state-bitstream.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/encoder_state-bitstream.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/encoder_state-ctors_dtors.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/encoder_state-ctors_dtors.c
	g++ -MMD -MP -c -o $(ODIR)/encoder_state-ctors_dtors.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/encoder_state-ctors_dtors.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/encoder_state-geometry.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/encoder_state-geometry.c
	g++ -MMD -MP -c -o $(ODIR)/encoder_state-geometry.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/encoder_state-geometry.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/encoder.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/encoder.c
	g++ -MMD -MP -c -o $(ODIR)/encoder.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/encoder.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/encoderstate.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/encoderstate.c
	g++ -MMD -MP -c -o $(ODIR)/encoderstate.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/encoderstate.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/filter.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/filter.c
	g++ -MMD -MP -c -o $(ODIR)/filter.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/filter.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/getopt.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/extras/getopt.c
	g++ -MMD -MP -c -o $(ODIR)/getopt.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/extras/getopt.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/image.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/image.c
	g++ -MMD -MP -c -o $(ODIR)/image.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/image.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/imagelist.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/imagelist.c
	g++ -MMD -MP -c -o $(ODIR)/imagelist.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/imagelist.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/input_frame_buffer.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/input_frame_buffer.c
	g++ -MMD -MP -c -o $(ODIR)/input_frame_buffer.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/input_frame_buffer.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/inter.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/inter.c
	g++ -MMD -MP -c -o $(ODIR)/inter.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/inter.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/interface_main.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/interface_main.c
	g++ -MMD -MP -c -o $(ODIR)/interface_main.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/interface_main.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/intra-avx2.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/avx2/intra-avx2.c
	g++ -MMD -MP -c -o $(ODIR)/intra-avx2.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/avx2/intra-avx2.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/intra-generic.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/generic/intra-generic.c
	g++ -MMD -MP -c -o $(ODIR)/intra-generic.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/generic/intra-generic.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/intra.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/intra.c
	g++ -MMD -MP -c -o $(ODIR)/intra.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/intra.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/ipol-avx2.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/avx2/ipol-avx2.c
	g++ -MMD -MP -c -o $(ODIR)/ipol-avx2.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/avx2/ipol-avx2.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/ipol-generic.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/generic/ipol-generic.c
	g++ -MMD -MP -c -o $(ODIR)/ipol-generic.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/generic/ipol-generic.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/kvazaar.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/kvazaar.c
	g++ -MMD -MP -c -o $(ODIR)/kvazaar.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/kvazaar.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/nal-generic.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/generic/nal-generic.c
	g++ -MMD -MP -c -o $(ODIR)/nal-generic.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/generic/nal-generic.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/nal.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/nal.c
	g++ -MMD -MP -c -o $(ODIR)/nal.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/nal.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/picture-altivec.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/altivec/picture-altivec.c
	g++ -MMD -MP -c -o $(ODIR)/picture-altivec.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/altivec/picture-altivec.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/picture-avx2.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/avx2/picture-avx2.c
	g++ -MMD -MP -c -o $(ODIR)/picture-avx2.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/avx2/picture-avx2.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/picture-generic.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/generic/picture-generic.c
	g++ -MMD -MP -c -o $(ODIR)/picture-generic.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/generic/picture-generic.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/picture-sse2.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/sse2/picture-sse2.c
	g++ -MMD -MP -c -o $(ODIR)/picture-sse2.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/sse2/picture-sse2.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/picture-sse41.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/sse41/picture-sse41.c
	g++ -MMD -MP -c -o $(ODIR)/picture-sse41.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/sse41/picture-sse41.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/picture-x86-asm.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/x86_asm/picture-x86-asm.c
	g++ -MMD -MP -c -o $(ODIR)/picture-x86-asm.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/x86_asm/picture-x86-asm.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/quant-avx2.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/avx2/quant-avx2.c
	g++ -MMD -MP -c -o $(ODIR)/quant-avx2.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/avx2/quant-avx2.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/quant-generic.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/generic/quant-generic.c
	g++ -MMD -MP -c -o $(ODIR)/quant-generic.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/generic/quant-generic.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/rate_control.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/rate_control.c
	g++ -MMD -MP -c -o $(ODIR)/rate_control.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/rate_control.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/rdo.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/rdo.c
	g++ -MMD -MP -c -o $(ODIR)/rdo.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/rdo.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/sao.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/sao.c
	g++ -MMD -MP -c -o $(ODIR)/sao.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/sao.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/scalinglist.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/scalinglist.c
	g++ -MMD -MP -c -o $(ODIR)/scalinglist.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/scalinglist.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/search_inter.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/search_inter.c
	g++ -MMD -MP -c -o $(ODIR)/search_inter.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/search_inter.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/search_intra.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/search_intra.c
	g++ -MMD -MP -c -o $(ODIR)/search_intra.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/search_intra.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/search.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/search.c
	g++ -MMD -MP -c -o $(ODIR)/search.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/search.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/strategies-dct.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/strategies-dct.c
	g++ -MMD -MP -c -o $(ODIR)/strategies-dct.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/strategies-dct.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/strategies-intra.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/strategies-intra.c
	g++ -MMD -MP -c -o $(ODIR)/strategies-intra.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/strategies-intra.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/strategies-ipol.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/strategies-ipol.c
	g++ -MMD -MP -c -o $(ODIR)/strategies-ipol.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/strategies-ipol.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/strategies-nal.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/strategies-nal.c
	g++ -MMD -MP -c -o $(ODIR)/strategies-nal.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/strategies-nal.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/strategies-picture.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/strategies-picture.c
	g++ -MMD -MP -c -o $(ODIR)/strategies-picture.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/strategies-picture.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/strategies-quant.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/strategies-quant.c
	g++ -MMD -MP -c -o $(ODIR)/strategies-quant.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategies/strategies-quant.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/strategyselector.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/strategyselector.c
	g++ -MMD -MP -c -o $(ODIR)/strategyselector.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/strategyselector.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/tables.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/tables.c
	g++ -MMD -MP -c -o $(ODIR)/tables.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/tables.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/threadqueue.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/threadqueue.c
	g++ -MMD -MP -c -o $(ODIR)/threadqueue.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/threadqueue.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/transform.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/transform.c
	g++ -MMD -MP -c -o $(ODIR)/transform.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/transform.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/videoframe.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/videoframe.c
	g++ -MMD -MP -c -o $(ODIR)/videoframe.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/videoframe.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/yuv_io.c.o: $(DEPS) ../../../../../ip.sw/Kvazaar/0.7.2/src/yuv_io.c
	g++ -MMD -MP -c -o $(ODIR)/yuv_io.c.o ../../../../../ip.sw/Kvazaar/0.7.2/src/yuv_io.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/camera_supplement.c.o: $(DEPS) ../supplement/camera_supplement.c
	g++ -MMD -MP -c -o $(ODIR)/camera_supplement.c.o ../supplement/camera_supplement.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -DIP_ACC -I$(SYSTEMC_HOME)/include -lsystemc -std=c++11 -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/encmain_supplement.c.o: $(DEPS) ../supplement/encmain_supplement.c
	g++ -MMD -MP -c -o $(ODIR)/encmain_supplement.c.o ../supplement/encmain_supplement.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -DIP_ACC -I$(SYSTEMC_HOME)/include -lsystemc -std=c++11 -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/encoderstate_supplement.c.o: $(DEPS) ../supplement/encoderstate_supplement.c
	g++ -MMD -MP -c -o $(ODIR)/encoderstate_supplement.c.o ../supplement/encoderstate_supplement.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -DIP_ACC -I$(SYSTEMC_HOME)/include -lsystemc -std=c++11 -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/sc_kvazaar_ip_sub.c.o: $(DEPS) ../systemc/sc_kvazaar_ip_sub.c
	g++ -MMD -MP -c -o $(ODIR)/sc_kvazaar_ip_sub.c.o ../systemc/sc_kvazaar_ip_sub.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -DIP_ACC -I$(SYSTEMC_HOME)/include -lsystemc -std=c++11 -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/sc_kvazaar.c.o: $(DEPS) ../systemc/sc_kvazaar.c
	g++ -MMD -MP -c -o $(ODIR)/sc_kvazaar.c.o ../systemc/sc_kvazaar.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -DIP_ACC -I$(SYSTEMC_HOME)/include -lsystemc -std=c++11 -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/sc_main.c.o: $(DEPS) ../systemc/sc_main.c
	g++ -MMD -MP -c -o $(ODIR)/sc_main.c.o ../systemc/sc_main.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -DIP_ACC -I$(SYSTEMC_HOME)/include -lsystemc -std=c++11 -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/search_intra_supplement.c.o: $(DEPS) ../supplement/search_intra_supplement.c
	g++ -MMD -MP -c -o $(ODIR)/search_intra_supplement.c.o ../supplement/search_intra_supplement.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -DIP_ACC -I$(SYSTEMC_HOME)/include -lsystemc -std=c++11 -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG

$(ODIR)/search_supplement.c.o: $(DEPS) ../supplement/search_supplement.c
	g++ -MMD -MP -c -o $(ODIR)/search_supplement.c.o ../supplement/search_supplement.c $(INCLUDES) $(DEBUG_FLAGS) $(PROFILE_FLAGS)  -DIP_ACC -I$(SYSTEMC_HOME)/include -lsystemc -std=c++11 -Werror -Wall -Wtype-limits -Wvla -lrt -lm -pthread -O2 -O3  -I$(SYSTEMC_HOME)/include -lsystemc -DSIMULATION_UNTIMED -L. -L$(SYSTEMC_HOME)/lib -std=c++11 -DIP_DEBUG