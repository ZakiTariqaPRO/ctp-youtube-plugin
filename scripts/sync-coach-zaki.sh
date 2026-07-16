#!/usr/bin/env bash
# Sync coach-zaki — SOURCE DE VÉRITÉ = le parcours CTP ; ce plugin YouTube en garde une COPIE.
# Coach Zaki est enrichi au fil des coachings dans le parcours ; ce script recopie la version
# à jour dans le plugin YouTube + fait un backup daté. À planifier (cron/launchd) en quotidien.
#
# Usage : ./scripts/sync-coach-zaki.sh
set -euo pipefail

MASTER="${CTP_COACH_ZAKI_MASTER:-$HOME/CTP-plugin/skills/coach-zaki}"   # source de vérité (parcours)
HERE="$(cd "$(dirname "$0")/.." && pwd)"
DEST="$HERE/skills/coach-zaki"
BACKUP_DIR="${CTP_COACH_ZAKI_BACKUPS:-$HOME/CTP-coach-zaki-backups}"
STAMP="$(date +%Y%m%d-%H%M%S)"

if [ ! -d "$MASTER" ]; then
  echo "❌ Master introuvable : $MASTER (définir CTP_COACH_ZAKI_MASTER ?)" >&2
  exit 1
fi

# 1. Backup daté de la version actuelle du plugin YouTube (avant écrasement)
mkdir -p "$BACKUP_DIR"
if [ -d "$DEST" ]; then
  tar -czf "$BACKUP_DIR/coach-zaki-youtube-$STAMP.tar.gz" -C "$HERE/skills" coach-zaki
  echo "🗄  backup → $BACKUP_DIR/coach-zaki-youtube-$STAMP.tar.gz"
fi

# 2. Sync master → plugin YouTube (miroir exact)
rsync -a --delete "$MASTER/" "$DEST/"
echo "✅ coach-zaki synchronisé depuis $MASTER"

# 3. Rétention : garder les 30 derniers backups
ls -1t "$BACKUP_DIR"/coach-zaki-youtube-*.tar.gz 2>/dev/null | tail -n +31 | xargs -r rm -f
echo "✔ done ($STAMP)"
