# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "urc15: 1 messages, 2 services")

set(MSG_I_FLAGS "-Iurc15:/home/ashish/catkin_ws/src/urc15/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(urc15_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ashish/catkin_ws/src/urc15/srv/Navigation.srv" NAME_WE)
add_custom_target(_urc15_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "urc15" "/home/ashish/catkin_ws/src/urc15/srv/Navigation.srv" ""
)

get_filename_component(_filename "/home/ashish/catkin_ws/src/urc15/msg/Comm_DataArray.msg" NAME_WE)
add_custom_target(_urc15_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "urc15" "/home/ashish/catkin_ws/src/urc15/msg/Comm_DataArray.msg" ""
)

get_filename_component(_filename "/home/ashish/catkin_ws/src/urc15/srv/Arm.srv" NAME_WE)
add_custom_target(_urc15_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "urc15" "/home/ashish/catkin_ws/src/urc15/srv/Arm.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(urc15
  "/home/ashish/catkin_ws/src/urc15/msg/Comm_DataArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/urc15
)

### Generating Services
_generate_srv_cpp(urc15
  "/home/ashish/catkin_ws/src/urc15/srv/Navigation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/urc15
)
_generate_srv_cpp(urc15
  "/home/ashish/catkin_ws/src/urc15/srv/Arm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/urc15
)

### Generating Module File
_generate_module_cpp(urc15
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/urc15
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(urc15_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(urc15_generate_messages urc15_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ashish/catkin_ws/src/urc15/srv/Navigation.srv" NAME_WE)
add_dependencies(urc15_generate_messages_cpp _urc15_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashish/catkin_ws/src/urc15/msg/Comm_DataArray.msg" NAME_WE)
add_dependencies(urc15_generate_messages_cpp _urc15_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashish/catkin_ws/src/urc15/srv/Arm.srv" NAME_WE)
add_dependencies(urc15_generate_messages_cpp _urc15_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(urc15_gencpp)
add_dependencies(urc15_gencpp urc15_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS urc15_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(urc15
  "/home/ashish/catkin_ws/src/urc15/msg/Comm_DataArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/urc15
)

### Generating Services
_generate_srv_lisp(urc15
  "/home/ashish/catkin_ws/src/urc15/srv/Navigation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/urc15
)
_generate_srv_lisp(urc15
  "/home/ashish/catkin_ws/src/urc15/srv/Arm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/urc15
)

### Generating Module File
_generate_module_lisp(urc15
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/urc15
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(urc15_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(urc15_generate_messages urc15_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ashish/catkin_ws/src/urc15/srv/Navigation.srv" NAME_WE)
add_dependencies(urc15_generate_messages_lisp _urc15_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashish/catkin_ws/src/urc15/msg/Comm_DataArray.msg" NAME_WE)
add_dependencies(urc15_generate_messages_lisp _urc15_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashish/catkin_ws/src/urc15/srv/Arm.srv" NAME_WE)
add_dependencies(urc15_generate_messages_lisp _urc15_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(urc15_genlisp)
add_dependencies(urc15_genlisp urc15_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS urc15_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(urc15
  "/home/ashish/catkin_ws/src/urc15/msg/Comm_DataArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/urc15
)

### Generating Services
_generate_srv_py(urc15
  "/home/ashish/catkin_ws/src/urc15/srv/Navigation.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/urc15
)
_generate_srv_py(urc15
  "/home/ashish/catkin_ws/src/urc15/srv/Arm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/urc15
)

### Generating Module File
_generate_module_py(urc15
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/urc15
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(urc15_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(urc15_generate_messages urc15_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ashish/catkin_ws/src/urc15/srv/Navigation.srv" NAME_WE)
add_dependencies(urc15_generate_messages_py _urc15_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashish/catkin_ws/src/urc15/msg/Comm_DataArray.msg" NAME_WE)
add_dependencies(urc15_generate_messages_py _urc15_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ashish/catkin_ws/src/urc15/srv/Arm.srv" NAME_WE)
add_dependencies(urc15_generate_messages_py _urc15_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(urc15_genpy)
add_dependencies(urc15_genpy urc15_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS urc15_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/urc15)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/urc15
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(urc15_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/urc15)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/urc15
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(urc15_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/urc15)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/urc15\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/urc15
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(urc15_generate_messages_py std_msgs_generate_messages_py)
