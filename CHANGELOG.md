# Changelog — Système YouTube du Collectif Tariqa PRO

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
