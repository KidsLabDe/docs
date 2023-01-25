#!/usr/bin/env bash
# wird auch von cron ausgeführt

BACKUP_USER="u284747"
REPOSITORY_DIR="backup"
REPOSITORY="ssh://${BACKUP_USER}@${BACKUP_USER}.your-storagebox.de:23/./${REPOSITORY_DIR}"

export BORG_PASSPHRASE="<liegt nur aufm server>"
export lastbackup="$(borg list --last 1 $REPOSITORY)"

# check if date match todays date:
#echo $lastbackup | grep "$(date +"%Y-%m-%d"asdf)"
#if [ $? -ne 0 ] ...

# calculate difference
#src:https://stackoverflow.com/questions/3385003/shell-script-to-get-difference-between-two-dates

days_since_last_update=$((($(date "+%s") - $(date -d "$lastupdate" "+%s")) / 86400))
#hours_since_last_update=$((($(date "+%s") - $(date -d "$lastupdate" "+%s")) / 3600))

#echo $days_since_last_update

if [ $days_since_last_update -ge 1 ] # if days_since.. is greater or equal to 1
then    
        curl \
          -H "Title: $days_since_last_update days past since last Borg Backup" \
          -H "Tags: warning,backup" \
          -d "${lastbackup}" \
          ntfy.sh/kidslab_backup
fi
