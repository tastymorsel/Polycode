# Build a local version
INCLUDE(ExternalProject)

SET(openal_PREFIX ${CMAKE_CURRENT_BINARY_DIR}/openal)

SET(openal_CMAKE_ARGS
    -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR> 
    -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE}
    -DCMAKE_DEBUG_POSTFIX=d
)

ExternalProject_Add(openal
    PREFIX ${openal_PREFIX}

    DOWNLOAD_DIR ${POLYCODE_DEPS_DOWNLOAD_DIR}

    URL http://kcat.strangesoft.net/openal-releases/openal-soft-1.13.tar.bz2
    URL_MD5 58b7d2809790c70681b825644c5f3614
    
    INSTALL_DIR ${POLYCODE_DEPS_CORE_PREFIX}
    CMAKE_ARGS ${openal_CMAKE_ARGS}
)
