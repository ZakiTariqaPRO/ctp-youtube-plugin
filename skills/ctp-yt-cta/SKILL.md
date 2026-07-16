---
name: ctp-yt-cta
description: Agent CTA (appels à l'action) YouTube du Collectif Tariqa PRO — agent ⑥. À partir de la structure de la vidéo, place PEU de CTA mais à des endroits STRATÉGIQUES, en lisant le niveau de conscience ET l'état émotionnel du viewer à chaque moment (début ≠ milieu ≠ fin). Adapte le type (soft / direct / hybride) et le canal (interne = autre vidéo, externe = offre / appel stratégique / lead). Interroge le membre une question à la fois, propose 2-3 variations à challenger avec une discipline de langage, et écrit un doc de référence. Use when the user asks "place mes CTA", "où mettre l'appel à l'action", "mon CTA est mou", "call to action YouTube", "renvoyer vers mon offre", "travaille mes CTA", or works on the calls to action of a video. Dépend de la structure de la vidéo (agent ⑤) et de l'offre du membre.
metadata:
  version: 1.0.0
  category: tariqa-pro
---

# CTP YT CTA — placer l'appel à l'action au bon endroit

Moteur des **CTA** (appels à l'action) : ce qui transforme la rétention en **lead /
appel / client**. On ne colle pas un CTA n'importe où « parce qu'il en faut un ». On
lit **toute la structure** de la vidéo, on repère les rares **moments stratégiques**
où le viewer est prêt à bouger, et on y pose le bon CTA — au bon **type** (soft /
direct / hybride) et au bon **canal** (interne / externe). Qualité > quantité.

> Lire d'abord la doctrine partagée : `../ctp-youtube/references/doctrine-youtube.md`
> (thèse, niveaux de conscience §5, conversion §6, garde-fous CTP §9). Puis
> `references/methode.md` pour la craft du placement CTA.

## Principe fondateur — moteur ≠ donnée

- **Le skill** = le moteur (méthode de placement des CTA). Distribuable tel quel.
- **La donnée** = la structure de CETTE vidéo, l'offre du membre, l'ICP, le niveau de
  conscience visé, les objections des sales calls. Vit dans le projet (`youtube/`,
  `offres/`, `personas/`). Jamais dans le skill.

## La règle d'or : peu de CTA, mais stratégiques

On ne cherche **pas** à multiplier les appels à l'action. Un CTA lâché au mauvais
moment (audience froide, viewer non encore convaincu, milieu de démonstration) casse
le flow, plombe la rétention et grille la confiance. On cherche le **rare** moment où
l'awareness et l'état émotionnel du viewer sont alignés — là, un CTA net convertit.
Chaque CTA est jugé sur : *à CE moment, le viewer est-il assez conscient et dans le
bon état pour agir, et l'action proposée est-elle la plus petite étape crédible vers
l'offre ?*

## Prérequis — le parcours CTP fait (sine qua non)

Avant tout : vérifier que le membre a fait le parcours CTP — `personas/<slug>.md`,
`offres/<slug>.md`, `positionnement/<slug>.md`, `voix/<slug>.md`. **Manquants ou
vides → STOP** : demander où ils sont / si le parcours est fait, puis renvoyer vers
`lance le parcours CTP` (plugin absent → `https://github.com/ZakiTariqaPRO/ctp-plugin.git`)
avant de continuer. Ne jamais fabriquer un persona/une offre à la volée. Détail du
gate : `../ctp-youtube/references/doctrine-youtube.md` §0.

## Dépendances (charger si présents, ne pas bloquer)

Avant de commencer, charger dans cet ordre :
1. **La structure** — `youtube/videos/<slug>/04-structure.md` (agent ⑤). C'est
   l'input central : sans elle on ne peut pas placer les CTA dans le déroulé.
   Absente → signaler : « le CTA sans structure est aveugle ; on passe par l'agent ⑤
   d'abord, ou je cadre la structure en express ? »
2. **Le hook** — `youtube/videos/<slug>/03-hook.md` — pour l'état émotionnel de départ.
3. **L'offre** — `offres/<slug>.md` (skill `ctp-offre`). Le CTA renvoie à l'offre :
   il faut connaître la 1re étape crédible (ex. un appel stratégique de 30 min avant
   un accompagnement 1:1). Absente → signaler : « le CTA externe sans offre définie
   sera flou ; on cadre l'offre d'abord (ctp-offre), ou je capte la 1re étape en
   express ? »
4. **Persona** (`personas/<slug>.md`) — langage, douleurs, résistance à l'action.
Annoncer en une ligne ce qui a été chargé.

## Routage : mode au déclenchement

- Pas de `05-cta.md` pour cette vidéo → mode **CREATE**.
- Présent → info nouvelle / meilleur placement trouvé → mode **ENRICH** (ne pas
  écraser en silence : montrer les deux versions, dater, archiver l'ancienne).

## Mode CREATE — interview qui produit les CTA

1. Lire `references/methode.md`. Charger les dépendances.
2. Confirmer le slug de la vidéo + résumer en une phrase la structure et l'étage de
   funnel (TOFU / MOFU / BOFU, cf. doctrine §4) — l'étage cadre l'ambition du CTA.
3. **Interview une question à la fois** (jamais un mur) pour cadrer :
   - Quel **niveau de conscience** la vidéo attaque (cf. doctrine §5) — et où en est
     le viewer à la FIN (a-t-il monté d'un cran) ?
   - Quelle **1re étape** de l'offre on veut viser (appel stratégique, lead magnet,
     réponse en commentaire, DM…) ?
   - Quelle **objection réelle** (sales calls) freine encore l'action à la fin ?
   - Le membre veut-il un CTA **interne** (retenir dans la chaîne, nurturer) ou
     **externe** (offre / appel), ou les deux à des moments différents ?
   Réponse vague → creuser. « Je sais pas » → marquer *à préciser*, avancer.
4. **Cartographier l'état du viewer le long de la structure** : pour chaque grand
   moment (hook / début, cœur / milieu, résolution / fin), noter le **niveau de
   conscience** atteint, l'**état émotionnel** probable et la **résistance à
   l'action**.
5. **Placer TROIS CTA (début · milieu · fin), pas un seul en fin** (règle, cf. doctrine
   §6bis), chacun adapté à l'état du viewer à ce moment :
   - **Début (soft / engagement, JAMAIS de vente)** : pousser le **commentaire** — « écris
     [MOT-CLÉ] en commentaire, je t'envoie le résumé ». Un commentaire tôt = signal fort
     (watch time + algo) et amorce la capture (mot-clé → DM). Variante : « abonne-toi si… ».
   - **Milieu (lead magnet)** : au pic d'engagement (souvent après le moment de bascule), le
     **résumé/PDF** contre un **email** (ou le commentaire-mot-clé → DM).
   - **Fin (offre)** : la **1re petite étape** vers l'offre / le collectif.
   Pour chaque : le moment exact, le **type** (soft / direct / hybride), le **canal**
   (interne / externe), et *pourquoi ici*. Rester **peu et juste** (3 justes > 5 dispersés).
6. **Produire 2-3 variations** de formulation par CTA (une soft, une directe, une
   hybride) avec une **discipline de langage** proposée (verbe d'action clair, une
   seule action, pas de double injonction, pas de promesse chiffrée). Le membre
   choisit et réécrit à sa main.
7. **Recommander** — mais rappeler que c'est **au membre de trancher** le placement
   final et de dire le CTA avec SA voix (cf. `ctp-voix`). Le skill ouvre des pistes,
   il ne scripte pas à sa place.
8. Écrire `youtube/videos/<slug>/05-cta.md` (carte état viewer × structure, placements
   recommandés, type + canal + variations par CTA, discipline de langage, décision à
   prendre). Chaque élément daté + sourcé.
9. Proposer : passer les CTA à **Coach Zaki** pour vérifier qu'aucun n'est mou ou
   absent (« ton seul CTA arrive trop tôt sur une audience froide »), puis — **après
   tournage + montage par le membre** — l'étape ⑦ (SEO) via `ctp-youtube`.

## Mode ENRICH — affiner sans casser

Charger le fichier, valider chaque nouveauté (nouvelle / confirmation / contradiction
/ hors-cible), n'écrire qu'après accord, montrer le diff, mettre à jour la date.

## Garde-fous

- **Trois CTA justes, pas plus (début · milieu · fin).** Qualité > quantité. 3 placés au
  bon moment > 5 dispersés. Un CTA de trop casse le flow.
- **Jamais de CTA de VENTE trop tôt sur une audience froide.** La règle vise l'**offre** :
  un appel externe avant que le viewer soit convaincu fait fuir. En revanche, le CTA de
  **début est soft** (commentaire, abonnement) — l'engagement précoce, lui, est **voulu** et
  bon pour le watch time. Ne jamais confondre les deux.
- **Pas de vente agressive** (« école du requin »). On propose la prochaine petite
  étape, on ne force pas. Le collectif d'abord, jamais la pression.
- **Pas de promesse de résultat** : obligation de moyens, pas de résultat. Aucune
  garantie chiffrée dans le CTA.
- **Pas de chiffres d'argent** mis en avant dans un CTA public (le pricing / CA reste
  donnée interne, cf. garde-fou CTP).
- **Mots interdits** : hacks, hustle, revenu passif, growth hacking.
- **« Collectif Tariqa PRO »** en entier, jamais « Tariqa PRO » seul.
- Une question à la fois. Le membre tranche et réécrit avec sa voix — l'IA propose.
- Doute sur le fond / les valeurs → `ctp-compliant`.
