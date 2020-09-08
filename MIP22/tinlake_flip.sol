interface RedeemLike {
    function redeemOrder(uint, uint) public;
    function disburse() public returns (uint, uint);
}

contract TinlakeFlipper {
    RedeemLike        public pool;
    GemLike           public dai;
    GemLike           public drop;
    GemJoinLike       public daiJoin;
    DROPJoinLike      public dropJoin;

    uint    public tab;
    address public vow;
    address public usr; // where to send excess DAI raised (back to pool)

    function kick(address usr_, address gal, uint256 tab, uint256 lot, uint256 bid)
        public auth returns (uint256 id)
    {
        vow = gal;
        usr = usr_;
        vat.flux(ilk, msg.sender, address(this), lot);

        dropJoin.exit(address(this), lot);
        pool.redeemOrder(lot);
    }

    function take() public {
        uint returned, _ = pool.disburse();
        if (tab < returned) {
            dai.transferFrom(address(this), usr, sub(returned-tab));
            returned = tab;
        }
        if (tab != 0) {
            dai.join(vow, returned);
            tab = sub(tab, returned);
        }
    }
}
