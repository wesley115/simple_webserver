file(REMOVE_RECURSE
  "librequest_handler_lib.a"
  "librequest_handler_lib.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/request_handler_lib.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
