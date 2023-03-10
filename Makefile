CXX = g++
CFLAGS = -pthread -std=c++20 -Wall -Werror -O3 -g

SOURCES = parallelDi§jkstra.cpp
OBJECTS = parallelDijkstra.o

parallelDijkstra: $(OBJECTS)
	$(CXX) $(CFLAGS) -o parallelDijkstra $(OBJECTS)

parallelDijkstra.o: parallelDijkstra.cpp
	$(CXX) -c $(CFLAGS) -o parallelDijkstra.o parallelDijkstra.cpp

clean:
	rm -f *.o
	rm -f parallelDijkstra