INCLUDE(PolycodeIncludes)

# Only build if using SDL
IF(SDL_FOUND)
    LINK_LIBRARIES(
        ${OPENGL_LIBRARIES}
        ${OPENAL_LIBRARY}
        ${PNG_LIBRARIES}
        ${FREETYPE_LIBRARIES}
        ${PHYSFS_LIBRARY}
        ${VORBISFILE_LIBRARY}
        ${SDL_LIBRARY} 
        ${SDLMAIN_LIBRARY}
    )

    ADD_SUBDIRECTORY(2DShapes)
    ADD_SUBDIRECTORY(2DTransforms)
    ADD_SUBDIRECTORY(3DAudio)
    ADD_SUBDIRECTORY(AdvancedLighting)
    ADD_SUBDIRECTORY(BasicImage)
    ADD_SUBDIRECTORY(BasicLighting)
    ADD_SUBDIRECTORY(BasicText)
    ADD_SUBDIRECTORY(ScreenSprites)
    ADD_SUBDIRECTORY(ScreenEntities)
    ADD_SUBDIRECTORY(SkeletalAnimation)
ENDIF(SDL_FOUND)
