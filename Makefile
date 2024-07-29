SOLC_PLATFORM=linux/arm64/v8

build: build-0.8 build-0.7 build-0.6
	@echo OK

build-0.8:
	./build.sh 0.8.0 ${SOLC_PLATFORM}
	./build.sh 0.8.1 ${SOLC_PLATFORM}
	./build.sh 0.8.2 ${SOLC_PLATFORM}
	./build.sh 0.8.3 ${SOLC_PLATFORM}
	./build.sh 0.8.4 ${SOLC_PLATFORM}
	./build.sh 0.8.5 ${SOLC_PLATFORM}
	./build.sh 0.8.6 ${SOLC_PLATFORM}
	./build.sh 0.8.7 ${SOLC_PLATFORM}
	./build.sh 0.8.8 ${SOLC_PLATFORM}
	./build.sh 0.8.9 ${SOLC_PLATFORM}
	./build.sh 0.8.10 ${SOLC_PLATFORM}
	./build.sh 0.8.11 ${SOLC_PLATFORM}
	./build.sh 0.8.12 ${SOLC_PLATFORM}
	./build.sh 0.8.13 ${SOLC_PLATFORM}
	./build.sh 0.8.14 ${SOLC_PLATFORM}
	./build.sh 0.8.15 ${SOLC_PLATFORM}
	./build.sh 0.8.16 ${SOLC_PLATFORM}
	./build.sh 0.8.17 ${SOLC_PLATFORM}
	./build.sh 0.8.18 ${SOLC_PLATFORM}
	./build.sh 0.8.19 ${SOLC_PLATFORM}
	./build.sh 0.8.20 ${SOLC_PLATFORM}
	./build.sh 0.8.21 ${SOLC_PLATFORM}
	./build.sh 0.8.22 ${SOLC_PLATFORM}
	./build.sh 0.8.23 ${SOLC_PLATFORM}
	./build.sh 0.8.24 ${SOLC_PLATFORM}
	./build.sh 0.8.25 ${SOLC_PLATFORM}
	./build.sh 0.8.26 ${SOLC_PLATFORM}

build-0.7:
	./build.sh 0.7.0 ${SOLC_PLATFORM}
	./build.sh 0.7.1 ${SOLC_PLATFORM}
	./build.sh 0.7.2 ${SOLC_PLATFORM}
	./build.sh 0.7.3 ${SOLC_PLATFORM}
	./build.sh 0.7.4 ${SOLC_PLATFORM}
	./build.sh 0.7.5 ${SOLC_PLATFORM}
	./build.sh 0.7.6 ${SOLC_PLATFORM}

build-0.6:
	./build.sh 0.6.0 ${SOLC_PLATFORM}
	./build.sh 0.6.1 ${SOLC_PLATFORM}
	./build.sh 0.6.2 ${SOLC_PLATFORM}
	./build.sh 0.6.3 ${SOLC_PLATFORM}
	./build.sh 0.6.4 ${SOLC_PLATFORM}
	./build.sh 0.6.5 ${SOLC_PLATFORM}
	./build.sh 0.6.6 ${SOLC_PLATFORM}
	./build.sh 0.6.7 ${SOLC_PLATFORM}
	./build.sh 0.6.8 ${SOLC_PLATFORM}
	./build.sh 0.6.9 ${SOLC_PLATFORM}
	./build.sh 0.6.10 ${SOLC_PLATFORM}
	./build.sh 0.6.11 ${SOLC_PLATFORM}
	./build.sh 0.6.12 ${SOLC_PLATFORM}

build-0.5:
	./build.sh 0.5.0 ${SOLC_PLATFORM}
	./build.sh 0.5.1 ${SOLC_PLATFORM}
	./build.sh 0.5.2 ${SOLC_PLATFORM}
	./build.sh 0.5.3 ${SOLC_PLATFORM}
	./build.sh 0.5.4 ${SOLC_PLATFORM}
	./build.sh 0.5.5 ${SOLC_PLATFORM}
	./build.sh 0.5.6 ${SOLC_PLATFORM}
	./build.sh 0.5.7 ${SOLC_PLATFORM}
	./build.sh 0.5.8 ${SOLC_PLATFORM}
	./build.sh 0.5.9 ${SOLC_PLATFORM}
	./build.sh 0.5.10 ${SOLC_PLATFORM}
	./build.sh 0.5.11 ${SOLC_PLATFORM}
	./build.sh 0.5.13 ${SOLC_PLATFORM}
	./build.sh 0.5.14 ${SOLC_PLATFORM}
	./build.sh 0.5.15 ${SOLC_PLATFORM}
	./build.sh 0.5.16 ${SOLC_PLATFORM}

# ./build.sh 0.5.12 ${SOLC_PLATFORM}