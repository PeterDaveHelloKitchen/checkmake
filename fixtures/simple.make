# this is a comment

expanded = "$(simple)"
simple := "foo"

clean:
	rm bar
	rm foo

foo: bar
	touch foo

bar:
	touch bar

all: foo

.PHONY: all clean

.DEFAULT_GOAL: all