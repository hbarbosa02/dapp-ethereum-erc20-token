pragma solidity >=0.4.21 <0.7.0;


contract DappToken {
    uint256 public totalSupply; //total number of tokens

    string public name = "Dapp Token"; //token name
    string public symbol = "DAPP"; //token symbol
    string public standard = "Dapp Token v1.0"; //token standard

    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    mapping(address => uint256) public balanceOf; //returns the account balance of another account with address _owner.

    constructor(uint256 _initialSupply) public {
        //msg.sender is the initial account
        balanceOf[msg.sender] = _initialSupply; //set balance of to the admin account
        totalSupply = _initialSupply; //set initial supply
    }

    // Transfer to
    function transfer(address _to, uint256 _value)
        public
        returns (bool success)
    {
        require(
            balanceOf[msg.sender] >= _value,
            "amount must be less than your balance"
        ); //verify sender balance

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);

        return true;
    }
}
