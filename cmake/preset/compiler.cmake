macro   (add_compiler)
    if     ("${CMAKE_C_COMPILER_ID}" MATCHES  "Clang")
        add_compile_definitions(PRESET_COMPILER_CLANG)
        add_compile_definitions(PRESET_COMPILER)
        add_compile_definitions(PRESET_CALL_SYSV)

        set(PRESET_COMPILER_CLANG on PARENT_SCOPE)
        set(PRESET_COMPILER       on PARENT_SCOPE)
        set(PRESET_CALL_SYSV      on)
    elseif ("${CMAKE_C_COMPILER_ID}" STREQUAL "GNU")
        add_compile_definitions(PRESET_COMPILER_GCC)
        add_compile_definitions(PRESET_COMPILER)
        add_compile_definitions(PRESET_CALL_SYSV)
        add_compile_options    (-Wno-incompatible-pointer-types)

        set(PRESET_COMPILER_GCC on PARENT_SCOPE)
        set(PRESET_COMPILER     on PARENT_SCOPE)
        set(PRESET_CALL_SYSV    on PARENT_SCOPE)
    elseif ("${CMAKE_C_COMPILER_ID}" STREQUAL "Intel")
        add_compile_definitions(PRESET_COMPILER_INTEL)
        add_compile_definitions(PRESET_COMPILER)
        add_compile_definitions(PRESET_CALL_SYSV)

        set(PRESET_COMPILER_INTEL on PARENT_SCOPE)
        set(PRESET_COMPILER       on PARENT_SCOPE)
        set(PRESET_CALL_SYSV      on PARENT_SCOPE)
    elseif ("${CMAKE_C_COMPILER_ID}" STREQUAL "MSVC")
        add_compile_definitions(PRESET_COMPILER_MSVC)
        add_compile_definitions(PRESET_COMPILER)
        add_compile_definitions(PRESET_CALL_VECTORCALL)

        set(PRESET_COMPILER_MSVC   on PARENT_SCOPE)
        set(PRESET_COMPILER        on PARENT_SCOPE)
        set(PRESET_CALL_VECTORCALL on PARENT_SCOPE)
    endif()
endmacro()