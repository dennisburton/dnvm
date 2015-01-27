source $COMMON_HELPERS
source $_KVM_PATH

# Clear the path
$_KVM_COMMAND_NAME use none

# Use the installed runtime
$_KVM_COMMAND_NAME use "$_TEST_VERSION"

# Check paths
EXPECTED_ROOT="$KVM_USER_HOME/runtimes/$_KVM_RUNTIME_PACKAGE_NAME-mono.$_TEST_VERSION/bin"

[ $(path_of $_KVM_RUNTIME_EXEC_NAME) == "$EXPECTED_ROOT/$_KVM_RUNTIME_EXEC_NAME" ] || die "'$_KVM_RUNTIME_EXEC_NAME' was not available at the specified path!"
[ $(path_of $_KVM_RUNTIME_HOST_NAME) == "$EXPECTED_ROOT/$_KVM_RUNTIME_HOST_NAME" ] || die "'$_KVM_RUNTIME_HOST_NAME' was not available at the specified path!"
[ $(path_of $_KVM_PACKAGE_MANAGER_NAME) == "$EXPECTED_ROOT/$_KVM_PACKAGE_MANAGER_NAME" ] || die "'$_KVM_PACKAGE_MANAGER_NAME' was not available at the specified path!"
