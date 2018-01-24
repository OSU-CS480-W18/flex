all: counter

counter.cpp: counter.l
	flex -o counter.cpp counter.l

counter: counter.cpp
	g++ counter.cpp -o counter

clean:
	rm -f counter counter.cpp
