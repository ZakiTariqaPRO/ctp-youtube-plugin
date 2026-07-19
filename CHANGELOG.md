# Changelog — Système YouTube du Collectif Tariqa PRO

## 0.2.0-beta (2026-07-18) — audit de continuité (retour bêta-testeur)
- 🔴 **Collision de noms tuée** : le plugin ne livre plus de copie de `coach-zaki`. Il livre
  **`coach-zaki-yt`** — la **lentille YouTube seule** — qui s'appuie sur le `coach-zaki` du parcours
  CTP (prérequis) pour la posture. Plus de chargement non-déterministe quand les 2 plugins sont actifs.
- 🔴 **`scripts/sync-coach-zaki.sh` supprimé** (chemin de machine de dev, inopérant chez un membre,
  et faux principe de « source de vérité »). Les améliorations générales de Coach Zaki vivent
  désormais dans le **plugin parcours**, source unique.
- 🟠 **Gate durci** (doctrine §0) : message d'échec **unique et actionnable** + détection des
  fondations **vides ou à l'état de brouillon** (`[À VALIDER]`, TODO…), pas seulement absentes.
- Références internes réalignées (`coach-zaki` → `coach-zaki-yt`), manifestes mis à jour.

*Faux positifs de l'audit, non retenus : `ctp-voix` « persona/positionnement » est une énumération,
pas un chemin ; `docs/installation.html` est 100 % statique (0 script, ~5 200 caractères de texte) —
le body vide observé venait d'une lecture pendant le build de GitHub Pages.*

## 0.1.0-beta (2026-07-16)
Première beta, en test.

- **Plugin YouTube autonome**, distinct du parcours CTP (prérequis pointé, non bundlé).
- **Stratégie** : scan/diagnostic (agents scan, stratège, veille), doctrine + tactiques minées (vidIQ, IFG).
- **Production (pipeline)** : `ctp-yt-packaging` (angle + titres + **miniature DONE-FOR-YOU** via vidIQ,
  boucle génère→score→refine, voie gratuite incluse) · `ctp-yt-hook` · `ctp-yt-structure-video`
  (plan digeste / mind map / script complet) · `ctp-yt-cta` · `ctp-yt-seo` · `ctp-yt-feedback`.
- **Analyse contenu** : `ctp-contenu` (funnel TOFU/MOFU/BOFU via vidIQ).
- **Livrable** : `ctp-yt-export` (playbook YouTube vivant + scorecard).
- **Porte d'entrée + rituel vivant** : `ctp-yt-parcours` (« où j'en suis / on produit quoi aujourd'hui »).
- **Coach Zaki** (v1.5.0, dupliqué + synchronisé) : couche challenge du pipeline ; renvoi vers les
  cours Circle, invitation au témoignage, remontée de feedback.
- Dépendance externe : **vidIQ** (payant) — moteur agnostique + voie 100 % gratuite.
