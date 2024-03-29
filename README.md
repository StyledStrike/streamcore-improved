## StreamCore - Improved

[![GLuaLint](https://github.com/StyledStrike/streamcore-improved/actions/workflows/glualint.yml/badge.svg)](https://github.com/FPtje/GLuaFixer)
[![Workshop Page](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Fshieldsio-steam-workshop.jross.me%2F2981797599%2Fsubscriptions-text)](https://steamcommunity.com/sharedfiles/filedetails/?id=2981797599)

A Expression 2 extension that allows you to play audio streams from the web.

The goal of this "improved" version is to add useful features while still keeping compatibility with [the original StreamCore](https://steamcommunity.com/sharedfiles/filedetails/?id=442653157), therefore, existing E2s should still work with this one.

A few key differences between this addon and the original are:

* Only URLs on the whitelist can be used
* New functions: `streamCreate`, `streamTime`, `streamRate`, and `streamLoop`
* Prints to console the URL and owner name of anybody who starts a stream
* `streamRadius` is consistent, no matter if you used `streamDisable3D` or not
* Limits how quickly streams can be created/updated
* Configurable limits on how many streams each player can have and max. radius
* Auto-apply corrections for Dropbox links

### Installation

**ATTENTION: this REPLACES the original stream core, keeping the original installed while also using the improved version will cause issues!**

1. Download the source code `Code > Download Zip`
2. Extract the ZIP contents `streamcore-improved-master` to your Garry's Mod addons folder
3. Enable the extension *(Skip if enabled already, requires admin privileges)*
	* Using the console command `wire_expression2_extension_enable streamcore`, or
	* Using the Extensions menu on **Spawnlist > Utilities > Admin > E2 Extensions**

### Functions

Cost | Function										| Description
---- | -------------------------------------------- | -----------
5    | streamDisable3D(number disable)				| If set to 1, newly created streams will be played in stereo mode.
5    | streamsRemaining()							| Returns the remaining number of streams you can create.
5    | streamMaxRadius()							| Returns the max. allowed distance for streams (in units).
5    | streamAdminOnly()							| Returns 1 if the StreamCore is admin-only. See the `streamc_adminonly` server cvar.
5    | streamCanStart()								| Returns 1 if you are allowed to create a new stream.
10   | streamStop(number id)						| Stops the stream started earlier with `streamStart`.
50   | entity:streamStart(number id, number volume, string url)		| Starts a stream with id, volume, and URL.
50   | entity:streamStart(number id, string url, number volume)		| Starts a stream with id, URL and a volume.
50   | entity:streamStart(number id, string url)					| Starts a stream with id, from the URL. The volume is set to 1 by default.
50   | entity:streamCreate(number id, string url, number volume)	| Creates a stream with id, URL and a volume, **but does NOT start playing automatically.** Use `streamTime` to start it.
15   | streamVolume(number id, number volume)		| Changes the stream volume. This value gets clamped between 0 and 2.
15   | streamRadius(number id, number radius)		| Changes the stream radius. This value gets clamped between 10 and streamMaxRadius()
15   | streamTime(number id, number time)			| Sets the time (in seconds) of the stream, and starts playing it from there if it isn't already. *(Does not work on online radio streams)*
15   | streamRate(number id, number rate)			| Sets the playback rate of the stream. *(between 0.1 and 2)*
15   | streamLoop(number id, number loop)			| If set to 1, the stream will loop.
15   | admStreamRadius(number id, number radius)	| **(Admin only)** Changes the Nth stream's radius. Unlike `streamRadius`, there is no limit.

### Console commands/variables

Available on  | Command 						  | Action
------------- | --------------------------------- | ------
Client        | streamc_disabled &lt;number&gt;   | Use `streamc_disabled 1` to disable StreamCore for yourself
Client        | streamc_list					  | Prints a list of all streams and their authors to console
Client        | streamc_stop_id &lt;string&gt;	  | Stop a stream using its ID
Client        | streamc_stop_all				  | Stops all streams
Server        | streamc_adminonly &lt;number&gt;  | If set to 1, only admins can use StreamCore
Server        | streamc_maxradius &lt;number&gt;  | Max. radius players can use on streamRadius
Server        | streamc_maxstreams &lt;number&gt; | Max. number of streams each player can have at once
Server        | streamc_antispam_seconds &lt;number&gt; | How long (in seconds) players must wait between each time they create a stream

## Contributing

Please follow the [CFC style guidelines](https://github.com/CFC-Servers/cfc_glua_style_guidelines) before opening pull requests.