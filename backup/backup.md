- Mail notification? 
- Restore testen


wie funktioniert `$REPOSITORY::'{now:%Y-%m-%d_%H:%M}' `
überschreiben sich die backups wenn sie gleich heißen?

soll minetest auch seperat gebackupt werden?
oder minecraft nur einmal?


# Kleine Doku
```sh
LOG="/var/log/borg/backup.log"
BACKUP_USER="u284747"
REPOSITORY_DIR="backup"
BORG_PASSPHRASE="< in /usr/local/bin/backup.sh >"
REPOSITORY="ssh://${BACKUP_USER}@${BACKUP_USER}.your-storagebox.de:23/./${REPOSITORY_DIR}"
```

passwort im skript /usr/local/bin/backup.sh

## Auslöser und logs
in crontab:
```crontab
0 0 * * * /usr/local/bin/backup.sh 2>> /var/log/borg/cron-err.log
0 0 * * * /opt/mscs/backup.sh > /dev/null 2>&1
0 0 * * * /home/kingbbq/minetest/backup.sh > /dev/null 2>&1
30 0 * * * /usr/local/bin/ntfy.sh > /var/log/ntfy 2>&1
```
`/home/kingbbq/minetest/` existiert nicht mehr,

## in dem backup
- backups auflisten
`borg list ssh://u284747@u284747.your-storagebox.de:23/./backup`
BORG_PASSPHRASE eingeben wenns noch nicht als env-variable gesetzt ist
- letztes zeigen
`borg list --last 1 $REPOSITORY`


backup mounten
`borg mount ssh://u284747@u284747.your-storagebox.de:23/./backup::2023-01-12_00:00 /mnt/borg-backup-mnt-test`
- Achtung! bei gemountetem backup kann kein neues erstellt werden!

unmount:
`borg umount /mnt/borg-backup-mnt-test`