macro (fetch_mlir)
    include(FetchContent)

    FetchContent_Declare(
        llvm
        GIT_REPOSITORY https://github.com/llvm/llvm-project.git
        GIT_TAG aadaa00de76ed0c4987b97450dd638f63a385bed # llvmorg-19.1.4
        GIT_SHALLOW TRUE
        GIT_PROGRESS TRUE
        SOURCE_SUBDIR llvm
    )

    set(LLVM_ENABLE_PROJECTS "mlir")
    set(LLVM_BUILD_EXAMPLES ON)
    set(LLVM_ENABLE_ASSERTIONS ON)
    set(LLVM_TARGETS_TO_BUILD "Native")

    FetchContent_MakeAvailable(llvm)
endmacro()