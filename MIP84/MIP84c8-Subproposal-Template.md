# MIP84c8: Modify the Dss-kiln parameters

## Preamble

```
MIP84c8-SP#: #
Author(s):
Contributors:
Tags: template
Status:
Date Proposed: <yyyy-mm-dd>
Date Ratified: <yyyy-mm-dd>
```

## Sentence Summary

## Paragraph Summary

## Specification

### Motivation

- Why are you proposing this modification to the dss-kiln parameters?

### New dss-kiln Parameters

- This section contains the new dss-kiln parameters that will override the current parameters in MIP84c7

- The following parameters must be specified:

  * `sell`: The token to be deposited into DssKiln and sold.
  * `buy`: The token to be bought in exchange for the sold token.
  * `hop`: Duration specified in seconds. It represents a minimum number of seconds that must pass before the `lot` can be sold.
  * `lot`: The maximum quantity of tokens to be sold per hop.
