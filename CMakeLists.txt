cmake_minimum_required(VERSION 3.0.0)
project(Lua VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(Lua main.c)
add_subdirectory(external/lua)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})

target_link_libraries(Lua PRIVATE lua::lib ${CMAKE_DL_LIBS} m)

include(CPack)
