---
name: ctp-yt-hook
description: Agent hook YouTube du Collectif Tariqa PRO — les 15 premières secondes. À partir d'un packaging validé, écrit le hook MOT POUR MOT (1 principal + 2 variantes) qui confirme la promesse du titre/miniature, qualifie l'avatar (les touristes partent), ouvre une boucle de tension immédiate, et sonne comme le membre (ton capté dans ses transcripts). Interroge le membre, propose des options à challenger (jamais à copier), et écrit un doc de référence. Use when the user asks "écris mon hook", "les 15 premières secondes", "l'intro de ma vidéo", "comment je démarre ma vidéo", "accroche YouTube", "travaille mon hook", or works on the opening of a video. Dépend d'un packaging validé.
metadata:
  version: 1.0.0
  category: tariqa-pro
---

# CTP YT Hook — les 15 premières secondes

Moteur du **hook** : les ~15 premières secondes de la vidéo, *après* le clic. C'est
la couche la plus décisive après le packaging — elle fait **~80 % du résultat** de la
vidéo. Le hook ne résume pas : il **augmente la tension** juste après le clic,
confirme la promesse du titre/miniature, qualifie l'avatar, et ouvre une boucle. On
l'écrit **mot pour mot**, dans le ton réel du membre.

> Lire d'abord la doctrine partagée : `../ctp-youtube/references/doctrine-youtube.md`
> (thèse, niveaux de conscience, rétention, garde-fous CTP). Puis `references/methode.md`
> pour la craft du hook.

## Principe fondateur — moteur ≠ donnée

- **Le skill** = le moteur (méthode hook). Distribuable tel quel.
- **La donnée** = le packaging validé, l'ICP, la voix, les transcripts du membre (son
  ton réel). Vit dans le projet (`youtube/`, `personas/`, `voix/`). Jamais dans le
  skill.

## La règle d'or : confirmer, qualifier, ouvrir — dans le ton du membre

Le hook a **quatre missions**, pas une :
1. **CONFIRMER** la promesse du packaging (titre + miniature) — jamais de
   bait-and-switch. Le viewer a cliqué pour une raison ; les 3 premières secondes lui
   disent « oui, c'est bien ça, reste ».
2. **QUALIFIER** l'audience — l'avatar se reconnaît (« c'est exactement moi ») et les
   touristes partent. Les faire partir est **voulu** : ils plombent la rétention.
3. **OUVRIR** la tension — une boucle immédiate (open loop) qui ne se referme que plus
   loin dans la vidéo. On augmente la tension, on ne la relâche pas.
4. **SONNER** comme le membre — son ton réel, ses tics, ses mots. Le membre ne scripte
   pas toute la vidéo, mais il scripte le hook **à 200 %**.

## Prérequis — le parcours CTP fait (sine qua non)

Avant tout : vérifier que le membre a fait le parcours CTP — `personas/<slug>.md`,
`offres/<slug>.md`, `positionnement/<slug>.md`, `voix/<slug>.md`. **Manquants ou
vides → STOP** : demander où ils sont / si le parcours est fait, puis renvoyer vers
`lance le parcours CTP` (plugin absent → `https://github.com/ZakiTariqaPRO/ctp-plugin.git`)
avant de continuer. Ne jamais fabriquer un persona/une offre à la volée. Détail du
gate : `../ctp-youtube/references/doctrine-youtube.md` §0.

## Dépendances (charger si présents, ne pas bloquer)

Avant de commencer, charger dans cet ordre :
1. **Le packaging validé** — `youtube/videos/<slug>/02-packaging.md` (angle retenu,
   titre, concept miniature, niveau de conscience, levier). Absent → signaler : « le
   hook sans packaging validé partira dans le vide ; on passe par le packaging
   d'abord, ou je capte l'angle en express ? »
2. **Persona** (`personas/<slug>.md`) — langage, douleurs, niveau de conscience de
   l'avatar (qui doit se reconnaître).
3. **Voix** (`voix/<slug>.md`) — ton, registre, lexique du membre.
4. **Transcripts** (`youtube/data/transcripts/`) — pour capter le ton RÉEL du membre :
   ses tics de langage, ses tournures, ses mots. C'est ce qui rend le hook naturel.
Annoncer en une ligne ce qui a été chargé.

## Routage : mode au déclenchement

- Pas de `03-hook.md` pour cette vidéo → mode **CREATE**.
- Présent → info nouvelle / meilleur hook trouvé → mode **ENRICH** (ne pas écraser en
  silence : montrer les deux versions, dater, archiver l'ancienne).

## Mode CREATE — interview qui produit le hook

1. Lire `references/methode.md`. Charger les dépendances.
2. Confirmer le slug de la vidéo + rappeler en une phrase la **promesse du packaging**
   (titre + miniature) que le hook devra confirmer.
3. **Interview une question à la fois** (jamais un mur) pour cadrer :
   - Quelle **promesse exacte** le titre/miniature fait — que le hook doit confirmer
     dès la 1re phrase ?
   - Quel **niveau de conscience** on attaque (cf. doctrine §5) — donc quel point de
     départ émotionnel ?
   - Quel **levier psychologique** dominant pour la boucle (contre-intuition, preuve /
     cas client concret, tension « ça ne tient pas à long terme parce que… »,
     reconnaissance douloureuse) ?
   - Comment **qualifier l'avatar** en une phrase — quel qualifieur fait rester la
     cible et partir les touristes ?
   - Une **phrase, un tic, une tournure** que le membre dit vraiment (ou repérable
     dans ses transcripts) pour ancrer le ton ?
   Réponse vague → creuser. « Je sais pas » → marquer *à préciser*, avancer.
4. **Produire 1 hook principal MOT POUR MOT + 2 variantes**, chacun avec : le levier
   psychologique **dominant**, l'anatomie explicite (accroche → qualification → boucle
   ouverte → transition), le niveau de conscience visé, et une note « ce que ça
   confirme du packaging / qui ça fait partir ». Les 3 doivent sonner comme le membre.
5. **Recommander** le plus fort — mais rappeler au membre que c'est **à lui de trancher
   et de le réécrire à sa main / à voix haute** jusqu'à ce que ça sonne vrai. Le skill
   ouvre des pistes, il ne choisit pas le ton final.
6. Écrire `youtube/videos/<slug>/03-hook.md` (hook principal + 2 variantes mot pour
   mot, levier de chacun, anatomie, niveau de conscience, ce que ça confirme/filtre,
   décision à prendre). Chaque élément daté + sourcé.
7. Proposer : faire **cogner le hook par Coach Zaki** (s'il est mou, générique, ou ne
   tient pas la promesse), puis l'étape ⑤ (structure) via `ctp-youtube`.

## Mode ENRICH — affiner sans casser

Charger le fichier, valider chaque nouveauté (nouvelle / confirmation / contradiction
/ hors-cible), n'écrire qu'après accord, montrer le diff, mettre à jour la date.

## Garde-fous

- **Confirmer, ne pas trahir.** Le hook tient la promesse du packaging. Un hook qui
  part ailleurs = bait-and-switch : la rétention et la confiance s'effondrent.
- **Qualifier, c'est repousser.** Un hook qui parle à tout le monde ne retient
  personne. Faire partir les touristes est voulu.
- **Pas de résumé générique.** Le hook augmente la tension, il ne récapitule pas la
  vidéo. Interdit : « dans cette vidéo je vais vous parler de… ».
- **Le ton du membre, pas un ton d'IA.** Ancrer sur ses transcripts et sa voix. Un
  hook lisse et impersonnel = un clone de plus, donc pas de confiance.
- **Pas de chiffres d'argent** dans le hook (garde-fou CTP). Pas de promesse de
  résultat chiffré (obligation de moyens, pas de résultat).
- **Mots interdits** : hacks, hustle, revenu passif, growth hacking.
- **« Collectif Tariqa PRO »** en entier, jamais « Tariqa PRO » seul.
- Une question à la fois. Le membre tranche et réécrit — l'IA propose.
- Doute sur le fond/les valeurs → `ctp-compliant`.
