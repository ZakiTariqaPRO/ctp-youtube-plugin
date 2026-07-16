---
name: ctp-contenu
description: Analyse la performance de contenu YouTube + Instagram du Collectif Tariqa PRO via le MCP vidIQ, en raisonnant PAR ÉTAGE DE FUNNEL (TOFU / MOFU / BOFU) et non sur les vues brutes. Classe chaque contenu par objectif, le juge avec le BON KPI, audite la signature/différenciateur visuel, surveille la santé algo (reach non-abonnés), et benchmark contre les outliers de la niche. Use when the user asks "analyse mon contenu", "pourquoi mes vues baissent", "audite ma chaîne / mon compte Insta", "mes reels / shorts performent mal", "benchmark vs un concurrent", "analyse ce compte", "TOFU MOFU BOFU", "santé de mon algorithme", or wants a content/performance report on YouTube or Instagram. DÉPENDANCE EXTERNE : nécessite le MCP vidIQ connecté.
metadata:
  version: 1.0.0
  category: tariqa-pro
---

# ctp-contenu — Analyse de contenu funnel-aware (CTP)

Moteur d'analyse de performance de contenu pour Zaki / Collectif Tariqa PRO.
**Le moteur ≠ la donnée.** Le moteur = ce raisonnement par funnel. La donnée = le
MCP vidIQ + les comptes de Zaki.

## ⚠️ Dépendance à signaler
Ce skill **requiert le MCP vidIQ** (serveur externe). Si absent → le dire
immédiatement et stopper. Outils vidIQ utilisés : `vidiq_user_channels`,
`vidiq_channel_analytics`, `vidiq_channel_videos`, `vidiq_channel_performance_trends`,
`vidiq_video_stats`, `vidiq_video_transcript`, `vidiq_video_comments`,
`vidiq_outliers`, `vidiq_trending_videos`, `vidiq_ig_profile`,
`vidiq_ig_profile_reels`, `vidiq_ig_reel_watch`, `vidiq_ig_outlier_reels_search`,
`vidiq_ig_accounts_from_outliers`, `vidiq_score_title`, `vidiq_generate_titles`,
`vidiq_keyword_research`. **vidIQ est LECTURE SEULE sur la chaîne** : il ne peut PAS
écrire/modifier un titre YouTube — il ne fait que proposer/noter.

## Comptes de référence
- YouTube : chaîne autorisée via `vidiq_user_channels` (id `UCRVu7Tx6NIbAb40sDjWz41w`,
  "Zaki du Collectif Tariqa Pro").
- Instagram : handle `zaki_chairi` (~57K abonnés, vérifié).
- Cible : entrepreneurs musulmans francophones 20-40. Voir `personas/tariqa-pro.md`.

---

## PRINCIPE FONDATEUR — tout contenu a UN objectif de funnel

Ne JAMAIS juger un contenu sur les vues/likes par défaut. **D'abord classer, puis
juger avec le KPI de son étage.**

| Étage | Objectif | Formats typiques (CTP) | **KPI qui compte** | KPI à IGNORER |
|---|---|---|---|---|
| **TOFU** | attirer des NON-abonnés | viral, émotion, court (<20s), pattern-interrupt, sujet à TAM large | vues, **% de non-abonnés**, partages, saves | DM, ventes, parfois likes |
| **MOFU** | nourrir / activer la base | face-cam, coaching, extraits podcast, enseignement | **commentaires** (« Barakah »), watch time, visites de profil, retention | vues brutes |
| **BOFU** | convertir | témoignages clients (Nejla…), preuve, offre, CTA fort | **DM, calls bookés, clics lien** | vues, likes |

Exemple : un BOFU à 370 vues / 3 likes n'est PAS un échec s'il a sorti 5 DM
« Barakah ». Le juger sur les vues = erreur d'analyse.

---

## RÈGLE SANTÉ ALGO (le vrai arbitrage)
Le danger : si les formats MOFU/BOFU (faible rétention, pas "sexy" pour l'algo)
dominent le volume, l'algo apprend "compte à faible rétention" et **coupe la
distribution même des TOFU**. Donc :

- **Ratio cible ≈ 40% TOFU / 40% MOFU / 20% BOFU.** Le TOFU "paie le loyer algo".
- **Canari à surveiller : le reach médian NON-ABONNÉS.** Tant qu'il monte → on peut
  se permettre du BOFU. S'il chute → réinjecter du TOFU avant tout.
- Sur YouTube, lire les sources de trafic (`insightTrafficSourceType`) : si
  `RELATED_VIDEO` + suggested ≈ 0 et que tout vient de `SUBSCRIBER`, l'algo ne pousse
  plus au froid → alerte rouge.

---

## RÈGLE SIGNATURE / DIFFÉRENCIATEUR
La répétition de format n'est PAS un défaut en soi — elle l'est seulement sans
signature forte. Test : **un inconnu reconnaît-il le créateur en 0,5s ?**

- Cas Derdour (465K) : toujours dans sa voiture, persona "penseur" calme, lunettes
  → sa répétition = MARQUE. + sujets TAM universel (relations, personnalité) →
  rafales de reels = beaucoup de tickets TOFU. Ses reels quotidiens font ~1% de reach,
  mais le volume + les monstres (2M) nourrissent le funnel.
- Cas Zaki : la répétition lit comme FATIGUE car (a) signature faible ("gars à
  lunettes en intérieur beige") et (b) TAM niche (musulmans + business).

**Verdict du skill** : avant de dire "casse le motif", vérifier s'il y a une
signature exploitable. Sinon → recommander de CONSTRUIRE une signature (cadre,
persona, élément récurrent fort) pour que la répétition devienne marque.

---

## WORKFLOW

0. **Vérifier le MCP vidIQ.** Absent → le signaler, stop.
1. **Identifier les comptes** (`vidiq_user_channels` ; handle IG).
2. **Tirer la donnée** (en parallèle quand possible) :
   - YT : `channel_analytics` (par `day` sur 90j + par `video` + par
     `insightTrafficSourceType`), `channel_videos` (long & short), `performance_trends`.
   - IG : `ig_profile`, `ig_profile_reels`.
3. **Classer** chaque contenu TOFU / MOFU / BOFU (via titre/caption/format/CTA).
4. **Juger par étage** avec le KPI de la table. Calculer le reach % (vues / abonnés).
5. **Audit signature** (test des 0,5s) + cohérence avec la voix CTP.
6. **Santé algo** : ratio des étages + tendance du reach non-abonnés.
7. **Benchmark** : `vidiq_outliers` / `ig_outlier_reels_search` /
   `ig_accounts_from_outliers` sur la niche (audienceQuery :
   `Culture/Region: Francophone/Muslim; Global: false; Demographics: entrepreneurs musulmans 20-40;`).
8. **Rapport** : diagnostic + actions CONCRÈTES par étage, pas un blob de vues.

---

## CONTRAINTES VOIX CTP (toujours)
- Tutoiement, phrases courtes, jamais moralisateur. « Collectif Tariqa PRO » en entier.
- **Mots INTERDITS** : hacks, hustle, passive income/revenu passif, growth hacking.
- **Jamais de chiffres d'argent / CA** mis en avant (cf. doctrine CTP).
- Framing « Barakah » / foi+business = l'atout émotionnel — le valoriser.
- Tout livrable copier-coller (titres, captions) → dans un bloc de code.

## Bornes
- Ne pas inventer de chiffres : tout vient d'un appel vidIQ. Pas d'appel → pas de
  claim chiffré.
- vidIQ ne titre PAS les vidéos. Pour POSER des titres : script YouTube Data API,
  pilotage de YouTube Studio via Chrome, ou génération + copier-coller manuel.
