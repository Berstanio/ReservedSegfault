#!/bin/sh
./gradlew jnigenBuildMacOsX64 jnigenBuildMacOsXARM64
./gradlew jnigenJarNativesDesktop

./gradlew runTask