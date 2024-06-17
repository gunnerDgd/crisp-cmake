function   (use NAME)
    if   (NOT EXISTS ${ROOT_LIB}/${NAME})
        message("[cease] Library ${NAME} is not exist under ${ROOT_LIB}")
        message(SEND_ERROR)
    endif()

    if    (EXISTS ${ROOT_LIB}/${NAME}/CMakeLists.txt)
        add_subdirectory(${ROOT_LIB}/${NAME})
        set(${NAME} ON PARENT_SCOPE)
        set(${NAME} ON)
    endif ()
endfunction()