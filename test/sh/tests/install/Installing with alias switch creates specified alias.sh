source $COMMON_HELPERS
source $dotnetsdk

dotnetsdk install "$KRE_TEST_VERSION" -a test

[ -f "$KVM_USER_HOME/alias/test.alias" ] || die "test alias was not created"
[ $(cat "$KVM_USER_HOME/alias/test.alias") == "dotnet-mono.$KRE_TEST_VERSION" ] || die "test alias was not set to expected value"