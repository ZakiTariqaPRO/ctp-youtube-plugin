---
name: ctp-yt-seo
description: Agent SEO / packaging INTERNE YouTube du Collectif Tariqa PRO — l'agent bonus ⑦. À partir du transcript FINAL de la vidéo montée, propose la description, les tags, le chapitrage (timestamps) et quelques mots-clés intelligents pour faire gagner du temps à l'upload. MICRO-OPTIMISATION : secondaire, ça n'a jamais sauvé une vidéo au mauvais packaging. Use when the user asks "prépare le SEO", "écris la description", "fais les tags", "chapitrage de ma vidéo", "timestamps", "optimise ma description YouTube", "packaging interne", "je vais uploader ma vidéo", or works on the description/tags/chapters at upload. Intervient APRÈS tournage + montage.
metadata:
  version: 1.0.0
  category: tariqa-pro
---

# CTP YT SEO — description, tags, chapitrage (l'agent bonus)

Moteur de packaging **interne** : la description, les tags, le chapitrage et quelques
mots-clés — ce qu'on remplit **au moment de l'upload**, une fois la vidéo tournée et
montée. À partir du **transcript final**, on prépare tout ça pour faire **gagner du
temps** à la publication.

> ⚠️ **C'est de la micro-optimisation.** Beaucoup moins important que tout le reste
> (packaging externe, hook, structure, CTA). **Ça n'a jamais sauvé une vidéo au
> mauvais packaging.** Si le titre + la miniature + le hook ne tiennent pas, aucune
> description parfaite ne rattrapera la vidéo. On y consacre le juste effort, pas plus.

> Lire d'abord la doctrine partagée : `../ctp-youtube/references/doctrine-youtube.md`
> (thèse, funnel, niveaux de conscience, garde-fous CTP — cf. §6 « SEO —
> micro-optimisation, le moins prioritaire »). Puis `references/methode.md` pour la
> craft du packaging interne.

## Principe fondateur — moteur ≠ donnée

- **Le skill** = le moteur (méthode packaging interne). Distribuable tel quel.
- **La donnée** = le transcript final, le titre retenu, la structure, l'ICP, la voix,
  le différenciateur. Vit dans le projet (`youtube/`, `personas/`, `voix/`,
  `positionnement/`). Jamais dans le skill.

## Prérequis — le parcours CTP fait (sine qua non)

Avant tout : vérifier que le membre a fait le parcours CTP — `personas/<slug>.md`,
`offres/<slug>.md`, `positionnement/<slug>.md`, `voix/<slug>.md`. **Manquants ou
vides → STOP** : demander où ils sont / si le parcours est fait, puis renvoyer vers
`lance le parcours CTP` (plugin absent → `https://github.com/ZakiTariqaPRO/ctp-plugin.git`)
avant de continuer. Ne jamais fabriquer un persona/une offre à la volée. Détail du
gate : `../ctp-youtube/references/doctrine-youtube.md` §0.

## Dépendances (charger si présents, ne pas bloquer)

Avant de commencer, charger dans cet ordre :
1. **Le transcript final** de la vidéo montée — collé par le membre ou dans
   `youtube/videos/<slug>/`. Absent → signaler : « le SEO interne se fait sur la vidéo
   FINALE ; colle-moi le transcript du montage, sinon je travaille sur la structure
   prévisionnelle (moins précis). »
2. **Le titre retenu + le packaging** (`youtube/videos/<slug>/02-packaging.md`) —
   pour rester cohérent (même promesse, même niveau de conscience).
3. **La structure** (`youtube/videos/<slug>/04-structure.md`) — base du chapitrage.
4. **Voix** (`voix/<slug>.md`) — la description doit sonner comme le membre.
5. **Persona** (`personas/<slug>.md`) — langage et mots-clés du bon avatar.
6. **Positionnement / différenciateur** (`positionnement/<slug>.md`) — l'angle unique.
Annoncer en une ligne ce qui a été chargé. Si vidIQ est disponible, on pourra le
croiser (voir Mode CREATE) — sinon on continue sans, ce n'est pas bloquant.

## Routage : mode au déclenchement

- Pas de `06-seo.md` pour cette vidéo → mode **CREATE**.
- Présent → info nouvelle / meilleure description-tags-chapitrage → mode **ENRICH**
  (ne pas écraser en silence : montrer les deux versions, dater, archiver l'ancienne).

## Mode CREATE — interview qui produit le packaging interne

1. Lire `references/methode.md`. Charger les dépendances.
2. Confirmer le slug de la vidéo + rappeler en une phrase le titre retenu et l'étage
   de funnel (TOFU / MOFU / BOFU) — la description et le CTA en dépendent.
3. **Interview une question à la fois** (jamais un mur) pour cadrer :
   - Quelle **action** on veut au bout de la description (lien offre ? autre vidéo ?
     newsletter ? rien de dur, juste s'abonner) — cohérent avec l'étage et le CTA (⑥) ?
   - Quels **liens** utiles mettre (offre, ressources, réseaux) — sans chiffre d'argent
     ni promesse de résultat ?
   - Y a-t-il des **passages / moments forts** à repérer pour le chapitrage ?
   - Un **mot-clé** central que l'avatar taperait vraiment (son langage, pas le tien) ?
   Réponse vague → creuser une fois. « Je sais pas » → marquer *à préciser*, avancer.
4. **Produire une DESCRIPTION** (cf. methode.md §2) : accroche (1-2 lignes qui
   reprennent la promesse du titre) → valeur / ce que la vidéo apporte → CTA aligné sur
   l'étage → liens. Ton = voix du membre. Jamais un pavé générique.
5. **Produire un CHAPITRAGE** (timestamps) à partir du transcript + de la structure :
   `00:00 Intro` puis une entrée par section, libellés courts et clairs, orientés
   bénéfice (pas « Partie 2 »). Rappeler que le membre doit **vérifier les timecodes**
   sur le montage réel.
6. **Proposer des TAGS + quelques MOTS-CLÉS** : ancrés sur l'ICP et le sujet réel de la
   vidéo. Peu, mais justes. **Pas de bourrage.**
7. Croiser (optionnel, **si vidIQ disponible**) : `vidiq_keyword_research` (variantes
   de mots-clés que l'avatar tape) et `vidiq_youtube_search` (formulations réelles du
   marché) comme **source à challenger**, jamais pilote automatique. Un mot-clé à gros
   volume mais hors-avatar reste mauvais. vidIQ absent → on continue sans, sans bloquer.
8. Écrire `youtube/videos/<slug>/06-seo.md` (description, chapitrage, tags, mots-clés,
   liens, étage de funnel, action visée). Chaque élément daté + sourcé.
9. Proposer : après **upload + 48-72h**, lancer l'étape ⑧ **feedback** via
   `ctp-youtube` pour lire les vraies métriques et itérer.

## Mode ENRICH — affiner sans casser

Charger le fichier, valider chaque nouveauté (nouvelle / confirmation / contradiction
/ hors-cible), n'écrire qu'après accord, montrer le diff, mettre à jour la date.

## Garde-fous

- **C'est secondaire.** Le SEO interne ne remplace jamais un bon packaging externe. Si
  le membre veut « rattraper » une vidéo faible par les tags, le recadrer : le maillon
  est ailleurs (packaging ? hook ? ciblage ?). Cf. étape ⑧ feedback.
- **Pas de bourrage de mots-clés.** Peu de tags justes > une liste interminable. Le
  bourrage nuit à la lisibilité et ne trompe plus l'algo.
- **Pas de description générique.** Elle part du sujet réel et du différenciateur du
  membre, écrite dans SA voix (`voix/<slug>.md`).
- **Pas de chiffres d'argent** dans la description publique (garde-fou CTP). **Pas de
  promesse / garantie de résultat** (obligation de moyens).
- **Mots interdits** : hacks, hustle, revenu passif, growth hacking.
- **« Collectif Tariqa PRO »** en entier, jamais « Tariqa PRO » seul.
- Une question à la fois. Le membre vérifie les timecodes et tranche — l'IA propose.
- Doute sur le fond/les valeurs → `ctp-compliant`.
