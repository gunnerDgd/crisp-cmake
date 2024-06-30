macro   (add_arch)
    if     (${CMAKE_HOST_SYSTEM_PROCESSOR} STREQUAL "x86_64")
        set                    (PRESET_ARCH_X86_64 ON PARENT_SCOPE)
        set                    (PRESET_ARCH        ON PARENT_SCOPE)
        add_compile_definitions(PRESET_ARCH_X86_64)
        add_compile_definitions(PRESET_ARCH)

        message("[Crisp] Architecture Detected : x86_64 (AMD64)")

        set                    (PRESET_ARCH_BIT 64 PARENT_SCOPE)
        add_compile_definitions(PRESET_ARCH_BIT=64)

        set                    (PRESET_ARCH_ENDIAN_LITTLE ON PARENT_SCOPE)
        set                    (PRESET_ARCH_ENDIAN        ON PARENT_SCOPE)
        add_compile_definitions(PRESET_ARCH_ENDIAN_LITTLE)
        add_compile_definitions(PRESET_ARCH_ENDIAN)
    elseif (${CMAKE_HOST_SYSTEM_PROCESSOR} STREQUAL "AMD64")
        set                    (PRESET_ARCH_X86_64 ON PARENT_SCOPE)
        set                    (PRESET_ARCH        ON PARENT_SCOPE)
        add_compile_definitions(PRESET_ARCH_X86_64)

        message("[Crisp] Architecture Detected : x86_64 (AMD64)")

        set                    (PRESET_ARCH_BIT 64 PARENT_SCOPE)
        add_compile_definitions(PRESET_ARCH_BIT=64)

        set                    (PRESET_ARCH_ENDIAN_LITTLE ON PARENT_SCOPE)
        set                    (PRESET_ARCH_ENDIAN        ON PARENT_SCOPE)
        add_compile_definitions(PRESET_ARCH_ENDIAN_LITTLE)
        add_compile_definitions(PRESET_ARCH_ENDIAN)
    elseif (${CMAKE_HOST_SYSTEM_PROCESSOR} STREQUAL "x86")
        set                    (PRESET_ARCH_X86 ON)
        add_compile_definitions(PRESET_ARCH_X86)

        message("[Crisp] Architecture Detected : x86 (i686)")
        set                    (PRESET_ARCH_ENDIAN_LITTLE ON PARENT_SCOPE)
        set                    (PRESET_ARCH_ENDIAN        ON PARENT_SCOPE)
        add_compile_definitions(PRESET_ARCH_ENDIAN_LITTLE)
        add_compile_definitions(PRESET_ARCH_ENDIAN)
    endif  ()
endmacro()