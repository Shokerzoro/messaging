include(cmake/sources.cmake)
include(cmake/include.cmake)

add_library(messaging
    ${MESSAGING_SOURCES}
)

target_compile_features(messaging PUBLIC cxx_std_17)

target_include_directories(messaging
    PUBLIC
        ${MESSAGING_INCLUDE}
)

target_link_libraries(messaging
    PUBLIC
        contract
)

if(COMMAND devkit_finalize)
    devkit_finalize(messaging)
endif()

if(UNITER_BUILD_TESTS)
    include(cmake/test.cmake)
endif()
