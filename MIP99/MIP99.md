## MIP99: Offer DAI to CeFi projects to enable real-world use cases

```
MIP#: 99
Title: Offer DAI to CeFi projects to enable real-world use cases
Author(s): @fluid_fi
Contributors:
Tags: mips
Type: General
Status: <Assigned by MIP Editor>
Date Proposed: 2023-01-19
Date Ratified: <yyyy-mm-dd>
```

### References

Dai - DUSD pool on Balancer: https://bit.ly/3hJmfw1
YouTube explainer videos. How to buy/sell Dai directly from your bank account (or Fluid Account): https://bit.ly/3wczadA. How to spend Dai on your Fluid Card: https://bit.ly/3XfExEG. 

### Sentence Summary

The MIP would enable Maker to sell Dai to anyone, globally, and capture the revenue from these sales. Revenues could be paid to the Maker treasury or streamed to MKR holders. 

### Paragraph Summary

At the moment, to buy Dai, users need to purchase a separate product (ETH, USDC, etc) from separate companies. This often involves transferring money through the traditional financial system to a centralized exchange. It is an inefficient, expensive process that requires the user to have an exchange account, undertake often extensive KYC, and be able to use a Web3 wallet. By definition, it limits users to a small percentage of the population who have expert knowledge. 

Fluid and Maker should work together for a simple implementation of buy (and sell) buttons via the Maker website. This would allow users to buy and sell Dai directly from their bank account (or Fluid Account) with Fluid, and encourage greater adoption of Dai. 

### Component Summary

The rise of DeFi in 2020 is positively correlated with the growth in dollar denominated stablecoins assets. We see Dai as being at the heart of a healthy DeFi economy. 

The problems in DeFi include: centralized exchanges, centralized stablecoins, lack of real-world utility and potential regulatory attack. The combination of Dai and Fluid solves these problems and lays the foundation for mass adoption of DeFi.

Dai is essentially open-source software providing a decentralized, digital version of currency. It has significant value because 

    • Dai has the same denomination as real-world liabilities (i.e. dollar denominated). 
    • Dai is user-owned. 

The market for dollars outside the US, for trade, wealth-preservation, etc. is enormous. Banks’ outstanding cross-border dollar deposits (outside the US) at the end of 2021 were $15.4 trillion and dollar-denominated global trade was $22.8 trillion, 13% higher than the pre-Covid level. This is Dai’s total addressable market.  

Tangibly, you can send Dai around the world almost instantly and almost for free. There is enormous demand for dollars, and Dai is technically superior to traditional currency alternatives. 

The main problem is that the benefits of Dai are not easily available in the real economy. 

Fluid enables seamless integration of Dai into the real economy. Together, Dai and Fluid put the user in control and deliver tangible, real-world benefits that are superior to TradFi alternatives. 

Here is what the solution looks like:
![image|190x310](https://github.com/FluidF/mips/blob/master/MIP99/supporting_materials/fluid%26maker.jpg)

Fluid allows users to mint their own digital cash, which is a digital version of money held in their account. It is essentially real money, on-chain. And, it is available in 32 different currencies. 

 You can drag and drop real money from your account to your Web3 wallet.

![image|190x310](https://github.com/FluidF/mips/blob/master/MIP99/supporting_materials/dragandrop.jpg)


Then, you can swap your digital dollars for Dai directly on our fluidswap.

The benefits of Dai + Fluid’s digital cash, DUSD, are set out below. 

![image|190x310](https://github.com/FluidF/mips/blob/master/MIP99/supporting_materials/DUSDDAI_benefits.jpg)


We have been testing our Stable Pool on Balancer (on Arbitrum) for several months now. You can see it here: https://bit.ly/3hJmfw1. We are planning to launch on Ethereum mainnet soon. Of course, the development of Maker Teleport helps making currency movements nearly instant across these chains.

![image|690x310](https://github.com/FluidF/mips/blob/master/MIP99/supporting_materials/stablecoinpool.jpg)



Fluid enables Dai holders to offramp from crypto to a bank account (or Fluid Account) in less than a minute. 
Holders can also spend their Dai on their Fluid Cards, which run on the Mastercard network. These cards are available to anyone, globally.
You can see these on YouTube here: https://bit.ly/3XfExEG. 

Fluid also allows crypto degens the easiest way to buy assets in the real world, as you can see from the testimonial here : https://fr.trustpilot.com/reviews/629df2ecd5573095630c6218. 


By seamlessly linking Dai to the traditional financial system, we hope that this will encourage greater use of Dai and the broader crypto ecosystem. 

### Motivation

This MIP has three main objectives. 

    1. Generate revenues for Maker and MKR holders. 
    2. Encourage mass adoption of Dai (and crypto). 
    3. Allow users to by-pass centralized exchanges. 

#### Specification / Proposal Details

The MIP would permit the integration of a link to Fluid Finance for users who want to buy or sell Dai directly from their bank account (or Fluid Account). Fees would be shared equally with Maker, giving the protocol an attractive new revenue stream and encouraging adoption of Dai. 

Using an estimate that about 5% of TVL could on/off ramp via Maker + Fluid directly, this would bring in revenues of $51.3 million over the next 12 months. Anyone globally could buy Dai directly, using bank transfers, cards or open banking. 

We think that these estimates, based only on existing crypto flows, are extremely conservative, as they don’t take into consideration target markets of cross-border dollar flows, including trade finance, remittances, creator economy payments, etc. for which Dai should be the main currency. Expanding Dai to these markets would increase revenues to Maker and MKR holders by over 1,000x. 

You can see the working financial model, below. You can also edit it for different assumptions. 
https://bit.ly/3CcAn88

Extremely conservative, crypto-only, no growth, no new markets case:

![image|690x310](https://github.com/FluidF/mips/blob/master/MIP99/supporting_materials/maker_revenue.jpg)


We intend to make another Maker Improvement Proposal to add the digital version of our currencies shortly. 
We currently offer a digital version of the US dollar, available in our Dai - DUSD pool on Balancer on Arbitrum. We refer to this as real money, on-chain, rather than a stablecoin since it is just a digital representation of US dollars deposited with our banking partners. 

There is a direct claim to deposited funds, of course, and we expect that these can be accessed via a smart contract under the control of Maker, using API. 
There is no (minimal) time delay in accessing funds and they would be completely under the control of Maker. Of course, like any real-world asset, they are subject to legal and regulatory action. 
