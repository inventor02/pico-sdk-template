cmake_minimum_required(VERSION 3.12)
set(CMAKE_C_STANDARD 11)
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)
string(TIMESTAMP BUILD_TIMESTAMP "%Y%m%d.%H%M%S" UTC)

set(PRJ_NAME "your-project-name-here")
set(PRJ_VERSION "0.1.0")
set(PICO_BOARD "pico")

if(NOT CMAKE_BUILD_TYPE)
  message("Defaulting CMAKE_BUILD_TYPE=Debug")
  set(CMAKE_BUILD_TYPE Debug)
endif()

if(EXISTS lib/pico-sdk/pico_sdk_init.cmake)
  message("Using SDK as a submodule")
  include(lib/pico-sdk/pico_sdk_init.cmake)
else()
  message("Falling back to external SDK")
  include(cmake/pico_sdk_import.cmake)
endif()

project(${PRJ_NAME} VERSION ${PRJ_VERSION})
pico_sdk_init()

add_executable(${PRJ_NAME})
pico_add_extra_outputs(${PRJ_NAME})

pico_set_program_name(${PRJ_NAME} ${PRJ_NAME})
pico_set_program_description(${PRJ_NAME} "${PRJ_NAME} binary")
pico_set_program_url(${PRJ_NAME} "https://github.com/inventor02/${PRJ_NAME}")
pico_set_program_version(${PRJ_NAME} ${CMAKE_PROJECT_VERSION})

target_link_libraries(${PRJ_NAME}
  pico_stdlib
)

if(CMAKE_BUILD_TYPE STREQUAL "Debug")
  target_compile_definitions(${PRJ_NAME} PRIVATE
    BUILD_DEBUG
  )
endif()

add_subdirectory(src)
add_subdirectory(include)