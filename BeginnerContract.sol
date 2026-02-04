// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.20 and less than 0.9.0
pragma solidity ^0.8.20;

contract HelloWorld {
    string public greet = "Hello World This is Bts fan !"; // state variable
    uint public count;
    uint public constant MAX_SUPPLY=5000;
    address public immutable owner ;

    constructor(){
        owner = msg.sender ;

    }
}

contract BTSFanCounterBeginner {

    
    uint256 public totalSupport;        
    int256 public moodScore;             
    bool public isActive;               
    string public fandomName;            
    address public owner;                

    uint256 public constant MAX_MEMBERS = 7;
    uint256 public immutable deployedAt;

    
    enum Era { DEBUT, WINGS, LY, BE, PROOF }
    Era public currentEra;

    

    struct Member {
        string name;
        uint256 supportCount;
        bool isMemberActive;
    }

   

    Member[] public members;                     
    mapping(address => bool) public hasSupported; 
    mapping(uint256 => Member) private memberById;

    

    event MemberSupported(
        address indexed supporter,
        string memberName,
        uint256 newSupportCount,
        uint256 time
    );

    

    modifier onlyOwner() {
        require(msg.sender == owner, "Not contract owner");
        _;
    }

   

    constructor() {
        owner = ms
        return block.timestamp - deployedAt;
    }

    

    function sum(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}



0
g.sender;
        fandomName = "ARMY";
        isActive = true;
        moodScore = 100;
        currentEra = Era.PROOF;
        deployedAt = block.timestamp;

        _addMember("RM");
        _addMember("Jin");
        _addMember("SUGA");
        _addMember("j-hope");
        _addMember("Jimin");
        _addMember("V");
        _addMember("Jungkook");
    }

    

    function _addMember(string memory _name) internal {
        Member memory newMember = Member({
            name: _name,
            supportCount: 0,
            isMemberActive: true
        });

        members.push(newMember);
        memberById[members.length - 1] = newMember;
    }

    

    function supportMember(uint256 _memberId) public {
        require(isActive, "Contract not active");
        require(_memberId < members.length, "Invalid member ID");
        require(!hasSupported[msg.sender], "Already supported");

        members[_memberId].supportCount += 1;
        totalSupport += 1;
        hasSupported[msg.sender] = true;

        emit MemberSupported(
            msg.sender,
            members[_memberId].name,
            members[_memberId].supportCount,
            block.timestamp
        );
    }

    function toggleContractActive() public onlyOwner {
        isActive = !isActive;
    }

    function updateEra(Era _era) public onlyOwner {
        currentEra = _era;
    }

    
    function getMember(uint256 _memberId)
        public
        view
        returns (
            string memory name,
            uint256 supportCount,
            bool isMemberActive
        )
    {
        Member memory member = members[_memberId];
        return (member.name, member.supportCount, member.isMemberActive);
    }

    function getMembersCount() public view returns (uint256) {
        return members.length;
    }

    function getContractAge() public view returns (uint256) {
        return block.timestamp - deployedAt;
    }

    

    function sum(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}

