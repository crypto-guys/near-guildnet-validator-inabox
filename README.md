# near-guildnet-validator-inabox
Create a NEAR guildnet validator automatically

# Requirements

- Ubuntu Server bionic or newer
- A Validator PoolId [instructions](https://github.com/near-guildnet/docs/blob/master/Staking_Pool_Cheatsheet.md#deploy-a-staking-pool-using-the-staking-pool-factory)

# Instructions

```
git clone https://github.com/crypto-guys/near-guildnet-validator-inabox.git
cd near-guildnet-validator-inabox
sudo ./installer
```
- Choose y for compile to create new binaries.

- Choose y to create a new validator container.

- Enter the requested information

When complete there will be validator syncing in the lxc container named validator

You should allow the validator to complete the sync process then enter the command provided to update the validators staking key. 

Once those 2 things are done the validator is ready to ping.
