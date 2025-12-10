# Define the C++ compiler and flags
CXX := g++
CXXFLAGS := -Wall -Wextra -std=c++17 -g

# Define the name of the executable
TARGET := Tamagotchi-Pet-Game-console

# Define the source files (add all your .cpp files here)
SRCS := main.cpp Manage.cpp Art.cpp

# Automatically generate object file names from source files
OBJS := $(SRCS:.cpp=.o)

# Default target: builds the executable
all: $(TARGET)

# Rule to link object files into the executable
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(OBJS) -o $(TARGET)

# Pattern rule to compile .cpp files into .o files
# This rule automatically handles dependencies on header files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean target: removes object files and the executable
clean:
	rm -f $(OBJS) $(TARGET)