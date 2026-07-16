---
name: ctp-yt-packaging
description: Agent packaging externe YouTube du Collectif Tariqa PRO. À partir d'une idée validée, construit l'angle le plus fort, plusieurs titres, puis — une fois le titre validé — FABRIQUE la miniature AVEC le membre (boucle DONE-FOR-YOU via le MCP vidIQ : audit niche → génération → score → refine), en optimisant le DAP (Désir Avatar Packaging) — faire cliquer les BONNES personnes, pas le maximum. Interroge le membre, propose des options à challenger (jamais à copier), et écrit un doc de référence. Use when the user asks "travaille le packaging", "trouve un angle", "propose des titres", "fais-moi la miniature", "génère ma miniature", "concept de miniature", "optimise mon CTR", "package ma vidéo YouTube", or works on the title/thumbnail of a video. Dépend d'une idée validée (scan + Coach Zaki) et, pour la miniature, du MCP vidIQ connecté.
metadata:
  version: 1.1.0
  category: tariqa-pro
---

# CTP YT Packaging — l'angle, le titre, la miniature

Moteur de packaging **externe** : ce qui fait cliquer *avant* la vidéo (titre +
miniature). C'est la couche la plus décisive après l'idée. On y travaille **l'angle
le plus large et le plus fort** qui reste **pertinent pour l'avatar**, puis on le
projette en titres et concepts de miniature.

> Lire d'abord la doctrine partagée : `../ctp-youtube/references/doctrine-youtube.md`
> (thèse, niveaux de conscience, DAP, garde-fous CTP). Puis `references/methode.md`
> pour la craft du packaging, `references/miniature-dfy.md` pour la **boucle
> DONE-FOR-YOU** de la miniature (vidIQ) — déclenchée une fois le titre validé — et
> `references/styles-miniature-2026.md` pour le **menu des 11 styles** (vidIQ miné,
> filtré CTP) sur lequel l'audit de niche mappe les winners du membre.

## DONE-FOR-YOU : le packaging FABRIQUE, il ne conseille pas

Ce skill ne s'arrête pas à « voici le style de miniature à viser ». Une fois le
**titre validé**, il **fabrique la miniature AVEC le membre** via le MCP vidIQ :
audit de niche → génération (photo du membre en présentateur) → score → refine,
jusqu'à un rendu validé. Le membre ressort avec une **miniature réelle**, pas un
conseil. Procédure complète : `references/miniature-dfy.md`. (Dépendance externe :
MCP vidIQ connecté — sinon signaler et s'arrêter là, ne pas bricoler.)

## Principe fondateur — moteur ≠ donnée

- **Le skill** = le moteur (méthode packaging). Distribuable tel quel.
- **La donnée** = l'idée validée, l'ICP, le positionnement, les objections des sales
  calls. Vit dans le projet (`youtube/`, `personas/`, `positionnement/`). Jamais dans
  le skill.

## La règle d'or : DAP, pas CTR brut

On ne cherche **pas** le plus gros taux de clic. On cherche le clic des **bonnes
personnes** (l'avatar). Un titre qui ramène des touristes tue la rétention et la
conversion. Chaque angle/titre est jugé sur : *est-ce que MON avatar, à SON niveau de
conscience, clique — et est-ce que les non-cibles, eux, passent leur chemin ?*

## Prérequis — le parcours CTP fait (sine qua non)

Avant tout : vérifier que le membre a fait le parcours CTP — `personas/<slug>.md`,
`offres/<slug>.md`, `positionnement/<slug>.md`, `voix/<slug>.md`. **Manquants ou
vides → STOP** : demander où ils sont / si le parcours est fait, puis renvoyer vers
`lance le parcours CTP` (plugin absent → `https://github.com/ZakiTariqaPRO/ctp-plugin.git`)
avant de continuer. Ne jamais fabriquer un persona/une offre à la volée. Détail du
gate : `../ctp-youtube/references/doctrine-youtube.md` §0.

## Dépendances (charger si présents, ne pas bloquer)

Avant de commencer, charger dans cet ordre :
1. **L'idée validée** — `youtube/videos/<slug>/01-idee.md` + le verdict Coach Zaki.
   Absente → signaler : « le packaging sans idée validée sera fragile ; on passe par
   le scan + Coach Zaki d'abord, ou je capte l'idée en express ? »
2. **Persona** (`personas/<slug>.md`) — langage, douleurs, niveau de conscience.
3. **Positionnement / différenciateur** (`positionnement/<slug>.md`) — l'angle unique.
4. **Scan** (`youtube/scans/<date>.md`) — angles saturés à éviter, opportunités.
Annoncer en une ligne ce qui a été chargé.

## Routage : mode au déclenchement

- Pas de `02-packaging.md` pour cette vidéo → mode **CREATE**.
- Présent → info nouvelle / meilleur angle trouvé → mode **ENRICH** (ne pas écraser
  en silence : montrer les deux versions, dater, archiver l'ancienne).

## Mode CREATE — interview qui produit le packaging

1. Lire `references/methode.md`. Charger les dépendances.
2. Confirmer le slug de la vidéo + résumer l'idée validée en une phrase.
3. **Interview une question à la fois** (jamais un mur) pour cadrer :
   - Quel **niveau de conscience** on attaque (cf. doctrine §5) ?
   - Quel **levier psychologique** dominant (contre-intuition, reconnaissance
     douloureuse, cas concret, identité, enjeu, gap de savoir…) ?
   - Quelle **objection réelle** (issue des sales calls) on veut activer ?
   - Quel **angle** est déjà saturé sur le marché (à éviter) ?
   Réponse vague → creuser. « Je sais pas » → marquer *à préciser*, avancer.
4. **Produire 3-4 angles distincts**, chacun avec : levier dominant, niveau de
   conscience visé, qualité d'audience attendue, risque anti-personal (attirer des
   non-cibles), et 2-3 **titres** à challenger.
5. **Recommander** un angle — mais rappeler au membre que c'est **à lui de trancher et
   de rédiger 10-20 titres supplémentaires** à la main. Le skill ouvre des pistes, il
   ne choisit pas. Croiser (optionnel) avec `vidiq_score_title` / `vidiq_generate_titles`
   comme **source à challenger**, jamais un verdict (un bon score hors-avatar = mauvais).
6. **Faire valider LE titre** par le membre (une décision). C'est le déclencheur de la
   miniature DFY.
7. **Boucle miniature DONE-FOR-YOU** (après titre validé) — suivre `references/miniature-dfy.md` :
   a. Vérifier la **dépendance** : MCP vidIQ connecté + **photo du membre** (`subjectImage`)
      disponible. Manquant → signaler et s'arrêter là sur la miniature (demander la photo,
      ne pas générer un visage inventé).
   b. **Annoncer le budget crédits** avant tout appel payant (audit 5 cr · génération 22 cr ·
      score 5 cr · refine 22 cr) et obtenir le **GO** avant chaque appel ≥ 22 cr.
   c. **Audit niche** (`vidiq_similar_thumbnails`, 5 cr) → restituer le pattern gagnant,
      valider la direction.
   d. **Générer** (`vidiq_generate_thumbnail`, 22 cr) : `subjectImage` = photo du membre,
      `userQuery` = direction ancrée niche + charte du membre + garde-fous. Restituer l'imageUrl.
   e. **Scorer** (`vidiq_score_thumbnail`, 5 cr) → note + feedback (netteté ~48 pts).
   f. **Itérer une chose à la fois** (`vidiq_refine_thumbnail` / re-génération avec feedback),
      **garder le meilleur**. Sortie : finale + **1 variante A/B**, cohérente shorts ↔ long.
   g. **Ne rien figer seul** : présenter l'imageUrl finale + le score au membre pour validation.
8. Écrire `youtube/videos/<slug>/02-packaging.md` (angles, titres, **imageUrl(s) miniature +
   score**, niveau de conscience, levier, décision). Chaque élément daté + sourcé.
9. Proposer : passer l'angle à **Coach Zaki** pour le faire cogner, puis l'étape ④
   (hook) via `ctp-youtube`. Et brancher la **mesure CTR** (Windsor YouTube, cf.
   `references/miniature-dfy.md` § voie CTR) pour valider la miniature sur la vraie
   data et alimenter `ctp-yt-feedback` (repackaging si rétention haute + CTR bas).

## Mode ENRICH — affiner sans casser

Charger le fichier, valider chaque nouveauté (nouvelle / confirmation / contradiction
/ hors-cible), n'écrire qu'après accord, montrer le diff, mettre à jour la date.

## Garde-fous

- **DAP > CTR brut.** Toujours filtrer pour l'avatar.
- **Pas de clickbait creux.** La promesse du titre/miniature doit être tenue dans la
  vidéo. Sinon la rétention et la confiance s'effondrent.
- **Pas de chiffres d'argent** dans titre/miniature (garde-fou CTP). Pas de promesse
  de résultat chiffré (obligation de moyens).
- **Mots interdits** : hacks, hustle, revenu passif, growth hacking.
- **Anti-générique** : l'angle part du différenciateur du membre, pas d'un titre déjà
  vu 50 fois. Un angle saturé (repéré au scan) = à écarter.
- Une question à la fois. Le membre tranche et réécrit — l'IA propose.
- **Miniature DFY** : générateur **agnostique** — `vidiq_generate_thumbnail` (MCP vidIQ) **ou**
  `nano_banana_pro` (MCP Higgsfield, upload photo local propre). Les deux = **dépendances de
  préférence PAYANTES** → toujours l'**annoncer** et proposer la **voie 100 % gratuite** (le skill
  livre le prompt, le membre génère dans l'outil gratuit de son choix). Ne pas imposer un abonnement.
  Sans **photo du membre**, ne pas générer un visage inventé. **Annoncer les crédits** avant de
  générer, itérer **une chose à la fois**, garder le meilleur, **ne rien figer seul**. Appliquer la
  **checklist DA** (zone morte bas-droite, regard, 40-60 %, digne-pas-sinistre) et **vérifier
  l'orthographe** du texte rendu. Détail : `references/miniature-dfy.md` + `styles-miniature-2026.md`.
  (Craft miniature enrichie avec les skills de **Yesir**, membre du Collectif.)
- **CTR = data de vérité** : ne jamais juger une miniature « trop sombre » à l'œil. La mesure
  passe par le connecteur **YouTube du MCP Windsor** (vidIQ n'expose pas le CTR d'impressions).
- Doute sur le fond/les valeurs → `ctp-compliant`.
