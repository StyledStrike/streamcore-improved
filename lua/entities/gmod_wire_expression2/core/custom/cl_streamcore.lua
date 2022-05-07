E2Helper.Descriptions["streamDisable3D(n)"] = "If set to 1, newly created streams will be played in stereo mode."
E2Helper.Descriptions["streamsRemaining()"] = "Returns the remaining number of streams you can create."
E2Helper.Descriptions["streamMaxRadius()"] = "Returns the max. allowed distance for streams (in units)."
E2Helper.Descriptions["streamAdminOnly()"] = "Returns 1 if the StreamCore is admin-only.\nSee the streamc_adminonly server cvar."
E2Helper.Descriptions["streamCanStart()"] = "Returns 1 if you are allowed to create a new stream. (Only if you haven't reached the max. number of streams and the antispam time has passed)"
E2Helper.Descriptions["streamStop(n)"] = "Stops the Nth stream started earlier with streamStart."

E2Helper.Descriptions["streamStart(e:nns)"] = "Starts a stream with id and volume from an URL."
E2Helper.Descriptions["streamStart(e:nsn)"] = "Starts a stream with id, from an URL, with a volume."
E2Helper.Descriptions["streamStart(e:ns)"] = "Starts a stream with id, from the URL.\nThe volume is set to 1 by default."
E2Helper.Descriptions["streamCreate(e:nsn)"] = "Creates a stream with id, URL and a volume, but does NOT start playing automatically. Use streamTime to start it."

E2Helper.Descriptions["streamVolume(nn)"] = "Changes the Nth stream's volume.\nThis value gets clamped between 0 and 2."
E2Helper.Descriptions["streamRadius(nn)"] = "Changes the Nth stream's radius.\nThis value gets clamped between 10 and streamMaxRadius()"
E2Helper.Descriptions["streamTime(nn)"] = "Sets the time (in seconds) of the stream, and starts playing it from there if it isn't already.\n(Does not work on online radio streams)"
E2Helper.Descriptions["streamRate(nn)"] = "Sets the playback rate of the stream (between 0.1 and 2).\n(Does not work well on online radio streams)"
E2Helper.Descriptions["streamLoop(nn)"] = "If set to 1, the stream will loop."

E2Helper.Descriptions["admStreamRadius(nn)"] = "(SuperAdmin only) Changes the Nth stream's radius.\nUnlike streamRadius, there is no limit."