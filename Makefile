BUILD_DIR=./.build

default: build

build:
	swift build

run:
	swift run

test:
	swift test

update:
	swift package update

release:
	swift build -c release

clean:
	swift package clean