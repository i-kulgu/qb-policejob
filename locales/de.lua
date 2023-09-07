local Translations = {
    error = {
        license_already = 'Bürger hat bereits diese Lizenz',
        error_license = 'Bürger hat diese Lizenz nicht',
        no_camera = 'Kamera existiert nicht',
        blood_not_cleared = 'Blut NICHT entfernt',
        bullet_casing_not_removed = 'Patronenhülsen NICHT entfernt',
        none_nearby = 'Niemand in der nähe!',
        canceled = 'Abbruch..',
        time_higher = 'Zeit muss größer 0 sein',
        amount_higher = 'Betrag muss größer 0 sein',
        vehicle_cuff = 'Du kannst niemanden im Fahrzeug Handschellen anlegen',
        no_cuff = 'Du hast keine Handschellen bei dir',
        no_impound = 'Keine Beschlagnahmten Fahrzeuge',
        no_spikestripe = 'mehr Nagelbänder auswerfen nicht möglich',
        error_license_type = 'Falscher Lizenztyp',
        rank_license = 'Nur der Chief kann Lizenzen ausstellen',
        revoked_license = 'Dir wurde eine Lizenz entzogen',
        rank_revoke = 'Nur der Chief kann Lizenzen entziehen',
        on_duty_police_only = 'Nur Polizei im Dienst',
        vehicle_not_flag = 'Fahrzeug nicht markiert',
        not_towdriver = 'Kein Towtruck fahrer',
        not_lawyer = 'Person ist kein Anwalt',
        no_anklet = 'Diese Person hat keine Fußfessel',
        have_evidence_bag = 'Du brauchst einen Leeren-Beweisbeutel',
        no_driver_license = 'Keinen Führerschein',
        not_cuffed_dead = 'Person ist nicht gefesselt oder tot',
        fine_yourself = '???',
        not_online = "???"
    },
    success = {
        uncuffed = 'Du wurdest gefesselt',
        granted_license = 'Gratulation, dir wurde eine Lizenz ausgestellt',
        grant_license = 'Lizenz ausgestellt!',
        revoke_license = 'Lizenz entzogen!',
        tow_paid = 'Dir wurden €500 bezahlt',
        blood_clear = 'Blut entfernt',
        bullet_casing_removed = 'Patronenhülsen entfernt',
        anklet_taken_off = 'Deine Fußfessel wurde entfernt',
        took_anklet_from = 'Du hast %{firstname} %{lastname} die Fußfessel entfernt',
        put_anklet = 'Du hast der Person eine Fußfessel angelegt',
        put_anklet_on = 'Du hast %{firstname} %{lastname} eine Fußfessel angelegt',
        vehicle_flagged = 'Fahrzeug %{plate} wird zur Fahndung ausgeschrieben, Grund: %{reason}',
        impound_vehicle_removed = 'Fahrzeug aus dem Impound genommen!',
        impounded = 'Vehicle Beschlagnahmt',
    },
    info = {
        mr = 'Hr.',
        mrs = 'Fr.',
        impound_price = 'Preis um das Fahrzeug auszulösen (kann 0 sein)',
        plate_number = 'Kennzeichen',
        flag_reason = 'Grund für Markierung',
        camera_id = 'CamID',
        callsign_name = 'Spitzname',
        poobject_object = 'cone, barrier, roadsign, tent, light or delete',
        player_id = 'ID des Bürgers',
        citizen_id = 'CIV-ID des Bürgers',
        dna_sample = 'DNA Probe',
        jail_time = 'Zeit in Monaten',
        jail_time_no = 'Hafteinheiten müssen größer als 0 sein',
        license_type = 'LizenzType (driver/weapon)',
        ankle_location = 'Fußfessel Location',
        cuff = 'Du wurdest gefesselt!',
        cuffed_walk = 'Du wurdest gefesselt, aber kannst gehen',
        vehicle_flagged = 'Fahrzeug %{vehicle} Markiert, Grund: %{reason}',
        unflag_vehicle = 'Fahrzeug %{vehicle} ist nun nicht mehr Markiert',
        tow_driver_paid = 'Du hast den Abschlepper bezahlt',
        paid_lawyer = 'Du hast den Anwalt bezahlt',
        vehicle_taken_depot = 'Fahrzeug im Depot auslösbar für €%{price}',
        vehicle_seized = 'Fahrzeug beschlagnahmt!',
        stolen_money = 'Du hast €%{stolen} gestohlen',
        cash_robbed = 'Du wurdest Beraubt um €%{money}',
        driving_license_confiscated = 'Dein Führerschein wurde Konfisziert!',
        cash_confiscated = 'Dein Geld wurde Konfisziert',
        being_searched = 'Du wirst gerade durchsucht',
        cash_found = 'Dieser Bürger hat €%{cash} Bargeld',
        sent_jail_for = 'Du hast die Person für %{time} Monate inhaftiert',
        fine_received = 'Du hast eine Strafe über €%{fine} bekommen!',
        blip_text = '#POLIZEI ALARM - %{value}',
        jail_time_input = 'Haftzeit',
        submit = 'Absenden',
        time_months = 'Zeit in Monaten',
        bill = 'Rechnung',
        amount = 'Betrag',
        police_plate = 'HCPD', --Should only be 4 characters long
        vehicle_info = 'Motor: %{value} % | Tank: %{value2} %',
        evidence_stash = 'BeweisStash | %{value}',
        slot = 'Lade-Nr. (1,2,3)',
        current_evidence = '%{value} | Lade %{value2}',
        general_current_evidence = 'General Evidence Stash | #%{value}',
        on_duty = '~b~[~g~E~b~]~w~ Einstempeln',
        off_duty = '~b~[~r~E~b~]~w~ Ausstempeln',
        onoff_duty = '~g~EIN~s~/~r~AUS~s~ Dienst',
        stash = 'Stash %{value}',
        delete_spike = '~b~[~r~E~b~]~w~ Nagelband entfernen',
        close_camera = 'Kamera geschlossen',
        bullet_casing = '~b~[~r~G~b~]~w~ Patronenhülse %{value}',
        casing = 'Patronenhülse',
        blood = 'Blut',
        blood_text = '~b~[~r~G~b~]~w~ Blut %{value}',
        fingerprint_text = '~b~[~r~G~b~]~w~ Fingerabdruck',
        fingerprint = 'Fingerabdruck',
        store_heli = '~b~[~r~E~b~]~w~ Helikopter lagern',
        take_heli = '~b~[~r~E~b~]~w~ Helikopter nehmen',
        impound_veh = '~b~[~r~E~b~]~w~ Fahrzeug beschlagnahmen',
        store_veh = '~b~[~r~E~b~]~w~ Fahrzeug speichern',
        armory = 'Waffenkammer',
        enter_armory = '[~g~E~s~] Waffenkammer',
        finger_scan = 'Scannen von Fingerabdrücken',
        scan_fingerprint = '~b~[~r~E~b~]~w~ Fingerabdruck scannen',
        trash = 'Müll',
        trash_enter = '~b~[~r~E~b~]~w~ Mülleimer',
        stash_enter = '~b~[~r~E~b~]~w~ Stash öffnen',
        target_location = 'Die Lage der %{firstname} %{lastname} ist auf Ihrer Karte markiert',
        anklet_location = 'Ort des Fußkettchens',
        new_call = 'Neuer Anruf',
        officer_down = 'Polizist %{lastname} | %{callsign} am Boden',
        fine_issued = '???',
        received_fine = '???'
    },
    evidence = {
        red_hands = 'Blutige Hände',
        wide_pupils = 'Weite Pupillen',
        red_eyes = 'Rote Augen',
        weed_smell = 'Richt nach Gras',
        gunpowder = 'Schießpulver auf der Kleidung',
        chemicals = 'Richt nach Chemie',
        heavy_breathing = 'Atmet schwer',
        sweat = 'Schwitzt ein bisschen',
        handbleed = 'Blut an den Händen',
        confused = 'Verwirrt',
        alcohol = 'Richt nach Alkohol',
        heavy_alcohol = 'Richt stark nach Alkohol',
        agitated = 'Nervös - Anzeichen von Meth-Konsum',
        serial_not_visible = 'Seriennummer nicht sichtbar...',
    },
    menu = {
        garage_title = 'Polizeiwagen',
        close = '⬅ VERLASSEN',
        impound = 'Beschlagnahme Fahrzeug',
        pol_impound = 'Polizei beschlagnahmt',
        pol_garage = 'Polizeigarage',
        pol_armory = 'Waffenkammer der Polizei',
    },
    email = {
        sender = 'Justiz der Stadt HYPE-City',
        subject = 'Ausständige Zahlungen',
        message = 'Sehr geehrte/r %{value}. %{value2}, <br /><br />Die Justiz hat beschlossen Ihre Strafzettel beim Staat einzutreiben.<br />Der ausständige Betrag von <strong>$%{value3}</strong> wurde von ihrem Konto abgebucht.<br /><br />Mit freundlichen Grüßen,<br />Stadtverwaltung von HypeCity (Abteilung Justiz)',
    },
    commands = {
        place_spike = 'Platziere Nagelband (Polizei)',
        license_grant = 'Ausstellen',
        license_revoke = 'Entziehe',
        place_object = 'Ein Objekt platzieren/löschen (Polizei)',
        cuff_player = 'Festnehmen (Polizei)',
        escort = 'Eskortieren',
        callsign = 'Spitzname',
        clear_casign = 'Bereich Säubern von Patronenhülsen (Polizei)',
        jail_player = 'Ins Gefängnis (Polizei)',
        unjail_player = 'Frei lassen (Polizei)',
        clearblood = 'Von Blut gesäubert (Polizei)',
        seizecash = 'Bargeld beschlagnahmen (Polizei)',
        softcuff = 'Gefesselt (Polizei)',
        camera = 'Überwachungskamera ansehen (Polizei)',
        flagplate = 'Kennzeichen markieren (Polizei)',
        unflagplate = 'Kennzeichen markierung Entfernen (Polizei)',
        plateinfo = 'Kennzeichen überprüfen (Polizei)',
        depot = 'Impound mit Preis (Polizei)',
        impound = 'beschlagnahmen (Polizei)',
        paytow = 'Abschlepper bezahlen (Polizei)',
        paylawyer = 'Anwalt bezahlen (Polizei, Richter)',
        anklet = 'Fußfessel anbringen (Polizei)',
        ankletlocation = 'Location der Fußfessel',
        removeanklet = 'Fußfessel entfernt (Polizei)',
        drivinglicense = 'Führerschein entziehen (Polizei)',
        takedna = 'DNA Probe nehmen (leere Beutel notwendig) (Polizei)',
        police_report = 'Polizeibericht',
        message_sent = 'Nachricht',
        civilian_call = 'Zivilist in Not',
        emergency_call = 'Polizei NOTRUF',
        fine = '???'
    },
    progressbar = {
        blood_clear = 'Blut entfernen...',
        bullet_casing = 'Patronenhülsen entfernen..',
        robbing = 'Ausrauben..',
        place_object = 'Objekt platzieren..',
        remove_object = 'Objekt entfernen..',
        impound = 'Fahrzeug wird Beschlagnahmt..',
    },
}

if GetConvar('qb_locale', 'en') == 'de' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
