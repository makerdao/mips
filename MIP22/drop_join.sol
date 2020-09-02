contract DROPJoin is GemJoin {
    // the only line modified from GemJoin is the `auth` modifier in the function signature
    function join(address usr, uint wad) external auth note {
        require(live == 1, "GemJoin/not-live");
        require(int(wad) >= 0, "GemJoin/overflow");
        vat.slip(ilk, usr, int(wad));
        require(gem.transferFrom(msg.sender, address(this), wad), "GemJoin/failed-transfer");
    }
}

