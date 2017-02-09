---------------------------------------
Gnip API + jq command line snippets
---------------------------------------

INSTALLATION: https://stedolan.github.io/jq/download/

- OS X: Use Homebrew to install jq 1.5 with `brew install jq`
- Windows: Use Chocolatey NuGet to install jq 1.5 with `chocolatey install jq`


Streaming (PowerTrack, Volume Streams)
=======================================

// Pretty print results

  jq "."

// Parse out root-level {object}

  jq '.["favoritesCount"]'

  jq '.["gnip"]'


Search (30-day, FAS)
=======================================

// Pretty print results array

  jq '.results[] 

// Parse root-level `totalCount` field from Counts result

  jq '.totalCount'

// Parse out root-level `id` field from results array

  jq '.results[] | .id'

// Creates an object with "id" and "body" as the two items in it.
  
  jq '.results[] | {(.id): .body}'

// Returns requested fields from search results in CSV format.

  jq '.results[] | (.id + ", " + .body)' 