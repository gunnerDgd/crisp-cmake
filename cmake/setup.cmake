function   (setup NAME)
    if   (NOT EXISTS ${ROOT_LIB}/${NAME})
        message("[cease] Library ${NAME} is not exist under ${ROOT_LIB}")
        message(SEND_ERROR)
    endif()

    string(APPEND DIR ${ROOT_LIB}/${NAME}/${NAME}.cmake)
    unset (NAME)
    if   (EXISTS ${DIR})
        include (${DIR})
    endif()
endfunction()