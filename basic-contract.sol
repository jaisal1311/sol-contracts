pragma solidity ^0.5.1;

// contract MyContract {
//     bool public valid = false;

//     uint32 public uidata = 5012019;
//     int32 public intdata = -6012019;

//     string public str = "This is a string";
// }

contract MyContract {
    enum State {waiting, ready, active}
    State public state;
    constructor() public {
        state = State.waiting;
    }

    function ready() public {
        state = State.ready;
    }
    function activate() public {
        state = State.active;
    }
    function isActive() public view returns(bool) {
      return state == State.active;
    }
}