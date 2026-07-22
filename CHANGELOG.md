# Changelog — Système YouTube du Collectif Tariqa PRO

## 0.3.0-beta (2026-07-22) — template vidéo figé (intro Proof/Promise/Plan · CTA unique · la passe)
Retour de Zaki : l'output structure vidéo ne respectait pas le parcours (CTA en fin seulement, pas de
maillage, pas de passe, Coach Zaki absent). Le template existait mais 3 pièces manquaient. Comblées,
sourcées Hormozi + vidIQ (déjà minés) :
- 🟢 **Intro Proof/Promise/Plan** (`methode.md` §2) : Résultat → Pourquoi toi (preuve de transformation,
  jamais un montant) → Comment. Ancré dans l'anatomie + le gabarit §9.
- 🟢 **CTA UNIQUE répété 3×** (plus 3 CTA différents) — `methode.md` §12, doctrine §6bis, SKILL. Le même
  ask mot pour mot (TOFU/MOFU = commentaire-mot-clé + capture ; BOFU = l'offre). La répétition ancre.
- 🟢 **Le maillage interne + la passe (session time)** — `methode.md` §12bis, doctrine §6bis : renvoi vers
  ses autres vidéos sur les sous-sujets + passe (~80 % + end card) vers la vidéo suivante du funnel. Une
  vidéo n'est jamais orpheline (branché sur `youtube/funnel-audit.md`).
- 🟢 **Coach Zaki challenge la STRUCTURE en direct** (`coach-zaki-yt/youtube-challenge.md` + SKILL flow) :
  grille 5 points (intro légitime ? boucle refermée ? shift ? CTA unique répété ? vidéo orpheline ?),
  cognée AVANT de figer, plus seulement en fin.
- `ctp-yt-structure-video` → v1.1.0.

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
