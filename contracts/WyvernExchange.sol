pragma solidity ^0.4.13;

import "./Exchange.sol";
import "./TokenTransferProxy.sol";
import "./ERC20.sol";
import "./ProxyRegistry.sol";

contract WyvernExchange is Exchange {

    string public constant name = "Project Wyvern Exchange";

    string public constant version = "2.2";

    string public constant codename = "Lambton Worm";

    /**
     * @dev Initialize a WyvernExchange instance
     * @param registryAddress Address of the registry instance which this Exchange instance will use
     * @param tokenAddress Address of the token used for protocol fees
     */
    constructor (ProxyRegistry registryAddress, TokenTransferProxy tokenTransferProxyAddress, ERC20 tokenAddress, address protocolFeeAddress) public {
        registry = registryAddress;
        tokenTransferProxy = tokenTransferProxyAddress;
        exchangeToken = tokenAddress;
        protocolFeeRecipient = protocolFeeAddress;
        owner = msg.sender;
    }

}
