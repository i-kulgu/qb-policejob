local Translations = {
    error = {
        license_already = 'Speler heeft al een licentie',
        error_license = 'De speler heeft die licentie niet',
        no_camera = 'Camera bestaat niet',
        blood_not_cleared = 'Bloed NIET gewist',
        bullet_casing_not_removed = 'Kogelhulzen NIET verwijderd',
        none_nearby = 'Niemand in de buurt!',
        canceled = 'Geannuleerd..',
        time_higher = 'De tijd moet hoger zijn dan 0',
        amount_higher = 'Bedrag moet hoger zijn dan 0',
        vehicle_cuff = 'Je kunt iemand in een voertuig niet boeien',
        vehicle_tie = 'Je kunt iemand niet vastbinden in een voertuig',
        no_cuff = 'Je hebt geen handboeien bij je',
        no_ziptie = 'Je hebt geen ziptie bij je',
        no_knife = 'Je hebt geen mes bij je',
        no_cutter = 'Je hebt geen betonschaar bij je',
        no_impound = 'Er zijn geen in beslag genomen voertuigen',
        no_spikestripe = 'Kan geen spikestrips meer plaatsen',
        error_license_type = 'Ongeldig licentietype',
        rank_license = 'U bent niet hoog genoeg om een ​​licentie te verlenen',
        revoked_license = 'Er is een licentie ingetrokken',
        rank_revoke = 'U bent niet hoog genoeg om een ​​vergunning in te trekken',
        on_duty_police_only = 'Alleen voor dienstdoende politie',
        vehicle_not_flag = 'Voertuig niet gemarkeerd',
        not_towdriver = 'Geen sleepwagenchauffeur',
        not_lawyer = 'Persoon is geen advocaat',
        no_anklet = 'Deze persoon heeft geen enkelbandje om.',
        have_evidence_bag = 'U moet een leeg zakje voor bewijsmateriaal bij u hebben',
        no_driver_license = 'Geen rijbewijs',
        not_cuffed_dead = 'De burger is niet geboeid of dood',
        fine_yourself = 'Je kunt jezelf niet bekeuren',
        not_online = 'Deze persoon is niet online',
        clearspawnpoint = 'De spawn-locatie is geblokkeerd, maak spawn locatie vrij',
        alradyhaveheli = 'Je hebt al een helikopter!',
        already_cuffed = 'De speler is al geboeid!',
        where_looking = 'Waar kijk je naar? Blijf aan de juiste kant!',
        cant_cut = 'Hiermee kun je het item niet openen!',
        not_enough_money = 'Je hebt niet genoeg geld bij je!',
        break_out = 'De verdachte is ontsnapt uit de handboeien !'
    },
    success = {
        uncuffed = 'Je bent ontboeit',
        untied = 'Je bent losgemaakt',
        granted_license = 'U heeft een vergunning gekregen',
        grant_license = 'U heeft een vergunning verleend',
        revoke_license = 'U heeft een vergunning ingetrokken',
        tow_paid = 'Je hebt  €500 betaald',
        blood_clear = 'Bloed gewist',
        bullet_casing_removed = 'Kogelhulzen verwijderd...',
        anklet_taken_off = 'Je enkeltracker is afgedaan.',
        took_anklet_from = 'Je hebt %{firstname} %{lastname} tracker afgedaan',
        put_anklet = 'Je hebt een enkelbandje om gedaan.',
        put_anklet_on = 'Je hebt een enkelbandje om gedaan bij %{firstname} %{lastname}',
        vehicle_flagged = 'Voertuig %{plate} is gemarkeerd voor %{reason}',
        impound_vehicle_removed = 'Voertuig uit beslag genomen!',
        impounded = 'Voertuig in beslag genomen',
        beingonduty = 'Je bent nu indienst',
        beingoffduty = 'Je bent nu uit dienst',
 },
    info = {
        mr = 'Dhr.',
        mrs = 'Mevr.',
        impound_price = 'Prijs die de speler betaalt om het voertuig uit de inbeslagname te halen (kan 0 zijn)',
        plate_number = 'Kentekenplaatnummer',
        flag_reason = 'Reden voor markeren voertuig',
        camera_id = 'Camera-ID',
        callsign_name = 'Naam van je roepnaam',
        poobject_object = 'Objecttype om te spawnen of \'verwijderen\' om te verwijderen',
        player_id = 'ID van speler',
        citizen_id = 'Burger-ID van speler',
        dna_sample = 'DNA-monster',
        jail_time = 'Tijd dat ze in de gevangenis moeten zitten',
        jail_time_no = 'De gevangenisstraf moet hoger zijn dan 0',
        license_type = 'Licentietype (bestuurder/wapen/jacht)',
        ankle_location = 'Ankle Tracker-locatie',
        cuff = 'Je bent geboeid!',
        tied = 'Je bent gebonden!',
        cuffed_walk = 'Je bent geboeid, maar je kunt lopen',
        vehicle_flagged = 'Voertuig %{vehicle} is gemarkeerd voor: %{reason}',
        unflag_vehicle = 'Voertuig %{vehicle} is niet gemarkeerd',
        tow_driver_paid = 'Je hebt de chauffeur van de sleepwagen betaald',
        paid_lawyer = 'Je hebt een advocaat betaald',
        vehicle_taken_depot = 'Voertuig in depot genomen voor €%{price}',
        vehicle_seized = 'Voertuig in beslag genomen',
        stolen_money = 'Je hebt gestolen $%{stolen}',
        cash_robbed = 'Je bent beroofd van $%{money}',
        driving_license_confiscated = 'Uw rijbewijs is ingenomen',
        cash_confiscated = 'Uw geld is in beslag genomen',
        being_searched = 'Je wordt gefouilleerd',
        cash_found = '$%{cash} gevonden op de burger',
        sent_jail_for = 'Je stuurde de persoon naar de gevangenis voor %{time} maanden',
        fine_received = 'U heeft een boete gekregen van $%{fine}',
        blip_text = 'Politie alarm - %{value}',
        jail_time_input = 'Tijd in de gevangenis',
        submit = 'Indienen',
        time_months = 'Tijd in maanden',
        bill = 'Rekening',
        amount = 'Hoeveelheid',
        police_plate = 'POLI', --Should only be 4 characters long
        vehicle_info = 'Motor: %{value} % | Brandstof: %{value2} %',
        evidence_stash = 'Bewijs Stash | %{value}',
        slot = 'Kluis nummer (1,2,3)',
        current_evidence = 'Stash #%{value} | Lade #%{value2}',
        general_current_evidence = 'Algemeen bewijsmateriaal - #%{value}',
        on_duty = '[E] - Ga in dienst',
        off_duty = '[E] - Ga buiten dienst',
        onoff_duty = '~g~In~s~/~r~Uit~s~ dienst',
        stash = 'Stash %{value}',
        delete_spike = '[~r~E~s~] Spikestrip verwijderen',
        close_camera = 'Camera sluiten',
        bullet_casing = '[~g~G~s~] Kogel behuizing %{value}',
        casing = 'Kogel behuizing',
        blood = 'Bloed',
        blood_text = '[~g~G~s~] Bloed %{value}',
        fingerprint_text = '[G] Vingerafdruk',
        fingerprint = 'Vingerafdruk',
        store_heli = '[E] Helikopter opslaan',
        take_heli = '[E] Helikopter nemen',
        impound_veh = '[E] - Voertuig in beslag name',
        store_veh = '[E] - Voertuig opslaan',
        armory = 'wapenkamer',
        enter_armory = '[E] wapenkamer',
        finger_scan = 'Scannen van vingerafdrukken',
        scan_fingerprint = '[E] Vingerafdruk scannen',
        trash = 'Afval',
        trash_enter = '[E] Prullenbak',
        stash_enter = '[E] Ga naar Locker',
        target_location = 'De locatie van %{firstname} %{lastname} is gemarkeerd op je kaart',
        anklet_location = 'Enkelband locatie',
        new_call = 'Nieuwe oproep',
        officer_down = 'Officier %{lastname} | %{callsign} omlaag',
        fine_issued = 'Er is met succes een boete opgelegd aan de overtreder',
        received_fine = 'De Staatsschuldinvordering heeft de verschuldigde boetes automatisch geïncasseerd...'
    },
    evidence = {
        red_hands = 'Rode handen',
        wide_pupils = 'Brede pupillen',
        red_eyes = 'Rode ogen',
        weed_smell = 'Ruikt naar wiet',
        gunpowder = 'Buskruit in kleding',
        chemicals = 'ruikt chemisch',
        heavy_breathing = 'Ademt zwaar',
        sweat = 'Zweet veel',
        handbleed = 'Bloed aan handen',
        confused = 'Verward',
        alcohol = 'Ruikt naar alcohol',
        heavy_alcohol = 'Ruikt erg naar alcohol',
        agitated = 'Geagiteerd - tekenen van methgebruik',
        serial_not_visible = 'Serienummer niet zichtbaar...',
    },
    menu = {
        garage_title = 'Politie voertuigen',
        close = '⬅ Menu sluiten',
        impound = 'In beslag genomen voertuigen',
        pol_impound = 'Politie in beslag genomen',
        pol_garage = 'Politiegarage',
        pol_armory = 'Wapenkamer van de politie',
        evd_drawer_h = 'Bewijslade',
        evd_drawer_b = 'U krijgt toegang tot de lade door een bewijsnummer in te voeren',
        evd_stash_h = 'Algemeen bewijsmateriaal',
        evd_stash_b = 'De voorraad bewijs die u in het algemeen kunt gebruiken',
        dty_onduty = 'In functie',
        dty_offduty = 'Buiten dienst',
        dty_beonduty = 'Meld u aan voor dienst',
        dty_beoffduty = 'Meld u af voor dienst',
        spawn_heli = 'Helikopter nemen',
        remove_heli = 'Helikopter verwijderen'
    },
    email = {
        sender = 'Centraal Justitieel incasso Bureau',
        subject = 'Aanmaning',
        message = 'Beste %{value}. %{value2}, <br /><br /> het Centraal Justitieel incasso Bureau (CJIB) heeft boetes in rekening gebracht die u van de politie heeft gekregen.<br />Het bedrag <strong>$%{value3}</strong> is automatisch van uw rekening afgeschreven.<br /><br />Hoogachtend,<br /> CJIB',
    },
    commands = {
        place_spike = 'Spikestrip plaatsen (Police Only)',
        license_grant = 'Licentie verlenen aan iemand',
        license_revoke = 'Een licentie van iemand intrekken',
        place_object = 'Een object plaatsen/verwijderen (Police Only)',
        cuff_player = 'Boei persoon (Police Only)',
        escort = 'Escorteer burger',
        callsign = 'Geef jezelf een roepnummer',
        clear_casign = 'Maak het gebied vrij van kogelhulzen (Police Only)',
        jail_player = 'Stuur burger naar de gevangenis (Police Only)',
        unjail_player = 'Haal burger uit de gevangenis (Police Only)',
        clearblood = 'Maak het gebied vrij van bloed (Police Only)',
        seizecash = 'Neem contanten in beslag (Police Only)',
        softcuff = 'boei de burger spannend (Police Only)',
        camera = 'Bekijk beveiligings beelden (Police Only)',
        flagplate = 'Markeer een kenteken (Police Only)',
        unflagplate = 'onmarkeer een kenteken (Police Only)',
        plateinfo = 'Trek een kenteken na (Police Only)',
        depot = 'Neem in beslag met een prijs (Police Only)',
        impound = 'Neem voertuig in beslag (Police Only)',
        paytow = 'betaal sleepwagenchauffeur (Police Only)',
        paylawyer = 'Betaal advocaat (Police, Judge Only)',
        anklet = 'Bevestig enkelband (Police Only)',
        ankletlocation = 'Krijg de locantie van de enkelband',
        removeanklet = 'Verwijder enkelband (Police Only)',
        drivinglicense = 'Neem rijbewijs in beslag (Police Only)',
        takedna = 'Neem een DNA monster af bij persoon (Leeg bewijszakje nodig) (Police Only)',
        police_report = 'Politie rapport',
        message_sent = 'Bericht verzonden',
        civilian_call = 'Burger belt',
        emergency_call = 'Nieuwe 112 oproep',
        fine = 'Bekeur een burger'
    },
    progressbar = {
        blood_clear = 'Verwijderen van het bloed...',
        bullet_casing = 'Kogelhulzen aan het verwijderen..',
        robbing = 'Burger aan het beroven...',
        place_object = 'object aan het plaatsen..',
        remove_object = 'object verwijden..',
        impound = 'Voertuig in beslag nemen..',
    },
}

if GetConvar('qb_locale', 'en') == 'nl' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
