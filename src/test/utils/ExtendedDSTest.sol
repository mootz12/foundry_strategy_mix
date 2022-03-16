// SPDX-License-Identifier: AGPL-3.0
import "ds-test/test.sol";

contract ExtendedDSTest is DSTest {
    function assertNeq(address a, address b) internal {
        if (a == b) {
            emit log("Error: a != b not satisfied [address]");
            emit log_named_address("  Expected", b);
            emit log_named_address("    Actual", a);
            fail();
        }
    }
}
