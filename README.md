# near-guildnet-validator-inabox
Create a NEAR guildnet validator automatically

# Requirements

- Ubuntu Server bionic or newer with lxd installed 
- A Validator PoolId [instructions](https://github.com/near-guildnet/docs/blob/master/Staking_Pool_Cheatsheet.md#deploy-a-staking-pool-using-the-staking-pool-factory)

# Instructions

Install lxd
```
sudo apt install snapd
sudo snap install lxd
sudo usermod -a -G lxd $USER
```

Get the script and execute it
```
git clone https://github.com/crypto-guys/near-guildnet-validator-inabox.git
cd near-guildnet-validator-inabox
chmod +x ./installer
sudo ./installer
```
- Choose y for compile to create new binaries.

- Choose y to create a new validator container.

- Enter the requested information

When complete there will be a new validator syncing in the lxc container named validator

You should allow the validator to complete the sync process then enter the command provided to update the validators staking key. 

Once those 2 things are done the validator is ready to ping.
