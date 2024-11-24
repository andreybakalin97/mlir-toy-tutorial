set (TARGET toy-tutorial)

add_executable(${TARGET}
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp)

target_include_directories(${TARGET} PRIVATE
    ${llvm_SOURCE_DIR}/mlir/include
    ${llvm_SOURCE_DIR}/llvm/include
    ${llvm_BINARY_DIR}/tools/mlir/include
    ${llvm_BINARY_DIR}/include)

target_link_libraries(${TARGET}
    MLIRAnalysis
    MLIRFunctionInterfaces
    MLIRIR
    MLIRParser
    MLIRPass
    MLIRSideEffectInterfaces
    MLIRTransforms)