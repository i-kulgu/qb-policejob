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
