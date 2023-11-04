# Warning : new version is available from tebex : https://i-kulgu.tebex.io/

# qb-policejob
Police Job for QB-Core Framework :police_officer:

This is an edited version of the official qb-policejob with added features.

For help, questions and other resources you can join my discord : [Hi-Dev](https://discord.com/invite/pSJPPctrNx)

If you like my work and want to support me : [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/F2F3EU9ME)

## Updates

See Changelog.md file.

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
