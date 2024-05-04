# Warning : new version is available for FREE from tebex : https://i-kulgu.tebex.io/

# qb-policejob
Police Job for QB-Core Framework :police_officer:

This is an edited version of the official qb-policejob with added features.

For help, questions and other resources you can join my discord : [Hi-Dev](https://discord.gg/KakBc3BB5P)

If you like my work and want to support me : [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/F2F3EU9ME)

## Updates

See Changelog.md file.

## Installation

- Copy images from images folder to your inventory images folder

- Add the below items to your items list

### QBCore
```
	['broken_handcuffs'] 			 = {['name'] = 'broken_handcuffs', 			    ['label'] = 'Broken Handcuffs', 		['weight'] = 100, 		['type'] = 'item', 		['image'] = 'broken_handcuffs.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'It\'s broken, maybe you can repair it?'},
	['cuffkeys'] 				 	 = {['name'] = 'cuffkeys', 			    		['label'] = 'Cuff Keys', 				['weight'] = 75, 		['type'] = 'item', 		['image'] = 'cuffkeys.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Set them free !'},
	['ziptie'] 				 	 	 = {['name'] = 'ziptie', 			    		['label'] = 'ZipTie', 					['weight'] = 50, 		['type'] = 'item', 		['image'] = 'ziptie.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Comes in handy when people misbehave. Maybe it can be used for something else?'},
	['flush_cutter'] 				 = {['name'] = 'flush_cutter', 			    	['label'] = 'Flush Cutter', 			['weight'] = 50, 		['type'] = 'item', 		['image'] = 'flush_cutter.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Comes in handy when you want to cut zipties..'},
	['bolt_cutter'] 				 = {['name'] = 'bolt_cutter', 			    	['label'] = 'Bolt Cutter', 				['weight'] = 50, 		['type'] = 'item', 		['image'] = 'bolt_cutter.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Wanna cut some metal items ?'},
    ['leo-gps']                         = {['name'] = 'leo-gps',                           ['label'] = 'LEO GPS',                   ['weight'] = 200,         ['type'] = 'item',         ['image'] = 'leo-gps.png',                 ['unique'] = true,          ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'Show your gps location to others'},
    ['alcoholtester']                   = {['name'] = 'alcoholtester',                     ['label'] = 'Alcohol Tester',            ['weight'] = 400,         ['type'] = 'item',         ['image'] = 'alcoholtester.png',                 ['unique'] = true,          ['useable'] = true,      ['shouldClose'] = true,      ['combinable'] = nil,   ['description'] = 'For testing purposes..'},
```

### ox_inventory
```
    ["broken_handcuffs"] = { label = "Broken handcuffs", weight = 100, stack = true, close = true, description = "It's broken, maybe you can repair it?", client = {image = "broken_handcuffs.png",}},
    ["cuffkeys"] = { label = "Cuff Keys", weight = 75, stack = true, close = true, description = "Set them free !", client = {image = "cuffkeys.png",}},
    ["ziptie"] = { label = "Ziptie", weight = 50, stack = true, close = true, description = "Comes in handy when people misbehave. Maybe it can be used for something else?", client = {image = "ziptie.png",}},
    ["flush_cutter"] = { label = "Flush Cutter", weight = 50, stack = true, close = true, description = "Comes in handy when you want to cut zipties..", client = {image = "flush_cutter.png",}},
    ["bolt_cutter"] = { label = "Bolt Cutter", weight = 50, stack = true, close = true, description = "Wanna cut some metal items ?", client = {image = "bolt_cutter.png",}},
    ["leo-gps"] = { label = "LEO GPS", weight = 200, stack = true, close = true, description = "Show your gps location to others", client = {image = "leo-gps.png",}},
    ["alcoholtester"] = { label = "Alcohol Tester", weight = 400, stack = false, close = true, description = "For testing purposes..", client = {image = "alcoholtester.png",}},
```

- Update the filled evidence bag in you qb-core/shared
````
    ['filled_evidence_bag']             = {['name'] = 'filled_evidence_bag',               ['label'] = 'Evidence Bag',              ['weight'] = 200,          ['type'] = 'item',         ['image'] = 'evidence.png',                ['unique'] = true,          ['useable'] = true,     ['shouldClose'] = true,     ['combinable'] = nil,   ['description'] = 'A filled evidence bag to see who committed the crime >:('},
````


- Update the filled evidence bag in your qb-inventory/html/js/app.js

### OLD :
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

### NEW: 
```
        case "filled_evidence_bag":
            if (itemData.info.type == "casing") {
                if (itemData.info.evidenceNote != null) {
                    return `<p><strong>Evidence material: </strong><span>${itemData.info.label}</span></p>
                    <p><strong>Type number: </strong><span>${itemData.info.ammotype}</span></p>
                    <p><strong>Caliber: </strong><span>${itemData.info.ammolabel}</span></p>
                    <p><strong>Serial Number: </strong><span>${itemData.info.serie}</span></p>
                    <p><strong>Crime scene: </strong><span>${itemData.info.street}</span></p>
                    <p><strong>Note Writer: </strong><span>${itemData.info.noteWrite}</span></p>
                    <p><strong>Note: </strong><span>${itemData.info.evidenceNote}</span></p>`;
                } else {
                    return `<p><strong>Evidence material: </strong><span>${itemData.info.label}</span></p>
                    <p><strong>Type number: </strong><span>${itemData.info.ammotype}</span></p>
                    <p><strong>Caliber: </strong><span>${itemData.info.ammolabel}</span></p>
                    <p><strong>Serial Number: </strong><span>${itemData.info.serie}</span></p>
                    <p><strong>Crime scene: </strong><span>${itemData.info.street}</span></p><br /><p>${itemData.description}</p>`;
                }
            } else if (itemData.info.type == "blood") {
                if (itemData.info.evidenceNote != null) {
                    return `<p><strong>Evidence material: </strong><span>${itemData.info.label}</span></p>
                    <p><strong>Blood type: </strong><span>${itemData.info.bloodtype}</span></p>
                    <p><strong>DNA Code: </strong><span>${itemData.info.dnalabel}</span></p>
                    <p><strong>Crime scene: </strong><span>${itemData.info.street}</span></p>
                    <p><strong>Note Writer: </strong><span>${itemData.info.noteWrite}</span></p>
                    <p><strong>Note: </strong><span>${itemData.info.evidenceNote}</span></p>`;
                } else {
                    return `<p><strong>Evidence material: </strong><span>${itemData.info.label}</span></p>
                    <p><strong>Blood type: </strong><span>${itemData.info.bloodtype}</span></p>
                    <p><strong>DNA Code: </strong><span>${itemData.info.dnalabel}</span></p>
                    <p><strong>Crime scene: </strong><span>${itemData.info.street}</span></p><br /><p>${itemData.description}</p>`;
                }
            } else if (itemData.info.type == "fingerprint") {
                if (itemData.info.evidenceNote != null) {
                    return `<p><strong>Evidence material: </strong><span>${itemData.info.label}</span></p>
                    <p><strong>Fingerprint: </strong><span>${itemData.info.fingerprint}</span></p>
                    <p><strong>Crime Scene: </strong><span>${itemData.info.street}</span></p><br />
                    <p><strong>Note Writer: </strong><span>${itemData.info.noteWrite}</span></p>
                    <p><strong>Note: </strong><span>${itemData.info.evidenceNote}</span></p>`;
                } else {
                    return `<p><strong>Evidence material: </strong><span>${itemData.info.label}</span></p>
                    <p><strong>Fingerprint: </strong><span>${itemData.info.fingerprint}</span></p>
                    <p><strong>Crime Scene: </strong><span>${itemData.info.street}</span></p><br /><p>${itemData.description}</p>`;
                }
            } else if (itemData.info.type == "dna") {
                if (itemData.info.evidenceNote != null) {
                    return `<p><strong>Evidence material: </strong><span>${itemData.info.label}</span></p>
                    <p><strong>DNA Code: </strong><span>${itemData.info.dnalabel}</span></p>
                    <p><strong>Note Writer: </strong><span>${itemData.info.noteWrite}</span></p>
                    <p><strong>Note: </strong><span>${itemData.info.evidenceNote}</span></p>`;
                } else {
                    return `<p><strong>Evidence material: </strong><span>${itemData.info.label}</span></p>
                    <p><strong>DNA Code: </strong><span>${itemData.info.dnalabel}</span></p><br /><p>${itemData.description}</p>`;
                }
            }
```

## OX Inventory

- Go to ox_inventory/module/bridge/qb/client.lua
- Find the next event: "police:client:GetCuffed"
- Change it with :

```
RegisterNetEvent('police:client:SetCuffState', function(bool)
	PlayerData.cuffed = bool
	LocalPlayer.state:set('invBusy', PlayerData.cuffed, false)
	if not PlayerData.cuffed then return end
	Weapon.Disarm()
end)
```

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)

### Commands
https://docs.qbcore.org/qbcore-documentation/qbcore-resources/qb-policejob#commands
