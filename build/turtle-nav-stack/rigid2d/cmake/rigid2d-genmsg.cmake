# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rigid2d: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rigid2d_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/thefakhreddin/turtlebot_gazebo/src/turtle-nav-stack/rigid2d/srv/set_pose.srv" NAME_WE)
add_custom_target(_rigid2d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rigid2d" "/home/thefakhreddin/turtlebot_gazebo/src/turtle-nav-stack/rigid2d/srv/set_pose.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(rigid2d
  "/home/thefakhreddin/turtlebot_gazebo/src/turtle-nav-stack/rigid2d/srv/set_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rigid2d
)

### Generating Module File
_generate_module_cpp(rigid2d
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rigid2d
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rigid2d_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rigid2d_generate_messages rigid2d_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thefakhreddin/turtlebot_gazebo/src/turtle-nav-stack/rigid2d/srv/set_pose.srv" NAME_WE)
add_dependencies(rigid2d_generate_messages_cpp _rigid2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rigid2d_gencpp)
add_dependencies(rigid2d_gencpp rigid2d_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rigid2d_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(rigid2d
  "/home/thefakhreddin/turtlebot_gazebo/src/turtle-nav-stack/rigid2d/srv/set_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rigid2d
)

### Generating Module File
_generate_module_eus(rigid2d
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rigid2d
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rigid2d_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rigid2d_generate_messages rigid2d_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thefakhreddin/turtlebot_gazebo/src/turtle-nav-stack/rigid2d/srv/set_pose.srv" NAME_WE)
add_dependencies(rigid2d_generate_messages_eus _rigid2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rigid2d_geneus)
add_dependencies(rigid2d_geneus rigid2d_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rigid2d_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(rigid2d
  "/home/thefakhreddin/turtlebot_gazebo/src/turtle-nav-stack/rigid2d/srv/set_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rigid2d
)

### Generating Module File
_generate_module_lisp(rigid2d
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rigid2d
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rigid2d_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rigid2d_generate_messages rigid2d_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thefakhreddin/turtlebot_gazebo/src/turtle-nav-stack/rigid2d/srv/set_pose.srv" NAME_WE)
add_dependencies(rigid2d_generate_messages_lisp _rigid2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rigid2d_genlisp)
add_dependencies(rigid2d_genlisp rigid2d_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rigid2d_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(rigid2d
  "/home/thefakhreddin/turtlebot_gazebo/src/turtle-nav-stack/rigid2d/srv/set_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rigid2d
)

### Generating Module File
_generate_module_nodejs(rigid2d
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rigid2d
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rigid2d_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rigid2d_generate_messages rigid2d_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thefakhreddin/turtlebot_gazebo/src/turtle-nav-stack/rigid2d/srv/set_pose.srv" NAME_WE)
add_dependencies(rigid2d_generate_messages_nodejs _rigid2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rigid2d_gennodejs)
add_dependencies(rigid2d_gennodejs rigid2d_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rigid2d_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(rigid2d
  "/home/thefakhreddin/turtlebot_gazebo/src/turtle-nav-stack/rigid2d/srv/set_pose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rigid2d
)

### Generating Module File
_generate_module_py(rigid2d
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rigid2d
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rigid2d_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rigid2d_generate_messages rigid2d_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thefakhreddin/turtlebot_gazebo/src/turtle-nav-stack/rigid2d/srv/set_pose.srv" NAME_WE)
add_dependencies(rigid2d_generate_messages_py _rigid2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rigid2d_genpy)
add_dependencies(rigid2d_genpy rigid2d_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rigid2d_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rigid2d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rigid2d
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rigid2d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rigid2d
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rigid2d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rigid2d
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rigid2d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rigid2d
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rigid2d)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rigid2d\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rigid2d
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
