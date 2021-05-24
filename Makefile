####################################
# Learnt from Internet
# Edited by Colin
# 2020.02
####################################
cc = g++
FLAG = 
DEF = 
CXXFLAGS = -std=c++17 -O3
prom = main
deps = $(shell find . -maxdepth 10 -name "*.h" -or -name "*.hpp")
src = $(shell find . -maxdepth 10 -name "*.cpp")
obj = $(src:%.cpp=%.o) 
 
$(prom): $(obj)
	$(cc) -o $(prom) $(obj)

%.o: %.cpp
	$(cc) $(CXXFLAGS) $(FLAG) $(DEF) -c $< -o $@

.PHONY: clean 
clean:
	rm -rf $(prom) $(obj)