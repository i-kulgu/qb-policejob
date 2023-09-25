# Warning : new version is available from tebex : https://i-kulgu.tebex.io/package/5921009
## This version on github is only for reference and not a working version without the bridge !

# qb-policejob
Police Job for QB-Core Framework :police_officer:

This is an edited version of the official qb-policejob with added features.

For help, questions and other resources you can join my discord : [Hi-Dev](https://discord.com/invite/pSJPPctrNx)

If you like my work and want to support me : [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/F2F3EU9ME)

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

### Existing
- Classical requirements like on duty/off duty, clothing, vehicle, stash etc.
- Citizen ID based armory (Whitelisted)
- Fingerprint test
- Evidence locker (stash)
- Whitelisted vehicles
- Speed radars across the map
- Stormram
- Impounding player vehicle (permanent / for an amount of money)
- Integrated jail system
- Bullet casings
- GSR
- Blood drop
- Evidence bag & Money bag
- Police radar
- Handcuff as an item (Can used via command too. Check Commands section.)
- Emergency services can see each other on map

## Installation

- Copy images from images folder to your inventory images folder

- Add the below items to your qb-core\shared\items.lua

```
	['broken_handcuffs'] 			 = {['name'] = 'broken_handcuffs', 			    ['label'] = 'Broken Handcuffs', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'broken_handcuffs.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'It\'s broken, maybe you can repair it?'},
	['cuffkeys'] 				 	 = {['name'] = 'cuffkeys', 			    		['label'] = 'Cuff Keys', 				['weight'] = 75, 		['type'] = 'item', 		['image'] = 'cuffkeys.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Set them free !'},
	['ziptie'] 				 	 	 = {['name'] = 'ziptie', 			    		['label'] = 'ZipTie', 					['weight'] = 50, 		['type'] = 'item', 		['image'] = 'ziptie.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Comes in handy when people misbehave. Maybe it can be used for something else?'},
	['flush_cutter'] 				 = {['name'] = 'flush_cutter', 			    	['label'] = 'Flush Cutter', 			['weight'] = 50, 		['type'] = 'item', 		['image'] = 'flush_cutter.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Comes in handy when you want to cut zipties..'},
	['bolt_cutter'] 				 = {['name'] = 'bolt_cutter', 			    	['label'] = 'Bolt Cutter', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'bolt_cutter.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Wanna cut some metal items ?'},
        ['leo-gps']                         = {['name'] = 'leo-gps',                           ['label'] = 'LEO GPS',                   ['weight'] = 2000,         ['type'] = 'item',         ['image'] = 'leo-gps.png',                 ['unique'] = true,          ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Show your gps location to others'},


```

- Update the filled evidence bag in you qb-core/shared
````
    ['filled_evidence_bag']             = {['name'] = 'filled_evidence_bag',               ['label'] = 'Evidence Bag',              ['weight'] = 200,          ['type'] = 'item',         ['image'] = 'evidence.png',                ['unique'] = true,          ['useable'] = true,     ['shouldClose'] = true,     ['combinable'] = nil,   ['description'] = 'A filled evidence bag to see who committed the crime >:('},
````


- Update the filled evidence bag in your qb-inventory/html/js/app.js
```
else if (itemData.name == "filled_evidence_bag") {
    $(".item-info-title").html("<p>" + itemData.label + "</p>");
        if (itemData.info.type == "casing") {
            if (itemData.info.evidenceNote != null) {
                $(".item-info-description").html(
                    "<p><strong>Evidence material: </strong><span>" + itemData.info.label + "</span></p>" +
                    "<p><strong>Type number: </strong><span>" + itemData.info.ammotype + "</span></p>" +
                    "<p><strong>Caliber: </strong><span>" + itemData.info.ammolabel + "</span></p>" +
                    "<p><strong>Serial: </strong><span>" + itemData.info.serie + "</span></p>" +
                    "<p><strong>Crime scene: </strong><span>" + itemData.info.street + "</span></p>" +
                    "<br /><p><strong>Note Writer: </strong><span>" + itemData.info.noteWrite + "</span></p>" +
                    "<p><strong>Note: </strong><span>" + itemData.info.evidenceNote + "</span></p>"
                );
            } else {
                $(".item-info-description").html(
                    "<p><strong>Evidence material: </strong><span>" + itemData.info.label + "</span></p>" +
                    "<p><strong>Type number: </strong><span>" + itemData.info.ammotype + "</span></p>" +
                    "<p><strong>Caliber: </strong><span>" + itemData.info.ammolabel + "</span></p>" +
                    "<p><strong>Serial: </strong><span>" + itemData.info.serie + "</span></p>" +
                    "<p><strong>Crime scene: </strong><span>" + itemData.info.street + "</span></p>" +
                    "<br /><p>" + itemData.description +"</p>"
                );
            }
        } else if (itemData.info.type == "blood") {
            if (itemData.info.evidenceNote != null) {
                $(".item-info-description").html(
                    "<p><strong>Evidence material: </strong><span>" + itemData.info.label +"</span></p>" +
                    "<p><strong>Blood type: </strong><span>" + itemData.info.bloodtype +"</span></p>" +
                    "<p><strong>DNA Code: </strong><span>" + itemData.info.dnalabel +"</span></p>" +
                    "<p><strong>Crime scene: </strong><span>" + itemData.info.street +"</span></p>" +
                    "</br><p><strong>Note Writer: </strong><span>" + itemData.info.noteWrite + "</span></p>" +
                    "<p><strong>Note: </strong><span>" + itemData.info.evidenceNote + "</span></p>"
                );
            } else {
                $(".item-info-description").html(
                    "<p><strong>Evidence material: </strong><span>" + itemData.info.label +"</span></p>" +
                    "<p><strong>Blood type: </strong><span>" + itemData.info.bloodtype +"</span></p>" +
                    "<p><strong>DNA Code: </strong><span>" + itemData.info.dnalabel +"</span></p>" +
                    "<p><strong>Crime scene: </strong><span>" + itemData.info.street +"</span></p>" +
                    "<br /><p>" + itemData.description + "</p>"
                );
            }
        } else if (itemData.info.type == "fingerprint") {
            if (itemData.info.evidenceNote != null) {
                $(".item-info-description").html(
                    "<p><strong>Evidence material: </strong><span>" + itemData.info.label + "</span></p>" +
                    "<p><strong>Fingerprint: </strong><span>" + itemData.info.fingerprint + "</span></p>" +
                    "<p><strong>Crime Scene: </strong><span>" + itemData.info.street + "</span></p>" +
                    "</br><p><strong>Note Writer: </strong><span>" + itemData.info.noteWrite + "</span></p>" +
                    "<p><strong>Note: </strong><span>" + itemData.info.evidenceNote + "</span></p>"
                );
            } else {
                $(".item-info-description").html(
                    "<p><strong>Evidence material: </strong><span>" + itemData.info.label + "</span></p>" +
                    "<p><strong>Fingerprint: </strong><span>" + itemData.info.fingerprint + "</span></p>" +
                    "<p><strong>Crime Scene: </strong><span>" + itemData.info.street + "</span></p>" +
                    "<br /><p>" + itemData.description + "</p>"
                );
            }

        } else if (itemData.info.type == "dna") {
            if (itemData.info.evidenceNote != null) {
                $(".item-info-description").html(
                    "<p><strong>Evidence material: </strong><span>" + itemData.info.label + "</span></p>" +
                    "<p><strong>DNA Code: </strong><span>" + itemData.info.dnalabel + "</span></p>" +
                    "</br><p><strong>Note Writer: </strong><span>" + itemData.info.noteWrite + "</span></p>" +
                    "<p><strong>Note: </strong><span>" + itemData.info.evidenceNote + "</span></p>"
                );
            } else {
                $(".item-info-description").html(
                    "<p><strong>Evidence material: </strong><span>" + itemData.info.label + "</span></p>" +
                    "<p><strong>DNA Code: </strong><span>" + itemData.info.dnalabel + "</span></p>" +
                    "<br /><p>" + itemData.description + "</p>"
                );
            }
        }
    }
```

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-management](https://github.com/qbcore-framework/qb-management) - For the boss/gang menu
- [qb-garages](https://github.com/qbcore-framework/qb-garages) - For the vehicle spawner
- [qb-clothing](https://github.com/qbcore-framework/qb-clothing) - For the locker room
- [qb-phone](https://github.com/qbcore-framework/qb-phone) - For the MEOS app and notifications etc.
- [qb-smallresources](https://github.com/qbcore-framework/qb-smallresources) - qb-log was added to qb-smallresources
- [qb-menu](https://github.com/qbcore-framework/qb-menu) - For the vehicle menus
- [qb-input](https://github.com/qbcore-framework/qb-input) - For accessing evidence stashes

### Commands
https://docs.qbcore.org/qbcore-documentation/qbcore-resources/qb-policejob#commands
