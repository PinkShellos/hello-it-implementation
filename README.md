# Hello IT Implementation

![Hello IT](https://github.com/PaperFixie/hello-it-implementation/blob/master/resources/hello-it-menus.png "Hello IT Screenshot")

## Scripts for Hello IT 1.2.9

These scripts were built based on the current release version of [Hello IT by ygini](https://github.com/ygini/Hello-IT). Many of these scripts were adapted to work based on scripts by [wardsparadox](https://github.com/wardsparadox) and some by [smashism](https://github.com/smashism).

> I have anonymized aspects of this that pertain to my company resources to make this a more general guide to how I implemented Hello IT.

## How to set up Hello IT

  - Download and install [Hello-IT.pkg](https://github.com/ygini/Hello-IT/releases/download/v1.2.9/Hello-IT.pkg)

  - Copy `com.github.ygini.hello-it.plist` from `./` to either `/Library/Preferences/` or `~/Library/Preferences/`

  > I found the most success with placing it in `~/Library/Preferences` to be more successful than using the root Library.

  - Copy contents of `./CustomScripts` to `/Library/Application\ Support/com.github.ygini.hello-it/CustomScripts`

  - In Terminal run `killall cfprefsd` to flush the Preferences cache

Hello IT installs an Application in the Utilities folder as well as a LaunchAgent.
