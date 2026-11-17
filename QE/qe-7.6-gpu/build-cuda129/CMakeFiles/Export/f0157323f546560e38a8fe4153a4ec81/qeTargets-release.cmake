#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "qe_wannier90" for configuration "Release"
set_property(TARGET qe_wannier90 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_wannier90 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_wannier90.a"
  )

list(APPEND _cmake_import_check_targets qe_wannier90 )
list(APPEND _cmake_import_check_files_for_qe_wannier90 "${_IMPORT_PREFIX}/lib/libqe_wannier90.a" )

# Import target "qe_wannier90_exe" for configuration "Release"
set_property(TARGET qe_wannier90_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_wannier90_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/wannier90.x"
  )

list(APPEND _cmake_import_check_targets qe_wannier90_exe )
list(APPEND _cmake_import_check_files_for_qe_wannier90_exe "${_IMPORT_PREFIX}/bin/wannier90.x" )

# Import target "qe_w90chk2chk_exe" for configuration "Release"
set_property(TARGET qe_w90chk2chk_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_w90chk2chk_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/w90chk2chk.x"
  )

list(APPEND _cmake_import_check_targets qe_w90chk2chk_exe )
list(APPEND _cmake_import_check_files_for_qe_w90chk2chk_exe "${_IMPORT_PREFIX}/bin/w90chk2chk.x" )

# Import target "qe_wannier90_postw90_exe" for configuration "Release"
set_property(TARGET qe_wannier90_postw90_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_wannier90_postw90_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/postw90.x"
  )

list(APPEND _cmake_import_check_targets qe_wannier90_postw90_exe )
list(APPEND _cmake_import_check_files_for_qe_wannier90_postw90_exe "${_IMPORT_PREFIX}/bin/postw90.x" )

# Import target "qe_devxlib" for configuration "Release"
set_property(TARGET qe_devxlib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_devxlib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_devxlib.a"
  )

list(APPEND _cmake_import_check_targets qe_devxlib )
list(APPEND _cmake_import_check_files_for_qe_devxlib "${_IMPORT_PREFIX}/lib/libqe_devxlib.a" )

# Import target "qe_fftx" for configuration "Release"
set_property(TARGET qe_fftx APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_fftx PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_fftx.a"
  )

list(APPEND _cmake_import_check_targets qe_fftx )
list(APPEND _cmake_import_check_files_for_qe_fftx "${_IMPORT_PREFIX}/lib/libqe_fftx.a" )

# Import target "qe_fftx_c" for configuration "Release"
set_property(TARGET qe_fftx_c APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_fftx_c PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_fftx_c.a"
  )

list(APPEND _cmake_import_check_targets qe_fftx_c )
list(APPEND _cmake_import_check_files_for_qe_fftx_c "${_IMPORT_PREFIX}/lib/libqe_fftx_c.a" )

# Import target "qe_utilx" for configuration "Release"
set_property(TARGET qe_utilx APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_utilx PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_utilx.a"
  )

list(APPEND _cmake_import_check_targets qe_utilx )
list(APPEND _cmake_import_check_files_for_qe_utilx "${_IMPORT_PREFIX}/lib/libqe_utilx.a" )

# Import target "qe_utilx_c" for configuration "Release"
set_property(TARGET qe_utilx_c APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_utilx_c PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_utilx_c.a"
  )

list(APPEND _cmake_import_check_targets qe_utilx_c )
list(APPEND _cmake_import_check_files_for_qe_utilx_c "${_IMPORT_PREFIX}/lib/libqe_utilx_c.a" )

# Import target "qe_device_lapack" for configuration "Release"
set_property(TARGET qe_device_lapack APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_device_lapack PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_device_lapack.a"
  )

list(APPEND _cmake_import_check_targets qe_device_lapack )
list(APPEND _cmake_import_check_files_for_qe_device_lapack "${_IMPORT_PREFIX}/lib/libqe_device_lapack.a" )

# Import target "qe_modules" for configuration "Release"
set_property(TARGET qe_modules APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_modules PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_modules.a"
  )

list(APPEND _cmake_import_check_targets qe_modules )
list(APPEND _cmake_import_check_files_for_qe_modules "${_IMPORT_PREFIX}/lib/libqe_modules.a" )

# Import target "qe_modules_c" for configuration "Release"
set_property(TARGET qe_modules_c APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_modules_c PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_modules_c.a"
  )

list(APPEND _cmake_import_check_targets qe_modules_c )
list(APPEND _cmake_import_check_files_for_qe_modules_c "${_IMPORT_PREFIX}/lib/libqe_modules_c.a" )

# Import target "qe_lax" for configuration "Release"
set_property(TARGET qe_lax APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_lax PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_lax.a"
  )

list(APPEND _cmake_import_check_targets qe_lax )
list(APPEND _cmake_import_check_files_for_qe_lax "${_IMPORT_PREFIX}/lib/libqe_lax.a" )

# Import target "qe_xclib" for configuration "Release"
set_property(TARGET qe_xclib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_xclib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_xclib.a"
  )

list(APPEND _cmake_import_check_targets qe_xclib )
list(APPEND _cmake_import_check_files_for_qe_xclib "${_IMPORT_PREFIX}/lib/libqe_xclib.a" )

# Import target "qe_libbeef" for configuration "Release"
set_property(TARGET qe_libbeef APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_libbeef PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_libbeef.a"
  )

list(APPEND _cmake_import_check_targets qe_libbeef )
list(APPEND _cmake_import_check_files_for_qe_libbeef "${_IMPORT_PREFIX}/lib/libqe_libbeef.a" )

# Import target "qe_xc_infos" for configuration "Release"
set_property(TARGET qe_xc_infos APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_xc_infos PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/qe_xc_infos.x"
  )

list(APPEND _cmake_import_check_targets qe_xc_infos )
list(APPEND _cmake_import_check_files_for_qe_xc_infos "${_IMPORT_PREFIX}/bin/qe_xc_infos.x" )

# Import target "qe_kssolver_davidson" for configuration "Release"
set_property(TARGET qe_kssolver_davidson APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kssolver_davidson PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_kssolver_davidson.a"
  )

list(APPEND _cmake_import_check_targets qe_kssolver_davidson )
list(APPEND _cmake_import_check_files_for_qe_kssolver_davidson "${_IMPORT_PREFIX}/lib/libqe_kssolver_davidson.a" )

# Import target "qe_kssolver_davidsonrci" for configuration "Release"
set_property(TARGET qe_kssolver_davidsonrci APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kssolver_davidsonrci PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_kssolver_davidsonrci.a"
  )

list(APPEND _cmake_import_check_targets qe_kssolver_davidsonrci )
list(APPEND _cmake_import_check_files_for_qe_kssolver_davidsonrci "${_IMPORT_PREFIX}/lib/libqe_kssolver_davidsonrci.a" )

# Import target "qe_kssolver_cg" for configuration "Release"
set_property(TARGET qe_kssolver_cg APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kssolver_cg PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_kssolver_cg.a"
  )

list(APPEND _cmake_import_check_targets qe_kssolver_cg )
list(APPEND _cmake_import_check_files_for_qe_kssolver_cg "${_IMPORT_PREFIX}/lib/libqe_kssolver_cg.a" )

# Import target "qe_kssolver_paro" for configuration "Release"
set_property(TARGET qe_kssolver_paro APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kssolver_paro PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_kssolver_paro.a"
  )

list(APPEND _cmake_import_check_targets qe_kssolver_paro )
list(APPEND _cmake_import_check_files_for_qe_kssolver_paro "${_IMPORT_PREFIX}/lib/libqe_kssolver_paro.a" )

# Import target "qe_kssolver_dense" for configuration "Release"
set_property(TARGET qe_kssolver_dense APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kssolver_dense PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_kssolver_dense.a"
  )

list(APPEND _cmake_import_check_targets qe_kssolver_dense )
list(APPEND _cmake_import_check_files_for_qe_kssolver_dense "${_IMPORT_PREFIX}/lib/libqe_kssolver_dense.a" )

# Import target "qe_kssolver_rmmdiis" for configuration "Release"
set_property(TARGET qe_kssolver_rmmdiis APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kssolver_rmmdiis PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_kssolver_rmmdiis.a"
  )

list(APPEND _cmake_import_check_targets qe_kssolver_rmmdiis )
list(APPEND _cmake_import_check_files_for_qe_kssolver_rmmdiis "${_IMPORT_PREFIX}/lib/libqe_kssolver_rmmdiis.a" )

# Import target "qe_kssolver_direct" for configuration "Release"
set_property(TARGET qe_kssolver_direct APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kssolver_direct PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_kssolver_direct.a"
  )

list(APPEND _cmake_import_check_targets qe_kssolver_direct )
list(APPEND _cmake_import_check_files_for_qe_kssolver_direct "${_IMPORT_PREFIX}/lib/libqe_kssolver_direct.a" )

# Import target "qe_dftd3" for configuration "Release"
set_property(TARGET qe_dftd3 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_dftd3 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_dftd3.a"
  )

list(APPEND _cmake_import_check_targets qe_dftd3 )
list(APPEND _cmake_import_check_files_for_qe_dftd3 "${_IMPORT_PREFIX}/lib/libqe_dftd3.a" )

# Import target "qe_pw" for configuration "Release"
set_property(TARGET qe_pw APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pw PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_pw.a"
  )

list(APPEND _cmake_import_check_targets qe_pw )
list(APPEND _cmake_import_check_files_for_qe_pw "${_IMPORT_PREFIX}/lib/libqe_pw.a" )

# Import target "qe_pw_exe" for configuration "Release"
set_property(TARGET qe_pw_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pw_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pw.x"
  )

list(APPEND _cmake_import_check_targets qe_pw_exe )
list(APPEND _cmake_import_check_files_for_qe_pw_exe "${_IMPORT_PREFIX}/bin/pw.x" )

# Import target "qe_pw_tools_ibrav2cell_exe" for configuration "Release"
set_property(TARGET qe_pw_tools_ibrav2cell_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pw_tools_ibrav2cell_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ibrav2cell.x"
  )

list(APPEND _cmake_import_check_targets qe_pw_tools_ibrav2cell_exe )
list(APPEND _cmake_import_check_files_for_qe_pw_tools_ibrav2cell_exe "${_IMPORT_PREFIX}/bin/ibrav2cell.x" )

# Import target "qe_pw_tools_cell2ibrav_exe" for configuration "Release"
set_property(TARGET qe_pw_tools_cell2ibrav_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pw_tools_cell2ibrav_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/cell2ibrav.x"
  )

list(APPEND _cmake_import_check_targets qe_pw_tools_cell2ibrav_exe )
list(APPEND _cmake_import_check_files_for_qe_pw_tools_cell2ibrav_exe "${_IMPORT_PREFIX}/bin/cell2ibrav.x" )

# Import target "qe_pw_tools_ev_exe" for configuration "Release"
set_property(TARGET qe_pw_tools_ev_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pw_tools_ev_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ev.x"
  )

list(APPEND _cmake_import_check_targets qe_pw_tools_ev_exe )
list(APPEND _cmake_import_check_files_for_qe_pw_tools_ev_exe "${_IMPORT_PREFIX}/bin/ev.x" )

# Import target "qe_pw_tools_kpoints_exe" for configuration "Release"
set_property(TARGET qe_pw_tools_kpoints_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pw_tools_kpoints_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/kpoints.x"
  )

list(APPEND _cmake_import_check_targets qe_pw_tools_kpoints_exe )
list(APPEND _cmake_import_check_files_for_qe_pw_tools_kpoints_exe "${_IMPORT_PREFIX}/bin/kpoints.x" )

# Import target "qe_pw_tools_pwi2xsf_exe" for configuration "Release"
set_property(TARGET qe_pw_tools_pwi2xsf_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pw_tools_pwi2xsf_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pwi2xsf.x"
  )

list(APPEND _cmake_import_check_targets qe_pw_tools_pwi2xsf_exe )
list(APPEND _cmake_import_check_files_for_qe_pw_tools_pwi2xsf_exe "${_IMPORT_PREFIX}/bin/pwi2xsf.x" )

# Import target "qe_pw_tools_scan_ibrav_exe" for configuration "Release"
set_property(TARGET qe_pw_tools_scan_ibrav_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pw_tools_scan_ibrav_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/scan_ibrav.x"
  )

list(APPEND _cmake_import_check_targets qe_pw_tools_scan_ibrav_exe )
list(APPEND _cmake_import_check_files_for_qe_pw_tools_scan_ibrav_exe "${_IMPORT_PREFIX}/bin/scan_ibrav.x" )

# Import target "qe_cpv" for configuration "Release"
set_property(TARGET qe_cpv APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_cpv PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_cpv.a"
  )

list(APPEND _cmake_import_check_targets qe_cpv )
list(APPEND _cmake_import_check_files_for_qe_cpv "${_IMPORT_PREFIX}/lib/libqe_cpv.a" )

# Import target "qe_cpv_exe" for configuration "Release"
set_property(TARGET qe_cpv_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_cpv_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/cp.x"
  )

list(APPEND _cmake_import_check_targets qe_cpv_exe )
list(APPEND _cmake_import_check_files_for_qe_cpv_exe "${_IMPORT_PREFIX}/bin/cp.x" )

# Import target "qe_cpv_manycp_exe" for configuration "Release"
set_property(TARGET qe_cpv_manycp_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_cpv_manycp_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/manycp.x"
  )

list(APPEND _cmake_import_check_targets qe_cpv_manycp_exe )
list(APPEND _cmake_import_check_files_for_qe_cpv_manycp_exe "${_IMPORT_PREFIX}/bin/manycp.x" )

# Import target "qe_cpv_cppp_exe" for configuration "Release"
set_property(TARGET qe_cpv_cppp_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_cpv_cppp_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/cppp.x"
  )

list(APPEND _cmake_import_check_targets qe_cpv_cppp_exe )
list(APPEND _cmake_import_check_files_for_qe_cpv_cppp_exe "${_IMPORT_PREFIX}/bin/cppp.x" )

# Import target "qe_cpv_wfdd_exe" for configuration "Release"
set_property(TARGET qe_cpv_wfdd_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_cpv_wfdd_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/wfdd.x"
  )

list(APPEND _cmake_import_check_targets qe_cpv_wfdd_exe )
list(APPEND _cmake_import_check_files_for_qe_cpv_wfdd_exe "${_IMPORT_PREFIX}/bin/wfdd.x" )

# Import target "qe_atomic" for configuration "Release"
set_property(TARGET qe_atomic APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_atomic PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_atomic.a"
  )

list(APPEND _cmake_import_check_targets qe_atomic )
list(APPEND _cmake_import_check_files_for_qe_atomic "${_IMPORT_PREFIX}/lib/libqe_atomic.a" )

# Import target "qe_atomic_exe" for configuration "Release"
set_property(TARGET qe_atomic_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_atomic_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ld1.x"
  )

list(APPEND _cmake_import_check_targets qe_atomic_exe )
list(APPEND _cmake_import_check_files_for_qe_atomic_exe "${_IMPORT_PREFIX}/bin/ld1.x" )

# Import target "qe_xml" for configuration "Release"
set_property(TARGET qe_xml APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_xml PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_xml.a"
  )

list(APPEND _cmake_import_check_targets qe_xml )
list(APPEND _cmake_import_check_files_for_qe_xml "${_IMPORT_PREFIX}/lib/libqe_xml.a" )

# Import target "qe_upflib" for configuration "Release"
set_property(TARGET qe_upflib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_upflib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_upflib.a"
  )

list(APPEND _cmake_import_check_targets qe_upflib )
list(APPEND _cmake_import_check_files_for_qe_upflib "${_IMPORT_PREFIX}/lib/libqe_upflib.a" )

# Import target "qe_upflib_virtual_v2_exe" for configuration "Release"
set_property(TARGET qe_upflib_virtual_v2_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_upflib_virtual_v2_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/virtual_v2.x"
  )

list(APPEND _cmake_import_check_targets qe_upflib_virtual_v2_exe )
list(APPEND _cmake_import_check_files_for_qe_upflib_virtual_v2_exe "${_IMPORT_PREFIX}/bin/virtual_v2.x" )

# Import target "qe_upflib_upfconv_exe" for configuration "Release"
set_property(TARGET qe_upflib_upfconv_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_upflib_upfconv_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/upfconv.x"
  )

list(APPEND _cmake_import_check_targets qe_upflib_upfconv_exe )
list(APPEND _cmake_import_check_files_for_qe_upflib_upfconv_exe "${_IMPORT_PREFIX}/bin/upfconv.x" )

# Import target "qe_upflib_casino2upf_exe" for configuration "Release"
set_property(TARGET qe_upflib_casino2upf_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_upflib_casino2upf_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/casino2upf.x"
  )

list(APPEND _cmake_import_check_targets qe_upflib_casino2upf_exe )
list(APPEND _cmake_import_check_files_for_qe_upflib_casino2upf_exe "${_IMPORT_PREFIX}/bin/casino2upf.x" )

# Import target "qe_upflib_hgh2qe_exe" for configuration "Release"
set_property(TARGET qe_upflib_hgh2qe_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_upflib_hgh2qe_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/hgh2qe.x"
  )

list(APPEND _cmake_import_check_targets qe_upflib_hgh2qe_exe )
list(APPEND _cmake_import_check_files_for_qe_upflib_hgh2qe_exe "${_IMPORT_PREFIX}/bin/hgh2qe.x" )

# Import target "qe_couple" for configuration "Release"
set_property(TARGET qe_couple APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_couple PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_couple.a"
  )

list(APPEND _cmake_import_check_targets qe_couple )
list(APPEND _cmake_import_check_files_for_qe_couple "${_IMPORT_PREFIX}/lib/libqe_couple.a" )

# Import target "qe_lr_modules" for configuration "Release"
set_property(TARGET qe_lr_modules APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_lr_modules PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_lr_modules.a"
  )

list(APPEND _cmake_import_check_targets qe_lr_modules )
list(APPEND _cmake_import_check_files_for_qe_lr_modules "${_IMPORT_PREFIX}/lib/libqe_lr_modules.a" )

# Import target "qe_phonon_ph" for configuration "Release"
set_property(TARGET qe_phonon_ph APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_ph PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_phonon_ph.a"
  )

list(APPEND _cmake_import_check_targets qe_phonon_ph )
list(APPEND _cmake_import_check_files_for_qe_phonon_ph "${_IMPORT_PREFIX}/lib/libqe_phonon_ph.a" )

# Import target "qe_phonon_phaux" for configuration "Release"
set_property(TARGET qe_phonon_phaux APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_phaux PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_phonon_phaux.a"
  )

list(APPEND _cmake_import_check_targets qe_phonon_phaux )
list(APPEND _cmake_import_check_files_for_qe_phonon_phaux "${_IMPORT_PREFIX}/lib/libqe_phonon_phaux.a" )

# Import target "qe_phonon_gamma" for configuration "Release"
set_property(TARGET qe_phonon_gamma APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_gamma PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_phonon_gamma.a"
  )

list(APPEND _cmake_import_check_targets qe_phonon_gamma )
list(APPEND _cmake_import_check_files_for_qe_phonon_gamma "${_IMPORT_PREFIX}/lib/libqe_phonon_gamma.a" )

# Import target "qe_phonon_fd" for configuration "Release"
set_property(TARGET qe_phonon_fd APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_fd PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_phonon_fd.a"
  )

list(APPEND _cmake_import_check_targets qe_phonon_fd )
list(APPEND _cmake_import_check_files_for_qe_phonon_fd "${_IMPORT_PREFIX}/lib/libqe_phonon_fd.a" )

# Import target "qe_phonon_ph_exe" for configuration "Release"
set_property(TARGET qe_phonon_ph_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_ph_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ph.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_ph_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_ph_exe "${_IMPORT_PREFIX}/bin/ph.x" )

# Import target "qe_phonon_phcg_exe" for configuration "Release"
set_property(TARGET qe_phonon_phcg_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_phcg_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/phcg.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_phcg_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_phcg_exe "${_IMPORT_PREFIX}/bin/phcg.x" )

# Import target "qe_phonon_dynmat_exe" for configuration "Release"
set_property(TARGET qe_phonon_dynmat_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_dynmat_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dynmat.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_dynmat_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_dynmat_exe "${_IMPORT_PREFIX}/bin/dynmat.x" )

# Import target "qe_phonon_q2r_exe" for configuration "Release"
set_property(TARGET qe_phonon_q2r_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_q2r_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/q2r.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_q2r_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_q2r_exe "${_IMPORT_PREFIX}/bin/q2r.x" )

# Import target "qe_phonon_dvscf_q2r_exe" for configuration "Release"
set_property(TARGET qe_phonon_dvscf_q2r_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_dvscf_q2r_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dvscf_q2r.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_dvscf_q2r_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_dvscf_q2r_exe "${_IMPORT_PREFIX}/bin/dvscf_q2r.x" )

# Import target "qe_phonon_matdyn_exe" for configuration "Release"
set_property(TARGET qe_phonon_matdyn_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_matdyn_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/matdyn.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_matdyn_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_matdyn_exe "${_IMPORT_PREFIX}/bin/matdyn.x" )

# Import target "qe_phonon_q2qstar_exe" for configuration "Release"
set_property(TARGET qe_phonon_q2qstar_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_q2qstar_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/q2qstar.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_q2qstar_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_q2qstar_exe "${_IMPORT_PREFIX}/bin/q2qstar.x" )

# Import target "qe_phonon_lambda_exe" for configuration "Release"
set_property(TARGET qe_phonon_lambda_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_lambda_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/lambda.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_lambda_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_lambda_exe "${_IMPORT_PREFIX}/bin/lambda.x" )

# Import target "qe_phonon_alpha2f_exe" for configuration "Release"
set_property(TARGET qe_phonon_alpha2f_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_alpha2f_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/alpha2f.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_alpha2f_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_alpha2f_exe "${_IMPORT_PREFIX}/bin/alpha2f.x" )

# Import target "qe_phonon_epa_exe" for configuration "Release"
set_property(TARGET qe_phonon_epa_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_epa_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/epa.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_epa_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_epa_exe "${_IMPORT_PREFIX}/bin/epa.x" )

# Import target "qe_phonon_fqha_exe" for configuration "Release"
set_property(TARGET qe_phonon_fqha_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_fqha_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/fqha.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_fqha_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_fqha_exe "${_IMPORT_PREFIX}/bin/fqha.x" )

# Import target "qe_phonon_fd_exe" for configuration "Release"
set_property(TARGET qe_phonon_fd_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_fd_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/fd.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_fd_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_fd_exe "${_IMPORT_PREFIX}/bin/fd.x" )

# Import target "qe_phonon_fdef_exe" for configuration "Release"
set_property(TARGET qe_phonon_fdef_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_fdef_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/fd_ef.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_fdef_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_fdef_exe "${_IMPORT_PREFIX}/bin/fd_ef.x" )

# Import target "qe_phonon_fdifc_exe" for configuration "Release"
set_property(TARGET qe_phonon_fdifc_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_fdifc_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/fd_ifc.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_fdifc_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_fdifc_exe "${_IMPORT_PREFIX}/bin/fd_ifc.x" )

# Import target "qe_phonon_postahc_exe" for configuration "Release"
set_property(TARGET qe_phonon_postahc_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_phonon_postahc_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/postahc.x"
  )

list(APPEND _cmake_import_check_targets qe_phonon_postahc_exe )
list(APPEND _cmake_import_check_files_for_qe_phonon_postahc_exe "${_IMPORT_PREFIX}/bin/postahc.x" )

# Import target "qe_pp" for configuration "Release"
set_property(TARGET qe_pp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_pp.a"
  )

list(APPEND _cmake_import_check_targets qe_pp )
list(APPEND _cmake_import_check_files_for_qe_pp "${_IMPORT_PREFIX}/lib/libqe_pp.a" )

# Import target "qe_pp_exe" for configuration "Release"
set_property(TARGET qe_pp_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pp.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_exe "${_IMPORT_PREFIX}/bin/pp.x" )

# Import target "qe_pp_opengrid_exe" for configuration "Release"
set_property(TARGET qe_pp_opengrid_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_opengrid_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/open_grid.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_opengrid_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_opengrid_exe "${_IMPORT_PREFIX}/bin/open_grid.x" )

# Import target "qe_pp_average_exe" for configuration "Release"
set_property(TARGET qe_pp_average_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_average_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/average.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_average_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_average_exe "${_IMPORT_PREFIX}/bin/average.x" )

# Import target "qe_pp_bands_exe" for configuration "Release"
set_property(TARGET qe_pp_bands_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_bands_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/bands.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_bands_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_bands_exe "${_IMPORT_PREFIX}/bin/bands.x" )

# Import target "qe_pp_dos_exe" for configuration "Release"
set_property(TARGET qe_pp_dos_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_dos_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dos.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_dos_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_dos_exe "${_IMPORT_PREFIX}/bin/dos.x" )

# Import target "qe_pp_pawplot_exe" for configuration "Release"
set_property(TARGET qe_pp_pawplot_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_pawplot_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pawplot.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_pawplot_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_pawplot_exe "${_IMPORT_PREFIX}/bin/pawplot.x" )

# Import target "qe_pp_planavg_exe" for configuration "Release"
set_property(TARGET qe_pp_planavg_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_planavg_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/plan_avg.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_planavg_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_planavg_exe "${_IMPORT_PREFIX}/bin/plan_avg.x" )

# Import target "qe_pp_plotband_exe" for configuration "Release"
set_property(TARGET qe_pp_plotband_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_plotband_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/plotband.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_plotband_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_plotband_exe "${_IMPORT_PREFIX}/bin/plotband.x" )

# Import target "qe_pp_plotproj_exe" for configuration "Release"
set_property(TARGET qe_pp_plotproj_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_plotproj_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/plotproj.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_plotproj_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_plotproj_exe "${_IMPORT_PREFIX}/bin/plotproj.x" )

# Import target "qe_pp_plotrho_exe" for configuration "Release"
set_property(TARGET qe_pp_plotrho_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_plotrho_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/plotrho.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_plotrho_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_plotrho_exe "${_IMPORT_PREFIX}/bin/plotrho.x" )

# Import target "qe_pp_pmw_exe" for configuration "Release"
set_property(TARGET qe_pp_pmw_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_pmw_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pmw.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_pmw_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_pmw_exe "${_IMPORT_PREFIX}/bin/pmw.x" )

# Import target "qe_pp_projwfc_exe" for configuration "Release"
set_property(TARGET qe_pp_projwfc_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_projwfc_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/projwfc.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_projwfc_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_projwfc_exe "${_IMPORT_PREFIX}/bin/projwfc.x" )

# Import target "qe_pp_pw2wannier90_exe" for configuration "Release"
set_property(TARGET qe_pp_pw2wannier90_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_pw2wannier90_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pw2wannier90.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_pw2wannier90_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_pw2wannier90_exe "${_IMPORT_PREFIX}/bin/pw2wannier90.x" )

# Import target "qe_pp_pw2critic_exe" for configuration "Release"
set_property(TARGET qe_pp_pw2critic_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_pw2critic_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pw2critic.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_pw2critic_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_pw2critic_exe "${_IMPORT_PREFIX}/bin/pw2critic.x" )

# Import target "qe_pp_wfck2r_exe" for configuration "Release"
set_property(TARGET qe_pp_wfck2r_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_wfck2r_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/wfck2r.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_wfck2r_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_wfck2r_exe "${_IMPORT_PREFIX}/bin/wfck2r.x" )

# Import target "qe_pp_initial_state_exe" for configuration "Release"
set_property(TARGET qe_pp_initial_state_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_initial_state_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/initial_state.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_initial_state_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_initial_state_exe "${_IMPORT_PREFIX}/bin/initial_state.x" )

# Import target "qe_pp_pw2gw_exe" for configuration "Release"
set_property(TARGET qe_pp_pw2gw_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_pw2gw_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pw2gw.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_pw2gw_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_pw2gw_exe "${_IMPORT_PREFIX}/bin/pw2gw.x" )

# Import target "qe_pp_pw2gt_exe" for configuration "Release"
set_property(TARGET qe_pp_pw2gt_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_pw2gt_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pw2gt.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_pw2gt_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_pw2gt_exe "${_IMPORT_PREFIX}/bin/pw2gt.x" )

# Import target "qe_pp_sumpdos_exe" for configuration "Release"
set_property(TARGET qe_pp_sumpdos_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_sumpdos_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/sumpdos.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_sumpdos_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_sumpdos_exe "${_IMPORT_PREFIX}/bin/sumpdos.x" )

# Import target "qe_pp_epsilon_exe" for configuration "Release"
set_property(TARGET qe_pp_epsilon_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_epsilon_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/epsilon.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_epsilon_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_epsilon_exe "${_IMPORT_PREFIX}/bin/epsilon.x" )

# Import target "qe_pp_d3hess_exe" for configuration "Release"
set_property(TARGET qe_pp_d3hess_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_d3hess_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/d3hess.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_d3hess_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_d3hess_exe "${_IMPORT_PREFIX}/bin/d3hess.x" )

# Import target "qe_pp_wannierham_exe" for configuration "Release"
set_property(TARGET qe_pp_wannierham_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_wannierham_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/wannier_ham.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_wannierham_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_wannierham_exe "${_IMPORT_PREFIX}/bin/wannier_ham.x" )

# Import target "qe_pp_wannierplot_exe" for configuration "Release"
set_property(TARGET qe_pp_wannierplot_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_wannierplot_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/wannier_plot.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_wannierplot_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_wannierplot_exe "${_IMPORT_PREFIX}/bin/wannier_plot.x" )

# Import target "qe_pp_molecularpdos_exe" for configuration "Release"
set_property(TARGET qe_pp_molecularpdos_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_molecularpdos_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/molecularpdos.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_molecularpdos_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_molecularpdos_exe "${_IMPORT_PREFIX}/bin/molecularpdos.x" )

# Import target "qe_pp_pw2bgw_exe" for configuration "Release"
set_property(TARGET qe_pp_pw2bgw_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_pw2bgw_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pw2bgw.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_pw2bgw_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_pw2bgw_exe "${_IMPORT_PREFIX}/bin/pw2bgw.x" )

# Import target "qe_pp_fermivelocity_exe" for configuration "Release"
set_property(TARGET qe_pp_fermivelocity_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_fermivelocity_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/fermi_velocity.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_fermivelocity_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_fermivelocity_exe "${_IMPORT_PREFIX}/bin/fermi_velocity.x" )

# Import target "qe_pp_fermisurface_exe" for configuration "Release"
set_property(TARGET qe_pp_fermisurface_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_fermisurface_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/fs.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_fermisurface_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_fermisurface_exe "${_IMPORT_PREFIX}/bin/fs.x" )

# Import target "qe_pp_fermiproj_exe" for configuration "Release"
set_property(TARGET qe_pp_fermiproj_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_fermiproj_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/fermi_proj.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_fermiproj_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_fermiproj_exe "${_IMPORT_PREFIX}/bin/fermi_proj.x" )

# Import target "qe_pp_ppacf_exe" for configuration "Release"
set_property(TARGET qe_pp_ppacf_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_ppacf_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ppacf.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_ppacf_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_ppacf_exe "${_IMPORT_PREFIX}/bin/ppacf.x" )

# Import target "qe_pp_st_ef_exe" for configuration "Release"
set_property(TARGET qe_pp_st_ef_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_st_ef_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ef.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_st_ef_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_st_ef_exe "${_IMPORT_PREFIX}/bin/ef.x" )

# Import target "qe_pp_st_dos_exe" for configuration "Release"
set_property(TARGET qe_pp_st_dos_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_st_dos_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/dos_sp.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_st_dos_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_st_dos_exe "${_IMPORT_PREFIX}/bin/dos_sp.x" )

# Import target "qe_pp_st_fermiint0_exe" for configuration "Release"
set_property(TARGET qe_pp_st_fermiint0_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_st_fermiint0_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/fermi_int_0.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_st_fermiint0_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_st_fermiint0_exe "${_IMPORT_PREFIX}/bin/fermi_int_0.x" )

# Import target "qe_pp_st_fermiint1_exe" for configuration "Release"
set_property(TARGET qe_pp_st_fermiint1_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_st_fermiint1_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/fermi_int_1.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_st_fermiint1_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_st_fermiint1_exe "${_IMPORT_PREFIX}/bin/fermi_int_1.x" )

# Import target "qe_pp_rism_exe" for configuration "Release"
set_property(TARGET qe_pp_rism_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pp_rism_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pprism.x"
  )

list(APPEND _cmake_import_check_targets qe_pp_rism_exe )
list(APPEND _cmake_import_check_files_for_qe_pp_rism_exe "${_IMPORT_PREFIX}/bin/pprism.x" )

# Import target "qe_epw" for configuration "Release"
set_property(TARGET qe_epw APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_epw PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_epw.a"
  )

list(APPEND _cmake_import_check_targets qe_epw )
list(APPEND _cmake_import_check_files_for_qe_epw "${_IMPORT_PREFIX}/lib/libqe_epw.a" )

# Import target "qe_epw_exe" for configuration "Release"
set_property(TARGET qe_epw_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_epw_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/epw.x"
  )

list(APPEND _cmake_import_check_targets qe_epw_exe )
list(APPEND _cmake_import_check_files_for_qe_epw_exe "${_IMPORT_PREFIX}/bin/epw.x" )

# Import target "qe_epw_nscf2supercond_exe" for configuration "Release"
set_property(TARGET qe_epw_nscf2supercond_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_epw_nscf2supercond_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/nscf2supercond.x"
  )

list(APPEND _cmake_import_check_targets qe_epw_nscf2supercond_exe )
list(APPEND _cmake_import_check_files_for_qe_epw_nscf2supercond_exe "${_IMPORT_PREFIX}/bin/nscf2supercond.x" )

# Import target "qe_zg_exe" for configuration "Release"
set_property(TARGET qe_zg_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_zg_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/ZG.x"
  )

list(APPEND _cmake_import_check_targets qe_zg_exe )
list(APPEND _cmake_import_check_files_for_qe_zg_exe "${_IMPORT_PREFIX}/bin/ZG.x" )

# Import target "qe_zg_disca_exe" for configuration "Release"
set_property(TARGET qe_zg_disca_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_zg_disca_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/disca.x"
  )

list(APPEND _cmake_import_check_targets qe_zg_disca_exe )
list(APPEND _cmake_import_check_files_for_qe_zg_disca_exe "${_IMPORT_PREFIX}/bin/disca.x" )

# Import target "qe_zg_pp_disca_exe" for configuration "Release"
set_property(TARGET qe_zg_pp_disca_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_zg_pp_disca_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pp_disca.x"
  )

list(APPEND _cmake_import_check_targets qe_zg_pp_disca_exe )
list(APPEND _cmake_import_check_files_for_qe_zg_pp_disca_exe "${_IMPORT_PREFIX}/bin/pp_disca.x" )

# Import target "qe_zg_bands_unfold_exe" for configuration "Release"
set_property(TARGET qe_zg_bands_unfold_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_zg_bands_unfold_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/bands_unfold.x"
  )

list(APPEND _cmake_import_check_targets qe_zg_bands_unfold_exe )
list(APPEND _cmake_import_check_files_for_qe_zg_bands_unfold_exe "${_IMPORT_PREFIX}/bin/bands_unfold.x" )

# Import target "qe_zg_pp_spctrlfn_exe" for configuration "Release"
set_property(TARGET qe_zg_pp_spctrlfn_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_zg_pp_spctrlfn_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pp_spctrlfn.x"
  )

list(APPEND _cmake_import_check_targets qe_zg_pp_spctrlfn_exe )
list(APPEND _cmake_import_check_files_for_qe_zg_pp_spctrlfn_exe "${_IMPORT_PREFIX}/bin/pp_spctrlfn.x" )

# Import target "qe_zg_epsilon_Gaus_exe" for configuration "Release"
set_property(TARGET qe_zg_epsilon_Gaus_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_zg_epsilon_Gaus_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/epsilon_Gaus.x"
  )

list(APPEND _cmake_import_check_targets qe_zg_epsilon_Gaus_exe )
list(APPEND _cmake_import_check_files_for_qe_zg_epsilon_Gaus_exe "${_IMPORT_PREFIX}/bin/epsilon_Gaus.x" )

# Import target "qe_gww" for configuration "Release"
set_property(TARGET qe_gww APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_gww.a"
  )

list(APPEND _cmake_import_check_targets qe_gww )
list(APPEND _cmake_import_check_files_for_qe_gww "${_IMPORT_PREFIX}/lib/libqe_gww.a" )

# Import target "qe_gww_pw4gww" for configuration "Release"
set_property(TARGET qe_gww_pw4gww APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_pw4gww PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_gww_pw4gww.a"
  )

list(APPEND _cmake_import_check_targets qe_gww_pw4gww )
list(APPEND _cmake_import_check_files_for_qe_gww_pw4gww "${_IMPORT_PREFIX}/lib/libqe_gww_pw4gww.a" )

# Import target "qe_gww_bse" for configuration "Release"
set_property(TARGET qe_gww_bse APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_bse PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_gww_bse.a"
  )

list(APPEND _cmake_import_check_targets qe_gww_bse )
list(APPEND _cmake_import_check_files_for_qe_gww_bse "${_IMPORT_PREFIX}/lib/libqe_gww_bse.a" )

# Import target "qe_gww_head" for configuration "Release"
set_property(TARGET qe_gww_head APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_head PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_gww_head.a"
  )

list(APPEND _cmake_import_check_targets qe_gww_head )
list(APPEND _cmake_import_check_files_for_qe_gww_head "${_IMPORT_PREFIX}/lib/libqe_gww_head.a" )

# Import target "qe_gww_minpack" for configuration "Release"
set_property(TARGET qe_gww_minpack APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_minpack PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_gww_minpack.a"
  )

list(APPEND _cmake_import_check_targets qe_gww_minpack )
list(APPEND _cmake_import_check_files_for_qe_gww_minpack "${_IMPORT_PREFIX}/lib/libqe_gww_minpack.a" )

# Import target "qe_gww_simple" for configuration "Release"
set_property(TARGET qe_gww_simple APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_simple PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_gww_simple.a"
  )

list(APPEND _cmake_import_check_targets qe_gww_simple )
list(APPEND _cmake_import_check_files_for_qe_gww_simple "${_IMPORT_PREFIX}/lib/libqe_gww_simple.a" )

# Import target "qe_gww_simplebse" for configuration "Release"
set_property(TARGET qe_gww_simplebse APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_simplebse PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_gww_simplebse.a"
  )

list(APPEND _cmake_import_check_targets qe_gww_simplebse )
list(APPEND _cmake_import_check_files_for_qe_gww_simplebse "${_IMPORT_PREFIX}/lib/libqe_gww_simplebse.a" )

# Import target "qe_gww_simpleip" for configuration "Release"
set_property(TARGET qe_gww_simpleip APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_simpleip PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_gww_simpleip.a"
  )

list(APPEND _cmake_import_check_targets qe_gww_simpleip )
list(APPEND _cmake_import_check_files_for_qe_gww_simpleip "${_IMPORT_PREFIX}/lib/libqe_gww_simpleip.a" )

# Import target "qe_gww_pw4gww_exe" for configuration "Release"
set_property(TARGET qe_gww_pw4gww_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_pw4gww_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pw4gww.x"
  )

list(APPEND _cmake_import_check_targets qe_gww_pw4gww_exe )
list(APPEND _cmake_import_check_files_for_qe_gww_pw4gww_exe "${_IMPORT_PREFIX}/bin/pw4gww.x" )

# Import target "qe_gww_util_grap_exe" for configuration "Release"
set_property(TARGET qe_gww_util_grap_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_util_grap_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/graph.x"
  )

list(APPEND _cmake_import_check_targets qe_gww_util_grap_exe )
list(APPEND _cmake_import_check_files_for_qe_gww_util_grap_exe "${_IMPORT_PREFIX}/bin/graph.x" )

# Import target "qe_gww_util_abcoefftoeps_exe" for configuration "Release"
set_property(TARGET qe_gww_util_abcoefftoeps_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_util_abcoefftoeps_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/abcoeff_to_eps.x"
  )

list(APPEND _cmake_import_check_targets qe_gww_util_abcoefftoeps_exe )
list(APPEND _cmake_import_check_files_for_qe_gww_util_abcoefftoeps_exe "${_IMPORT_PREFIX}/bin/abcoeff_to_eps.x" )

# Import target "qe_gww_util_memorypw4gww_exe" for configuration "Release"
set_property(TARGET qe_gww_util_memorypw4gww_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_util_memorypw4gww_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/memory_pw4gww.x"
  )

list(APPEND _cmake_import_check_targets qe_gww_util_memorypw4gww_exe )
list(APPEND _cmake_import_check_files_for_qe_gww_util_memorypw4gww_exe "${_IMPORT_PREFIX}/bin/memory_pw4gww.x" )

# Import target "qe_gww_bse_bse_main_exe" for configuration "Release"
set_property(TARGET qe_gww_bse_bse_main_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_bse_bse_main_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/bse_main.x"
  )

list(APPEND _cmake_import_check_targets qe_gww_bse_bse_main_exe )
list(APPEND _cmake_import_check_files_for_qe_gww_bse_bse_main_exe "${_IMPORT_PREFIX}/bin/bse_main.x" )

# Import target "qe_gww_gww_exe" for configuration "Release"
set_property(TARGET qe_gww_gww_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_gww_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/gww.x"
  )

list(APPEND _cmake_import_check_targets qe_gww_gww_exe )
list(APPEND _cmake_import_check_files_for_qe_gww_gww_exe "${_IMPORT_PREFIX}/bin/gww.x" )

# Import target "qe_gww_gww_fit_exe" for configuration "Release"
set_property(TARGET qe_gww_gww_fit_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_gww_fit_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/gww_fit.x"
  )

list(APPEND _cmake_import_check_targets qe_gww_gww_fit_exe )
list(APPEND _cmake_import_check_files_for_qe_gww_gww_fit_exe "${_IMPORT_PREFIX}/bin/gww_fit.x" )

# Import target "qe_gww_head_exe" for configuration "Release"
set_property(TARGET qe_gww_head_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_head_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/head.x"
  )

list(APPEND _cmake_import_check_targets qe_gww_head_exe )
list(APPEND _cmake_import_check_files_for_qe_gww_head_exe "${_IMPORT_PREFIX}/bin/head.x" )

# Import target "qe_gww_simple_exe" for configuration "Release"
set_property(TARGET qe_gww_simple_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_simple_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/simple.x"
  )

list(APPEND _cmake_import_check_targets qe_gww_simple_exe )
list(APPEND _cmake_import_check_files_for_qe_gww_simple_exe "${_IMPORT_PREFIX}/bin/simple.x" )

# Import target "qe_gww_simple_bse_exe" for configuration "Release"
set_property(TARGET qe_gww_simple_bse_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_simple_bse_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/simple_bse.x"
  )

list(APPEND _cmake_import_check_targets qe_gww_simple_bse_exe )
list(APPEND _cmake_import_check_files_for_qe_gww_simple_bse_exe "${_IMPORT_PREFIX}/bin/simple_bse.x" )

# Import target "qe_gww_simple_ip_exe" for configuration "Release"
set_property(TARGET qe_gww_simple_ip_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_gww_simple_ip_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/simple_ip.x"
  )

list(APPEND _cmake_import_check_targets qe_gww_simple_ip_exe )
list(APPEND _cmake_import_check_files_for_qe_gww_simple_ip_exe "${_IMPORT_PREFIX}/bin/simple_ip.x" )

# Import target "qe_hp" for configuration "Release"
set_property(TARGET qe_hp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_hp PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_hp.a"
  )

list(APPEND _cmake_import_check_targets qe_hp )
list(APPEND _cmake_import_check_files_for_qe_hp "${_IMPORT_PREFIX}/lib/libqe_hp.a" )

# Import target "qe_hp_exe" for configuration "Release"
set_property(TARGET qe_hp_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_hp_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/hp.x"
  )

list(APPEND _cmake_import_check_targets qe_hp_exe )
list(APPEND _cmake_import_check_files_for_qe_hp_exe "${_IMPORT_PREFIX}/bin/hp.x" )

# Import target "qe_neb" for configuration "Release"
set_property(TARGET qe_neb APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_neb PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_neb.a"
  )

list(APPEND _cmake_import_check_targets qe_neb )
list(APPEND _cmake_import_check_files_for_qe_neb "${_IMPORT_PREFIX}/lib/libqe_neb.a" )

# Import target "qe_neb_exe" for configuration "Release"
set_property(TARGET qe_neb_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_neb_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/neb.x"
  )

list(APPEND _cmake_import_check_targets qe_neb_exe )
list(APPEND _cmake_import_check_files_for_qe_neb_exe "${_IMPORT_PREFIX}/bin/neb.x" )

# Import target "qe_neb_pathinterpolation_exe" for configuration "Release"
set_property(TARGET qe_neb_pathinterpolation_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_neb_pathinterpolation_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/path_interpolation.x"
  )

list(APPEND _cmake_import_check_targets qe_neb_pathinterpolation_exe )
list(APPEND _cmake_import_check_files_for_qe_neb_pathinterpolation_exe "${_IMPORT_PREFIX}/bin/path_interpolation.x" )

# Import target "qe_pwcond_exe" for configuration "Release"
set_property(TARGET qe_pwcond_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pwcond_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pwcond.x"
  )

list(APPEND _cmake_import_check_targets qe_pwcond_exe )
list(APPEND _cmake_import_check_files_for_qe_pwcond_exe "${_IMPORT_PREFIX}/bin/pwcond.x" )

# Import target "qe_tddfpt" for configuration "Release"
set_property(TARGET qe_tddfpt APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_tddfpt PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_tddfpt.a"
  )

list(APPEND _cmake_import_check_targets qe_tddfpt )
list(APPEND _cmake_import_check_files_for_qe_tddfpt "${_IMPORT_PREFIX}/lib/libqe_tddfpt.a" )

# Import target "qe_tddfpt_turbolanczos_exe" for configuration "Release"
set_property(TARGET qe_tddfpt_turbolanczos_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_tddfpt_turbolanczos_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/turbo_lanczos.x"
  )

list(APPEND _cmake_import_check_targets qe_tddfpt_turbolanczos_exe )
list(APPEND _cmake_import_check_files_for_qe_tddfpt_turbolanczos_exe "${_IMPORT_PREFIX}/bin/turbo_lanczos.x" )

# Import target "qe_tddfpt_turbodavidson_exe" for configuration "Release"
set_property(TARGET qe_tddfpt_turbodavidson_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_tddfpt_turbodavidson_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/turbo_davidson.x"
  )

list(APPEND _cmake_import_check_targets qe_tddfpt_turbodavidson_exe )
list(APPEND _cmake_import_check_files_for_qe_tddfpt_turbodavidson_exe "${_IMPORT_PREFIX}/bin/turbo_davidson.x" )

# Import target "qe_tddfpt_turboeels_exe" for configuration "Release"
set_property(TARGET qe_tddfpt_turboeels_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_tddfpt_turboeels_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/turbo_eels.x"
  )

list(APPEND _cmake_import_check_targets qe_tddfpt_turboeels_exe )
list(APPEND _cmake_import_check_files_for_qe_tddfpt_turboeels_exe "${_IMPORT_PREFIX}/bin/turbo_eels.x" )

# Import target "qe_tddfpt_turbomagnon_exe" for configuration "Release"
set_property(TARGET qe_tddfpt_turbomagnon_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_tddfpt_turbomagnon_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/turbo_magnon.x"
  )

list(APPEND _cmake_import_check_targets qe_tddfpt_turbomagnon_exe )
list(APPEND _cmake_import_check_files_for_qe_tddfpt_turbomagnon_exe "${_IMPORT_PREFIX}/bin/turbo_magnon.x" )

# Import target "qe_tddfpt_turbospectrum_exe" for configuration "Release"
set_property(TARGET qe_tddfpt_turbospectrum_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_tddfpt_turbospectrum_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/turbo_spectrum.x"
  )

list(APPEND _cmake_import_check_targets qe_tddfpt_turbospectrum_exe )
list(APPEND _cmake_import_check_files_for_qe_tddfpt_turbospectrum_exe "${_IMPORT_PREFIX}/bin/turbo_spectrum.x" )

# Import target "qe_xspectra_gipaw" for configuration "Release"
set_property(TARGET qe_xspectra_gipaw APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_xspectra_gipaw PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_xspectra_gipaw.a"
  )

list(APPEND _cmake_import_check_targets qe_xspectra_gipaw )
list(APPEND _cmake_import_check_files_for_qe_xspectra_gipaw "${_IMPORT_PREFIX}/lib/libqe_xspectra_gipaw.a" )

# Import target "qe_xspectra" for configuration "Release"
set_property(TARGET qe_xspectra APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_xspectra PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_xspectra.a"
  )

list(APPEND _cmake_import_check_targets qe_xspectra )
list(APPEND _cmake_import_check_files_for_qe_xspectra "${_IMPORT_PREFIX}/lib/libqe_xspectra.a" )

# Import target "qe_xspectra_exe" for configuration "Release"
set_property(TARGET qe_xspectra_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_xspectra_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/xspectra.x"
  )

list(APPEND _cmake_import_check_targets qe_xspectra_exe )
list(APPEND _cmake_import_check_files_for_qe_xspectra_exe "${_IMPORT_PREFIX}/bin/xspectra.x" )

# Import target "qe_xspectra_spectracorrection_exe" for configuration "Release"
set_property(TARGET qe_xspectra_spectracorrection_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_xspectra_spectracorrection_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/spectra_correction.x"
  )

list(APPEND _cmake_import_check_targets qe_xspectra_spectracorrection_exe )
list(APPEND _cmake_import_check_files_for_qe_xspectra_spectracorrection_exe "${_IMPORT_PREFIX}/bin/spectra_correction.x" )

# Import target "qe_xspectra_molecularnexafs_exe" for configuration "Release"
set_property(TARGET qe_xspectra_molecularnexafs_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_xspectra_molecularnexafs_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/molecularnexafs.x"
  )

list(APPEND _cmake_import_check_targets qe_xspectra_molecularnexafs_exe )
list(APPEND _cmake_import_check_files_for_qe_xspectra_molecularnexafs_exe "${_IMPORT_PREFIX}/bin/molecularnexafs.x" )

# Import target "qe_qeheat" for configuration "Release"
set_property(TARGET qe_qeheat APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_qeheat PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_qeheat.a"
  )

list(APPEND _cmake_import_check_targets qe_qeheat )
list(APPEND _cmake_import_check_files_for_qe_qeheat "${_IMPORT_PREFIX}/lib/libqe_qeheat.a" )

# Import target "qe_qeheat_exe" for configuration "Release"
set_property(TARGET qe_qeheat_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_qeheat_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/all_currents.x"
  )

list(APPEND _cmake_import_check_targets qe_qeheat_exe )
list(APPEND _cmake_import_check_files_for_qe_qeheat_exe "${_IMPORT_PREFIX}/bin/all_currents.x" )

# Import target "qe_kcw" for configuration "Release"
set_property(TARGET qe_kcw APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kcw PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_kcw.a"
  )

list(APPEND _cmake_import_check_targets qe_kcw )
list(APPEND _cmake_import_check_files_for_qe_kcw "${_IMPORT_PREFIX}/lib/libqe_kcw.a" )

# Import target "qe_kcwpp" for configuration "Release"
set_property(TARGET qe_kcwpp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kcwpp PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_kcwpp.a"
  )

list(APPEND _cmake_import_check_targets qe_kcwpp )
list(APPEND _cmake_import_check_files_for_qe_kcwpp "${_IMPORT_PREFIX}/lib/libqe_kcwpp.a" )

# Import target "qe_kcw_exe" for configuration "Release"
set_property(TARGET qe_kcw_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kcw_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/kcw.x"
  )

list(APPEND _cmake_import_check_targets qe_kcw_exe )
list(APPEND _cmake_import_check_files_for_qe_kcw_exe "${_IMPORT_PREFIX}/bin/kcw.x" )

# Import target "qe_kcwpp_sh_exe" for configuration "Release"
set_property(TARGET qe_kcwpp_sh_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kcwpp_sh_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/kcwpp_sh.x"
  )

list(APPEND _cmake_import_check_targets qe_kcwpp_sh_exe )
list(APPEND _cmake_import_check_files_for_qe_kcwpp_sh_exe "${_IMPORT_PREFIX}/bin/kcwpp_sh.x" )

# Import target "qe_kcwpp_interp_exe" for configuration "Release"
set_property(TARGET qe_kcwpp_interp_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kcwpp_interp_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/kcwpp_interp.x"
  )

list(APPEND _cmake_import_check_targets qe_kcwpp_interp_exe )
list(APPEND _cmake_import_check_files_for_qe_kcwpp_interp_exe "${_IMPORT_PREFIX}/bin/kcwpp_interp.x" )

# Import target "qe_kcwpp_merge_wann_exe" for configuration "Release"
set_property(TARGET qe_kcwpp_merge_wann_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_kcwpp_merge_wann_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/merge_wann.x"
  )

list(APPEND _cmake_import_check_targets qe_kcwpp_merge_wann_exe )
list(APPEND _cmake_import_check_files_for_qe_kcwpp_merge_wann_exe "${_IMPORT_PREFIX}/bin/merge_wann.x" )

# Import target "qe_pioud" for configuration "Release"
set_property(TARGET qe_pioud APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pioud PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "Fortran"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libqe_pioud.a"
  )

list(APPEND _cmake_import_check_targets qe_pioud )
list(APPEND _cmake_import_check_files_for_qe_pioud "${_IMPORT_PREFIX}/lib/libqe_pioud.a" )

# Import target "qe_pioud_exe" for configuration "Release"
set_property(TARGET qe_pioud_exe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(qe_pioud_exe PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/pioud.x"
  )

list(APPEND _cmake_import_check_targets qe_pioud_exe )
list(APPEND _cmake_import_check_files_for_qe_pioud_exe "${_IMPORT_PREFIX}/bin/pioud.x" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
