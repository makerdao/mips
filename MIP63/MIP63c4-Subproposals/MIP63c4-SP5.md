# MIP63c4-SP5: Onboard/Amend Keeper Network - Chainlink Automation

## Preamble

```
MIP63c4-SP#: 5
Title: Onboard/Amend Keeper Network - Chainlink Automation
Author(s): Sam Demaree
Contributors:
Tags: keeper-network
Status: RFC
Date Proposed: 2022-11-08
Date Ratified:
Forum Post URL: https://forum.makerdao.com/t/mip63c4-sp5-onboard-amend-keeper-network-chainlink-automation/18722
```

## Specification

* **Name**: Chainlink Automation
* **Short Name**: CHAINLINK
* **Website**: [https://chain.link/automation](https://chain.link/automation)
* **Requested Budget**: 1,000 DAI / Day
* **Requested Buffer Min**: 4,000 DAI
* **Requested Buffer Max**: 20,000 DAI
* **Chain**: All
* **Address to Stream DAI to**: 0x5E9dfc5fe95A0754084fB235D58752274314924b

### Network Description

Chainlink Automation enables decentralized, cost-efficient, and highly secure automation for smart contracts. Powered by the same highly reliable node operators that have helped enable over $6 trillion in transactional value in 2022 alone, Chainlink Automation offers novel features such as an advanced turn-taking algorithm for gas war prevention with high-frequency execution.

#### Background

Chainlink Labs proposes that MakerDAO add Chainlink Automation to its third-party Keeper Network to bolster protocol security and improve uptime guarantees of essential jobs that secure the Maker protocol.

In preparation for this proposal, we have been conducting a test run of a Chainlink Automation contract on Ethereum mainnet to perform jobs available in the Maker Keeper Network. The MakerDAO community can find the [dashboard here](https://keepers.chain.link/mainnet/12049732317083051201514877528369061648217179903508662790905000050655955143364) to review Chainlink Automation’s historical on-chain performance, operating costs, and other relevant specs during the test. Since August 3rd, our test has swiftly completed 35 automation jobs at a low cost and without issue. For the proposal, a [new Automation contract has been deployed](https://automation.chain.link/mainnet/28574017338138851982101909486618913866040346571145944575028414711961808599672) with the same parameters. The proposed budget parameters are the same as other Keeper network participants, and any excess DAI beyond the max should be returned to the surplus buffer. All software and services are provided in accordance with the [MIT license](https://opensource.org/licenses/MIT) and [documentation here](https://docs.chain.link/docs/chainlink-keepers/introduction/).

We’re thrilled about this opportunity to collaborate with the MakerDAO community and add Chainlink Automation to the Maker Keeper Network to improve the protocol’s efficiency, security, and end-to-end decentralization at a low cost. Check out @hexonaut’s [presentation at SmartCon](https://www.youtube.com/watch?v=EE4JXOpv9TM) to learn more about Maker’s Keeper Network and Chainlink Automation’s vital role.

#### Resources

* [Chainlink Automation Dashboard - MakerDAO MIP 63 Testing Contract](https://keepers.chain.link/mainnet/12049732317083051201514877528369061648217179903508662790905000050655955143364)
* [Chainlink Automation Dashboard - MakerDAO MIP 63 Mainnet Contract](https://automation.chain.link/mainnet/28574017338138851982101909486618913866040346571145944575028414711961808599672)
* [Chainlink Automation Documentation](https://docs.chain.link/docs/chainlink-keepers/introduction/)
* [Introduction to Chainlink Automation](https://blog.chain.link/chainlink-keepers-is-now-live-on-mainnet/) & [7 New Chainlink Automation Features ](https://blog.chain.link/new-chainlink-keepers-features/)
* [Keeper Infrastructure in Maker | Sam MacPherson at SmartCon 2022](https://www.youtube.com/watch?v=EE4JXOpv9TM)


### Expected Coverage

* ALL
