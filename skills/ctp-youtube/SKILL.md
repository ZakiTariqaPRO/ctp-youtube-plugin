---
name: ctp-youtube
description: Chef d'orchestre du système YouTube du Collectif Tariqa PRO. Guide le membre de l'idée à la vidéo prête à tourner, dans le bon ordre (scan → challenge → packaging → hook → structure → CTA → SEO → feedback), en lançant le bon agent à chaque étape et en faisant intervenir Coach Zaki pour challenger. Ne fait PAS de vues pour les vues : il vise la pertinence face à l'avatar et la conversion. Use when the user asks "lance le système YouTube", "je veux faire une vidéo YouTube", "aide-moi à préparer une vidéo", "par où je commence ma vidéo", "travaille ma chaîne YouTube", "prépare mon contenu YouTube", "start youtube", or doesn't know which YouTube agent utiliser.
metadata:
  version: 1.0.0
  category: tariqa-pro
---

# CTP YouTube — le chef d'orchestre du contenu YouTube

Point d'entrée unique du système YouTube du Collectif Tariqa PRO. Il fait passer une
idée de vidéo **de la page blanche à une vidéo packagée, scriptée dans son squelette
et prête à tourner** — sans jamais remplacer le membre, et en gardant un seul cap :
**la pertinence face à l'avatar, pas les vues brutes.**

> Avant tout : **lire `references/doctrine-youtube.md`.** C'est le socle commun
> (thèse, funnel, niveaux de conscience, leviers, garde-fous CTP). Tous les agents
> s'y réfèrent. Ne pas improviser une méthode YouTube à côté.

## Prérequis absolu — le parcours CTP fait (à vérifier AVANT tout)

**Condition sine qua non.** Avant de lancer quoi que ce soit, vérifier que le membre a
fait le parcours CTP — les agents YouTube s'y branchent, ils ne le refont pas.

Chercher dans le projet : `personas/<slug>.md`, `offres/<slug>.md`,
`positionnement/<slug>.md`, `voix/<slug>.md`.
- **Tous présents** → les charger, annoncer lesquels, continuer.
- **Manquants / vides** → **STOP, ne pas improviser.** Demander : « où sont tes fichiers
  persona / offre / positionnement / voix ? As-tu fait le parcours CTP ? » Puis :
  - existent ailleurs → demander le chemin / le bon projet ;
  - n'existent pas → « Fais d'abord le parcours CTP, sinon ta vidéo ne peut pas être
    pertinente. Tape `lance le parcours CTP`. » (plugin absent → dépôt :
    `https://github.com/ZakiTariqaPRO/ctp-plugin.git`) ;
  - le membre insiste pour avancer quand même → possible en **cible express**
    explicitement provisoire, mais rappeler que le résultat sera moins juste et pousser
    à faire le vrai parcours.

Détail complet du gate : `references/doctrine-youtube.md` §0. Ce gate vaut aussi quand un
agent `ctp-yt-*` est appelé **directement** (hors orchestrateur).

## Principe fondateur — moteur ≠ donnée

- **Le système** = le moteur (méthode YouTube). Universel, distribuable à tout membre.
- **La donnée** = propre au membre (ICP, sales calls, commentaires, concurrents,
  transcripts, métriques). Vit dans **son** projet sous `youtube/` et les docs CTP
  (`personas/`, `offres/`, `positionnement/`, `voix/`). Jamais dans le skill.

Sans data pertinente nourrie par le membre, le système recycle du générique. On le
dit au membre dès le départ.

## Bloc 0 — Contexte & connexion (AVANT toute stratégie)

On ne planifie rien sans comprendre le paysage réel du membre et sans se brancher à sa data.
Premier réflexe à chaque démarrage :

1. **La chaîne existe-t-elle ?** Demander/détecter : chaîne établie (avec historique) ou
   **lancement de zéro** ? C'est le **STADE**, il change tout le plan (doctrine §5bis-A). Des
   membres CTP arrivent déjà avec une chaîne — ne pas supposer qu'on part de zéro.
2. **Se brancher à la donnée réelle** (pas aux suppositions).
   - Canal principal : le **MCP vidIQ** (chaîne connectée, concurrents, mots-clés, métriques).
     Vérifier via `vidiq_user_channels`.
   - **Absent → le proposer** : installer le MCP vidIQ (dépendance externe, possiblement
     **payante** — le dire franchement), avec le lien / la marche à suivre. Ne pas bloquer si
     refus : travailler en dégradé (data fournie à la main), en le signalant.
3. **Cartographier l'écosystème** — dans quel paysage on s'insère :
   - autres réseaux qui envoient du flux (Instagram, TikTok…) ? · un site / landing / tunnel
     (où atterrit le trafic) ? · une audience/communauté existante (mailing, Circle…) ?
   - rappeler l'offre + le positionnement (déjà posés par le parcours CTP).
4. **Écrire `youtube/contexte.md`** (stade, chaîne, connecteurs, écosystème, sources de trafic)
   et le **consulter en amont** de chaque étape suivante.

> Principe : **toujours se brancher à la donnée réelle + toujours consulter les docs de
> référence validés (persona, offre, positionnement, contexte) EN AMONT**, jamais partir d'une
> supposition — et **co-construire** : valider le contexte avec le membre avant d'avancer.

## Les agents (le pipeline)

| # | Étape | Agent | Type | Produit |
|---|---|---|---|---|
| ① | **Scan** — que dit le marché | `ctp-yt-scan` | subagent | `youtube/scans/<date>.md` |
| ② | **Challenge** — l'idée tient ? | `coach-zaki` (lentille YT) | skill | verdict + brief |
| ③ | **Packaging** — angle/titre/miniature | `ctp-yt-packaging` | skill | `.../02-packaging.md` |
| ④ | **Hook** — 15 premières secondes | `ctp-yt-hook` | skill | `.../03-hook.md` |
| ⑤ | **Structure vidéo** — anatomie de la vidéo | `ctp-yt-structure-video` | skill | `.../04-structure.md` |
| ⑥ | **CTA** — appels à l'action | `ctp-yt-cta` | skill | `.../05-cta.md` |
| — | *tournage + montage* | *le membre* | — | — |
| ⑦ | **SEO** — packaging interne | `ctp-yt-seo` | skill | `.../06-seo.md` |
| ⑧ | **Feedback** — diagnostic 48-72h | `ctp-yt-feedback` | subagent | `.../07-feedback.md` |

`ctp-yt-scan` et `ctp-yt-feedback` sont des **subagents** (ils crunchent de la data —
vidIQ, commentaires, métriques — et renvoient un rapport). Les 5 autres sont des
**skills interactifs** : ils dialoguent avec le membre, une question à la fois.

> **⑤ Structure vidéo — l'anatomie de la vidéo.** `ctp-yt-structure-video` donne au membre
> l'**structure d'une bonne vidéo** appliquée à SON sujet : comment ouvrir l'intro,
> la mécanique des **open loops** (ouvrir/refermer), les **transitions**, le **pacing**,
> le **quicken** et le **shift moment**. Entrée : un **thème + quelques idées** (léger) ou
> un **vocal d'expertise** (riche). L'**écriture est optionnelle** : le membre choisit le
> rendu — **mind map**, **fil conducteur** (roue libre) ou **script complet** (voix CTP).
> Il finit toujours en renvoyant le membre à l'appropriation (l'unicité vend).

## Au tout premier lancement — vérifier la data et présenter Coach Zaki

Si `youtube/` n'existe pas encore (= premier lancement pour ce projet) :
1. **Expliquer moteur ≠ donnée** en une ligne, et lister la data à réunir (ICP,
   sales calls, commentaires récents, 5-10 concurrents, transcripts de ses vidéos).
   Ne pas bloquer si tout n'est pas là — mais prévenir que le scan sera plus pauvre.
2. **Présenter Coach Zaki comme la couche challenge du système** (s'il n'a pas déjà
   été réglé via `ctp/coach-mode.md`) : « À chaque étape, Coach Zaki peut cogner une
   idée floue, un hook mou, un CTA absent. C'est lui l'agent qui te démonte pour que
   tu creuses plus loin. » Respecter son mode (`actif` par défaut).
3. Créer l'arborescence `youtube/` (cf. doctrine §2) à la première vidéo.

## Ce que fait ce skill à chaque déclenchement

1. **Identifier le projet** (quel slug/persona). Si plusieurs, demander lequel.
2. **Scanner l'état** de la vidéo en cours dans `youtube/videos/<slug>/` : quels
   fichiers d'étape existent (01→07), lesquels manquent.
3. **Afficher la carte** du pipeline avec un statut par étape :
   - ✅ fait · 🟡 commencé · ⬜ pas commencé.
4. **Recommander la prochaine étape** = la première non faite dans l'ordre canonique.
   Expliquer la dépendance en une ligne.
5. **Lancer l'agent** correspondant (annoncer : « j'ouvre l'étape X »). Pour un
   subagent, le déléguer ; pour un skill, l'invoquer.
6. À la fin d'une étape : reproposer la carte + l'étape suivante. Après packaging,
   hook et structure : proposer un passage **Coach Zaki** pour challenger.

## Règles d'orchestration

- **Ordre canonique, dépendances explicites.** Le packaging dépend d'une idée
  validée (① + ②). Le hook confirme le packaging (③). La structure part du hook (④)
  et pose l'anatomie de la vidéo (intro, boucles, transitions, pacing, quicken, shift).
  Le CTA lit la structure (⑤). Ne jamais sauter une dépendance en silence — signaler,
  proposer de remonter, ne pas bloquer si le membre insiste.
- **Une étape à la fois.** Pas deux agents en parallèle.
- **Coach Zaki est transversal.** Pas seulement l'étape ②. Dès qu'une sortie est
  faible ou que le membre se contente du minimum, proposer/déclencher `coach-zaki`
  (selon son mode).
- **Intervention humaine forcée.** À chaque étape, rappeler que le membre tranche et
  réécrit à sa main. Les agents proposent, ils ne décident pas.
- **SEO + Feedback = après le tournage.** Ne pas les lancer avant l'upload.
- **Multi-vidéos** : chaque vidéo = un dossier `youtube/videos/<slug>/`.

## Affichage type (exemple)

```
PIPELINE YOUTUBE — vidéo « ads-vs-youtube »
① Scan ............ ✅
② Challenge ....... ✅ (verdict Coach Zaki : 49/100 → idée retravaillée)
③ Packaging ....... 🟡 (angles proposés, titre pas tranché)
④ Hook ............ ⬜
⑤ Structure .... ⬜ (anatomie : intro, boucles, transitions, pacing, shift · rendu au choix)
⑥ CTA ............. ⬜
⑦ SEO ............. ⬜ (après tournage)
⑧ Feedback ........ ⬜ (après upload)

→ Prochaine étape : trancher le titre puis finir le packaging (③).
  J'ouvre `ctp-yt-packaging` ? (ou je fais cogner l'angle par Coach Zaki d'abord ?)
```

## Rituel à chaque étape (repère + pédagogie) — non négociable

Ne jamais se contenter de « c'est fait, au suivant ». À chaque lancement ET à la fin de
chaque étape, dans cet ordre :
1. **Rappeler la carte** du pipeline (① → ⑧, + les blocs macro : positionnement, piliers,
   formats, funnel, packaging, cadence, plan éditorial) avec le statut ✅/🟡/⬜ — le membre
   ne doit **jamais être perdu dans son propre parcours**.
2. **Lier les livrables** produits (**chemins absolus**) pour qu'il consulte / affine.
3. **Rappel pédagogique — le POURQUOI** (2-3 lignes) : ce qu'on vient de valider, pourquoi
   ça compte, et le **principe** derrière — puisé dans `references/doctrine-youtube.md`,
   `references/tactiques-vidiq.md` et la voix de Zaki. Le membre doit se sentir **en
   formation**, pas tenu par la main.
4. **Annoncer la prochaine étape** + sa dépendance (pourquoi maintenant).

**Avant toute analyse** : appliquer le **protocole DATA-FIRST** (doctrine §0bis) — exploiter les
sources connectées (vidIQ keyword_research + channel_analytics, docs validés…), **déclarer
« Sources consultées / manquantes »**, et ne jamais donner une hypothèse pour une donnée.

Ton : guider **sans infantiliser** — on explique le système, pas seulement l'action prochaine.
Coach Zaki renforce cette couche pédagogique à chaque intervention.

## Garde-fous

- On guide, on ne fait pas le travail à la place du membre.
- Toujours partir de l'état réel des fichiers, jamais d'une supposition.
- Respecter la voix de chaque agent (ce skill route, il ne rédige pas le contenu).
- Garde-fous CTP de la doctrine (§9) valables partout : mots interdits, pas de
  garantie de résultat, pas de chiffres d'argent en public, anti-générique.
