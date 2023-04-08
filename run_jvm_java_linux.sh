#!/bin/sh
./gradlew jnigenBuildLinux64
./gradlew jnigenJarNativesDesktop

./gradlew runTask
