## Updates

v1.3.0
- Added cuff, ziptie, broken handcuffs, cuffkeys, bolt cutter and flush cutter
- You can cuff players with handcuffs and uncuff them with cuffkeys
- You can only uncuff them from the side (front / back) where the cuffs are (same for zipties)
- You can ziptie players and cut it with flush cutter
- Illegals can use bolt cutter to cut the cuffs and will get broken cuffs

v1.3.1
- When used cuff, you'll get cuff key and cuffs will be removed
- When you use keys, it will be removed and give you cuffs again
- Added vehicle livery menu
- Added prices for police vehicles

v1.3.2 :

- Added new prop item for zipties
- Fixed the rob player when cuffed from front
- Added configurable cufftypes into config where you can choose from wether the player can move with that kind handcuffs or not

v1.3.3
- Fingerprint UI has been changed
- Added evidence research option. Police can research filled evidence bags in lab and will see more info about the evidence
- Changed depot and impound system for police. Able to use target on vehicle and charging for depot / impound
- Citizens can access police impound and will see their own cars. When they pay the charge they can get their own vehicle
- Added breakout option. When you enable this in config, the cuffed player will see a minigame and when they success they can escape.
- Fixed the problem with negative amounts for depot / impound
- Fixed warning with missing phrases
- Animation fix for dead or in last stand players

v1.3.4
- Fixed general evidence stash not opening problem
- Added ps-ui option for breakout system
- Officier will get notification when successfully cuffed or citizen broke out
- Added support for qb-target / qtarget / ox_target
- Fixed fingerprint image showing wrong person
- Added more possibility to drop bullet when shooting
- If you are LEO then you can't drop bullets when shooting
- Optimize blips network event

v1.3.5
- Fixed lab evidence menu not showing with blood or fingerprint (thnx @ F7)
- Disabled police running / jumping when escorting someone

v1.3.6
- Fixed the error from target when starting the script up
- Optimized the blip system
- Added color options for each seperate LEO job (bcso = orange, police = blue, sasp = green etc.)
- Added leo-gps item for activating / deactivating the blips (inside images folder)
- When you loose or drop your gps item, your blip will be deleted (when someone robs you and gets your gps)
- Different blip sprites depending on vehicle type (heli, boats, plane, motorbike, emergency vehicles and for all other vehicles)

v1.3.7
- Option to switch between ox_lib or qb-menu
- Fixed the bug that you can't run when you put escorted player in vehicle
- EMS job type can use GPS now, blip color is red (see config)
- Fixed the targetbone not working for impound issue
- Fixed the issue that blip was staying when player quits the game
- PlayerJob is set automatically when restarting resource
- Added config option for ps-ui circle game

v1.3.8
- Fixed the impound menu error
- GPS was still showing after going offduty
- GPS will show on short range and on big map
- Some other minor fixes and cleanups

v1.3.9
- Added ped repair stations for repairing weapons
- Added syncronized walking while escorting
- Added version checker
- Fixed police impound menu not showing for other jobs then LEO
- Fixed tow menu not showing because of error

v.1.4.0
- Added ox_inventory support
- Removed leftover debug and prints
- Fixed evidence status 'unknown' to language

v.1.4.1
- Added quick equip option for armoury
- Moved phrases to language file
- Fixed ps-ui not working from config
- Addes ox_lib for skillcheck

v1.4.2
- Added cooldown for cuff spamming
	- config.lua - Config.CuffCooldown option
- Added option for disabling running and jumping while escorting
	- config.lua - Config.DisableSprintJump option
- Fixed the problem with ox_inventory not opening when uncuffed or boltcutter used
	- See readme for instructions to change an event in ox_inventory/modules/bridge/qb/client.lua
- Fixed the price in submenu for taking vehicles
- Added option to spawn multiple helicopters like vehicle garage
	- language added : info.heli_plate
- Added functionality for breatheanalyzer (Thnx @semfx for UI fix)
	- Added alcoholmeter item

v1.4.3
- Fixed the issue with weapon repair in ox_inventory
- Added object spawner menu
	- command : /objectmenu
	- language added objmenu and sub languages (en.lua 231 - 239)
- Added bridge for progressbar
	- config.lua - Config.ProgressBar option
- Added bridge for DrawText
	config.lua - Config.DrawText

v1.4.4
- Fixed an issue when placing a prop with object menu that you can't pick it up with qb-target
	- objects.lua : 137 - 138
- Changed alcohol event to add or remove alcohol promille
	- config.lua - Config.AlcoholReleaseInterval option
	- Use the next trigger to add or remove promille : 
		-- This will add between 0.01 and 0.04 promille alcohol to the user
		TriggerServerEvent('police:server:UpdateAlcohol', (math.random(1,4)/100), 'add')
- Code cleanup and removed forgotten debugs
- Fixed heli cam not working while in police helicopter
- Added a config option to enable or disable the version checking
	- config.lua - Config.EnableVersionCheck

v1.5.0
- Added config option for new qb-inventory
	- Config.Inventory = 'new-qb-inventory'
- Fixed repair ped not working after server restart
- Removed debug print of weapon data
- Fixed issue with drawtext and evidence not working
- Fixed issue policetrash not removing items when restarting script
- Fixed Armoury not opening with new qb-inventory
- Fixed version checking not working (gsub error)
- Code cleanup not used events
- Fixed bug with synced walking if the dragged player is dead or in last stand
- Stopping escorting if the escorting officier is dead
- Added config option to set repair ped as public or bound to a jobtype
	- Config.RepairStations.locations.jobtype
- Moved phrases in repair ped to locales file
	- target.repairweapon
	- target.takeback
- Fixed taking helicopter with drawtext option

v1.5.1 (hotfix)
- Fixed cuffed player being kicked when cuffing
	- Changed server\main.lua event : police:server:AddRemove

v.1.5.2
- Fixed weapon repair not working with new inventory
- Fixed repair ped not giving weapon back with public repair stations
- Police vehicles are optionally owned now so you can store it in garage
	- Added new phrase : en.lua - success.purchased
	- Config.OwnedPoliceCars
- Changed gps name from leo-gps to leo_gps to prevent errors with new items formatting
- Added polyzone support for evidence labs


v1.5.3
- Fixed the issue with impound where cars didn't get the properties
- Fixed police garage when chosen owned cars there was a problem with setting plate numbers
- Added support for qb-minigames for breakout minigame
	- Added : Config.SkillbarConfig
- Fixed issue when cuffing player it didn't gave keys
- Fixed searching player issue
	- Added a check that the player must be cuffed to be able to search a player
- Fixed return garage vehicle logic when trying to return a vehicle with drawtext

v1.6.0
- Added speed / anpr camera's, selectable from /objectmenu
	- new prop downloadable from keymaster : hd-speedcam
	- Config.Radars changed
	- Added Config.UseMPH to use MPH or KMph as metric for speed cams
	- Added modules/cl_radar and modules/sv_radar files
- Added mobile fingerprint scanner
	- Config.FPItem = the item name of your fingerprint scanner
	- Added modules/cl_fpscanner and modules/sv_fpscanner files
	- New item : fp_scanner added (image in images folder)
	- New item : fp_document added (image in images folder)
	- New file : locales/ui.json
- New notification bridge
	- Supports : qb_notify / okok_notify / ox_lib / custom_notify
	- Added bridge/notify.lua
- Added support for qs-inventory

v1.6.1

- Made stashes and inventories configurable, the settings will be taken over from Config.StashSettings
- Fixed an issue where it gave an error for removing radars
- Fixed the issue with spawning multiple peds when restarting script
- Made using of radars configurable
	- Config.UseRadars
- Added spikestrips to /objectmenu
- Changed spawn object rotation from arrow keys to mousewheel up/down
- Fixed the issue with quick equip not giving items

v1.6.2

- Fixed an issue with spawning spike strips with objectmenu
- Added support for custom systems :
	- custom.lua file added
	- context, input and drawtext systems added with explanation of incoming data
	- added support for custom target names that are equivalent to qb-target which uses : AddBoxZone / AddTargetBone / AddGlobalPlayer / AddTargetModel / AddTargetEntity
- Fixed command /cuff not cuffing
- Fixed an issue with fingerprint scanner where the other player sees old info and could close the screen
- Fixed the holding animation not playing correctly on the escorting player
- Fixed double target option when placing spikes from objectmenu
- Added job menu
	- Config.Objects added : slowtraffic and stoptraffic objects
	- Config option added for key binding the jobmenu : Config.OpenJobMenu 
	- language added : polmenu
	- file added : client/jobmenu.lua

v1.6.3

- QBox support added 
	- Config option : Config.Framework
	- bridge/framework.lua file added
- Config.FuelSystem removed. Added native fuel setter and getters to work with every fuel system.
- Added vehicle key system supporting : qb / qbx / qs / cd_garage / other (others that use the event vehiclekeys:client:SetOwner)
- Moved qb-inputs to the bridge
- Moved all client and server notify messages to bridge
	- language added : notifyheaders
- Fixed an issue with ox_target not able to pickup spike strips
- Fixed an issue where the garage menu shows returning of a vehicle insted of new vehicle list when ownedvehicles are enabled
- Fixed impound issues with ox_lib when using drawtext
- Fixed takedna command with ox_inventory
- Fixed mobile fingerprint scanner opening while nobody is nearby and getting stuck
- Fixed an issue where the escorting animation hangs when you put someone in vehicle
- Added check to jobmenu where only leo can open it

v1.6.4

- Fixed an issue with searching players
- Moved some QBCore functions to bridge to be compatible with QBox
	- Added : bridge/framework.lua and server/framework.lua
- Fixed an issue with /takedna command
- Fixed an issue with ox_inventory not showing meta data on items after ensuring script
- Fixed jailing player issue where you couldn't send player to jail

v1.6.5

- New feature bodycam added
	- added bodycam prop to hd-speedcam, download and update from your keymaster
	- added new item : bodycam (item image in images folder)
	- added bodycam item to armoury
	- new command : bcmenu , this shows active bodycams list
	- added files modules\cl_bodycam and modules\sv_bodycam
	- changed fxmanifest.lua file
- Added ziptie to armoury items
- Fixed slot issue in config armoury items for item 19 where slot was still 18
- Added support for new ps-inventory with new event names
	- don't forget to update your ps-inventory with new event names
- Added Custom.Notify into custom.lua file
- Fixed issue with qs-inventory not able to search other player
- Fixed an issue with jail time not getting the input amount
- Changed inventory images with better ones (thnx @semfx)
	- Change your images in your inventory with the new ones in hd-policejob\images folder
- Added option to uncuff without cuffkey items
	- set usekeytouncuff in Config.CuffItems to false to be able to uncuff with the same item


v1.6.6

- New GPS UI system rewritten from scratch
	- added client/gps.lua
	- added server/gps.lua
	- added strings in locales/en.lua and ui.json
- Added option to set plate for temporary vehicles as CallSign number
	- config option : Config.SetCSAsPlate
- custom.lua was escrowed, it's open now
- Radar system changes
	- Added info drawtext while placing radar zone
	- Option to remove the radar and zone with target
- Added tgiann-inventory support
- Fixed issue with bodycam attaching to wrong bodypart
- Fixed issue with robplayer not working in new qb-inventory
- Fixed an issue with escorting animation playing when the player nearby is not handcuffed or dead
- Added trunk items feature to new-qb-inventory
	- There is an error on the current inventory, i have sended a PR for this: https://github.com/qbcore-framework/qb-inventory/pull/592
	Please add comments to the PR so it will get merged for future use

v1.6.7

- Removed command : objmenu. You can start objectmenu from jobmenu [F6]
- Added lab support for new-qb-inventory
	- Read the documentation ( https://hi-dev.gitbook.io/hi-dev-docs/documentation/hd-policejob/new-qb-inventory )
- Added recording and playing of bodycams
	- Command : bcrecord
	- Added webhooks on top of server\main.lua
	- System will automatically create table in database : hd_bcrecords
	- From F6 menu you can play, remove recordings
	- Added Config.CamRecordOpt for recording options
- Fixed issue with repair peds not always showing
	- Spawning repairpeds from server side
	- Suppressed the warnings for GetNetworkEntity
- Added option to change clip scale 
	- Added Config.Blip option
- Fixed the issue with gps not removing when player quits
- Fixed issue with lab not showing evidence bags for multiple inventory systems
- Fixed an issue with escorting animation while the player is dead or in last stand
- Fixed other player inventory not opening with codem-inventory
- Fixed custom vehiclekeys was not triggering the function from custom.lua
- Fixed an issue when putting player out of vehicle
- Fixed an issue with UI not getting the translations
- Updated all language files with missing phrases (not translated)

v1.6.8

- Replaced deprecated qb-management addmoney exports with qb-banking
- Fixed an issue with garage not giving owned vehicle when price is 0
- Fixed an issue with evidence stashes not opening when too close to eachother
- Fixed an issue with weapon repair for ox_inventory, ped was taking gun but not repairing and giving back
- Fixed an issue that active blips were not removed when player quits
- Added Config.GPS.waittime to be able to configure refresh times
- Fixed an issue with ox_inventory not giving trunk items
- Added back buttons for F6 JobMenu items
- Added put in and take out of vehicle into F6 JobMenu
- Added option to view static cameras in F6 JobMenu
- Fixed an issue with opening inventory while handcuffed
- Fixed double header title in ox_lib
- Added GSR testing option in F6 jobmenu
- Changed Config.Locations['vehspawn'] where you can add multiple spawn locations for 1 department

 v1.6.9

- Fixed an issue with trunk items not working
- Fixed an error with GPS when player dropped
- Fixed an issue with garage not returning cars when using qbcore + ox_inventory
- Changeg the robplayer logic, it is opening the other inventory now
- Garage is now divided into job names and different trunk items for different cars
	- Inside Config.Locations['vehicle'] you have the option : job = 'police' etc.
	- Inside Config.AuthorizedVehicles added the option : trunk = 'default' etc. for the trunk items
	- Config.CarItems divided into different trunk loadouts
	- When you configure a vehicle with trunk = 'default' it will set the trunkitems to Config.CarItems['default']

v1.7.0

- Fixed issue with not able to open inventory or search other player when they are cuffed and uncuffed.
- Added peds for armoury when you use target option
	- changed Config.Locations['armoury']
	- added loc = for locations and ped = for ped models
- Fixed a bug when escorted player dies the player keeps walking while dead
- Added flagging and unflagging plates in jobmenu under traffic menu
- Fixed static camera not showing from jobmenu and giving error that camera doesn't exist
- Removed unused and moved commands from server/main.lua
- Code cleanup from unused events

v1.7.1

- Fixed issue with armoury where the vector for polyzone was not found
- Fixed an issue with codem-inventory not opening police trash bin
- Added a check if the player is uncuffing while escorting, it will de-escort first
- Fixed an issue with helicopters not spawning when you have enabled ownedcars
- Added armoury shop for codem-inventory
- Moved all progressbar actions to bridge
- Added AK47 inventory support

v1.7.2

- Fixed warning in js file while recording
- Made armoury ped optional
	- Changed Config.Locations[armoury] and added useped = bool
- Players can't open inventory in ox_inventory while cuffed
- Added support for tgiann-inventory to open shop
- Fixed an notification error on bodycam when player was not found
- Added option for GPS to show name after callsign
	- Config.GPS.showname , if true it will show officier name
- Fixed issue that GPS was still useable while config option was false

v1.7.3

- Fixed issue with flagged plates not working correctly
- Secured fingerprint events
- Fixed an issue with tgiann-inventory kicking when opening shop
- Code cleanup
- Added logging
	- Edit server/logs.lua file for webhooks

v1.7.4

- Fixed issue with impound and depot vehicle
	- commands for impound and depot has been removed
	- added tow vehicle inside polmenu -> actions -> Tow Vehicle
- Code improvements for repair peds
- Fixed an issue with bodycam giving error that not a correct event is sended
- Fixed an issue with rob player as civilian
	- added language phrase in error : handsup = 'The hands are not up or cuffed!'
- Fixed codem-inventory issues
	- police trash error when trying to clear
	- Armoury shop not opening
- GPS is made configurable for multiple jobs
	- Added Config.GPSEnabledJobs, you can add here any jobtype you want them to use GPS and add colors in Config.BlipColors

v1.8.0

- Changed location of config file to shared/config
- Changed garage menu
	- Added garages.lua inside shared folder where you can setup your garages
	- Garage related config items moved to shared/garages.lua file
	- UI changes
		- Changed index.html
		- Changed main.css
		- Changed script.js
- Removed unused code

v1.8.1

- Fixed an issue while getting in a vehicle gives the error : attempt to get length of a nil value (field 'PoliceHelicopters')
- Removed a debug print for creating repair peds
- GPS optimizations : server and client side
	- Added Config.BlipSprite where you can setup your own blip sprites
- Changed aremoury logic
	- Added job names and grades per job so you can configure items based on job names and grades
	- There is a fallback for the old configs so you don't need to change the items when you don't want to use this.
