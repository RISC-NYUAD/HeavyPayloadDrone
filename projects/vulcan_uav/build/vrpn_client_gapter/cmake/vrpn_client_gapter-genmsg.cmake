# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vrpn_client_gapter: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ivrpn_client_gapter:/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vrpn_client_gapter_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/msg/Num.msg" NAME_WE)
add_custom_target(_vrpn_client_gapter_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vrpn_client_gapter" "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/msg/Num.msg" ""
)

get_filename_component(_filename "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_vrpn_client_gapter_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vrpn_client_gapter" "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vrpn_client_gapter
  "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vrpn_client_gapter
)

### Generating Services
_generate_srv_cpp(vrpn_client_gapter
  "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vrpn_client_gapter
)

### Generating Module File
_generate_module_cpp(vrpn_client_gapter
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vrpn_client_gapter
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vrpn_client_gapter_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vrpn_client_gapter_generate_messages vrpn_client_gapter_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/msg/Num.msg" NAME_WE)
add_dependencies(vrpn_client_gapter_generate_messages_cpp _vrpn_client_gapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(vrpn_client_gapter_generate_messages_cpp _vrpn_client_gapter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vrpn_client_gapter_gencpp)
add_dependencies(vrpn_client_gapter_gencpp vrpn_client_gapter_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vrpn_client_gapter_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vrpn_client_gapter
  "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vrpn_client_gapter
)

### Generating Services
_generate_srv_eus(vrpn_client_gapter
  "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vrpn_client_gapter
)

### Generating Module File
_generate_module_eus(vrpn_client_gapter
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vrpn_client_gapter
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vrpn_client_gapter_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vrpn_client_gapter_generate_messages vrpn_client_gapter_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/msg/Num.msg" NAME_WE)
add_dependencies(vrpn_client_gapter_generate_messages_eus _vrpn_client_gapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(vrpn_client_gapter_generate_messages_eus _vrpn_client_gapter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vrpn_client_gapter_geneus)
add_dependencies(vrpn_client_gapter_geneus vrpn_client_gapter_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vrpn_client_gapter_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vrpn_client_gapter
  "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vrpn_client_gapter
)

### Generating Services
_generate_srv_lisp(vrpn_client_gapter
  "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vrpn_client_gapter
)

### Generating Module File
_generate_module_lisp(vrpn_client_gapter
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vrpn_client_gapter
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vrpn_client_gapter_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vrpn_client_gapter_generate_messages vrpn_client_gapter_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/msg/Num.msg" NAME_WE)
add_dependencies(vrpn_client_gapter_generate_messages_lisp _vrpn_client_gapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(vrpn_client_gapter_generate_messages_lisp _vrpn_client_gapter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vrpn_client_gapter_genlisp)
add_dependencies(vrpn_client_gapter_genlisp vrpn_client_gapter_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vrpn_client_gapter_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vrpn_client_gapter
  "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vrpn_client_gapter
)

### Generating Services
_generate_srv_nodejs(vrpn_client_gapter
  "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vrpn_client_gapter
)

### Generating Module File
_generate_module_nodejs(vrpn_client_gapter
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vrpn_client_gapter
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vrpn_client_gapter_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vrpn_client_gapter_generate_messages vrpn_client_gapter_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/msg/Num.msg" NAME_WE)
add_dependencies(vrpn_client_gapter_generate_messages_nodejs _vrpn_client_gapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(vrpn_client_gapter_generate_messages_nodejs _vrpn_client_gapter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vrpn_client_gapter_gennodejs)
add_dependencies(vrpn_client_gapter_gennodejs vrpn_client_gapter_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vrpn_client_gapter_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vrpn_client_gapter
  "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrpn_client_gapter
)

### Generating Services
_generate_srv_py(vrpn_client_gapter
  "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrpn_client_gapter
)

### Generating Module File
_generate_module_py(vrpn_client_gapter
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrpn_client_gapter
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vrpn_client_gapter_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vrpn_client_gapter_generate_messages vrpn_client_gapter_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/msg/Num.msg" NAME_WE)
add_dependencies(vrpn_client_gapter_generate_messages_py _vrpn_client_gapter_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rn1/projects/vulcan_uav/src/vrpn_client_gapter/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(vrpn_client_gapter_generate_messages_py _vrpn_client_gapter_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vrpn_client_gapter_genpy)
add_dependencies(vrpn_client_gapter_genpy vrpn_client_gapter_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vrpn_client_gapter_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vrpn_client_gapter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vrpn_client_gapter
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vrpn_client_gapter_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vrpn_client_gapter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vrpn_client_gapter
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(vrpn_client_gapter_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vrpn_client_gapter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vrpn_client_gapter
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vrpn_client_gapter_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vrpn_client_gapter)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vrpn_client_gapter
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(vrpn_client_gapter_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrpn_client_gapter)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrpn_client_gapter\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vrpn_client_gapter
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vrpn_client_gapter_generate_messages_py std_msgs_generate_messages_py)
endif()
