#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Mbd::mbd" for configuration "Release"
set_property(TARGET Mbd::mbd APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Mbd::mbd PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libmbd.a"
  )

list(APPEND _cmake_import_check_targets Mbd::mbd )
list(APPEND _cmake_import_check_files_for_Mbd::mbd "${_IMPORT_PREFIX}/lib/libmbd.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
