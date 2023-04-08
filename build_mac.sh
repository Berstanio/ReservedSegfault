#!/bin/sh

./gradlew jnigenBuildMacOsX64 jnigenBuildMacOsXARM64
./gradlew jnigenJarNativesDesktop
./gradlew jar

native-image -jar build/libs/ReservedSegfault-1.0-SNAPSHOT.jar -H:IncludeResources=".*libsegfault.*" --no-fallback

./ReservedSegfault-1.0-SNAPSHOT