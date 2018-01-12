# gnip-bash-scripts

This repo contains a directory of simple bash scripts that act as a wrapper for running curl commands against the Twitter Enterprise APIs (Gnip APIs). It extracts basic auth details into an env file, uses variables for endpoint details, and provides distinct json files (/files/..) to help separate the request from the query.

## Supported APIs

Below is a list of APIs and endpoints that are currently supported:

1. Decahose stream
2. PowerTrack API
    1. Rules endpoint (GET only)
    2. Rules validator endpoint (POST only)
3. Replay API
    1. Rules endpoins (GET only)
4.  Full-Archive Search API (POST only)
    1. Data endpoint (default call)
    2. Counts endpoint (must pass 'counts' as first argument with the command)
5. Historical PowerTrack API (POST only – creates job)

## Getting started

Follow the steps below to get this package of simple scripts running on your machine:

1. Clone the repository (Need help? See this [help article](https://help.github.com/articles/cloning-a-repository/))
2. Create a file called 'gnip-env.sh' at the root level of your user directory (e.g., `/Users/jdemos/gnip-env.sh`). Must be named exactly as specified. Below are helpful steps (if needed):
    1. Run `$ cd` to get to the root level of your user dir
    2. Run `$ touch gnip-env.sh` to create the file
3. Populate the 'gnip-env' file with following information:
```
  PW='INSERT-YOUR-GNIP-PW'
  UN='INSERT-YOUR-GNIP-USERNAME'
  ACCOUNT='INSERT-YOUR-GNIP-ACCOUNT-NAME'
```
4. Add your endpoint/stream label (e.g., 'dev', 'prod') to each script file so that it will run properly for your account. There is a pre-defined `label` variable in each script (`label="prod"`), so you may need to edit them with your account's endpoint label (per file).
5. Run the scripts! Here are some examples below:
    1. Run `$ sh GET-decahose.sh` to connect to your Decahose stream
    2. Run `$ sh POST-fas.sh counts` to make a counts request to the Full-Archive Search API (remove 'counts' to request data endpoint)
    3. Run `$ sh GET-replay 201801010000 201801010005` to run a 5-minute replay job (first and second arugment are fromDate and toDate respectively)
        1. NOTE:This assumes that you have existing rules on our Replay stream. If not, quickly add some via the [Console](https://console.gnip.com/).
        
## Tips and tricks

Using jq to parse the API response and piping the data to a file for storage/reference are great complements to this set of scripts.

### Using jq

jq is an excellent utility for json response objects on the fly. I've provided a **jq.md** file at the root of this repo, so please see that for further details.

### Piping data to a file

If you want to keep data ouput confined to your local clone of this directory, I'd suggest creating an 'output' directory where you can pipe API responses to for storage, reference, or analysis. Here's how to do that:

1. First, create a directory to house the files
    1. From the root-level of the repo, run `$ mkdir output`
2. Second, let's connect to the Decahose stream and pipe that data to file that we'll create on the fly
    1. From the root-level of the repo, run `$ sh GET-decahose.sh > output/decahose-test.txt`
3. Now, let's say you want to first run the API response through jq, then pipe it to a file – here's what that looks like:
    1. Run `$ sh GET-decahose.sh | jq ".text" > output/decahose-jq-test.txt"` (this will grab just the root-level 'text' field of a Tweet object and output that to a file)
