# gnip-bash-scripts

Simple bash scripts that act as a wrapper for running curl commands against the Twitter Enterprise APIs (e.g., Gnip APIs). Extracts basic auth details into a env file, extracts some endpoint details as variables, and provides distinct json files (files/...) to help separate the request from the query.

Support APIs and 

## Getting started

Follow the steps below to get this package of simple scripts running on your machine:

1. Clone the repository (`git clone <name-of-repo>`)
2. Create a file called 'gnip-env.sh' at the root level of your user directory (e.g., `/Users/jdemos/gnip-env.sh`)
    1. Run `$ cd` to get to the root level of your user dir
    2. Run `$ touch gnip-env.sh`
3. Populate the env file as follows:
```
  PW='INSERT-YOUR-GNIP-PW'
  UN='INSERT-YOUR-GNIP-USERNAME'
  ACCOUNT='INSERT-YOUR-GNIP-ACCOUNT-NAME'
```
NOTE: The 'ACCOUNT' is case-sensitive and you cannot have spaces between the var name, the equal sign, and the variable value.
4. Add your endpoint stream label (e.g., 'dev', 'prod') to each script so that it will run properly for your account.
5. Run the scripts! Here are some examples below:
    1. Run `$ sh GET-decahose.sh` to connect to your Decahose stream.
    2. Run `$ sh POST-fas.sh counts` to make a counts request to the Full-Archive Search API.
