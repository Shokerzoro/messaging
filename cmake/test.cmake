file(GLOB_RECURSE MESSAGING_TEST_SOURCES CONFIGURE_DEPENDS
    "${CMAKE_CURRENT_SOURCE_DIR}/tests/*.cpp"
)

if(MESSAGING_TEST_SOURCES)
    add_executable(messaging_tests
        ${MESSAGING_TEST_SOURCES}
    )

    target_link_libraries(messaging_tests
        PRIVATE
            GTest::gtest_main
            messaging
    )

    uniter_register_gtest(messaging_tests)
endif()
