# Proof of conceput for distributing prebuilt binaries through a private Specs repo.
It is composed of the following repositories 

The following repositories: 
* https://github.com/georgescumihai/MGSampleFramework
* https://github.com/georgescumihai/MGRelease
* https://github.com/georgescumihai/MGSpecs
* https://github.com/georgescumihai/MGBinaryDependencies

# MGBinaryDependencies
This Repository consumes the MGSDK as a prebuilt binary.

## Purpose
In order to hide the code from the users of the SDK and to make it easy to install, Cocoapods distribution is a good candidate.

This proof of concept was used in the end to distribute a prebuilt SDK.
