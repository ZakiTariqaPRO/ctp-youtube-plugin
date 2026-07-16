---
name: ctp-yt-export
description: Compile TOUT le travail YouTube du membre du Collectif Tariqa PRO en UN fichier livrable complet et VIVANT — son "playbook YouTube" pour produire au quotidien : descriptif de stratégie, mots-clés d'opportunité, liste de titres (plan éditorial), formats + structure type, miniatures (concepts/rendus), cadence, funnel. Affiche une scorecard de complétion (fait / manquant), renvoie vers le cours YouTube du Collectif sur Circle, invite le membre au témoignage au bon moment, et propose de remonter son feedback. Document de référence à re-générer pour rester à jour (pas un one-shot). Use when the user asks "exporte ma stratégie YouTube", "génère mon livrable YouTube", "compile mon travail YouTube", "mon playbook YouTube", "récapitule ma stratégie de chaîne", "prépare mon export YouTube", or wants a single shareable file of all their YouTube work.
metadata:
  version: 0.1.0
  category: tariqa-pro
---

# CTP YT Export — le playbook YouTube (livrable vivant)

Comme `ctp-export` clôt le parcours CTP par un livrable vérifiable, **`ctp-yt-export` compile tout le
travail YouTube** du membre en **un seul fichier** qu'il garde sous la main pour **produire au
quotidien**. Ce n'est pas un rapport qu'on lit une fois : c'est un **point d'appui vivant** (sujets,
mots-clés, titres, structure, miniatures) — à **re-générer** quand le travail avance.

> Lire d'abord la doctrine partagée : `../ctp-youtube/references/doctrine-youtube.md`.
> Gabarit du livrable : `references/gabarit-livrable.md`.

## Prérequis — le parcours CTP fait (sine qua non)
Vérifier `personas/<slug>.md`, `offres/<slug>.md`, `positionnement/<slug>.md`, `voix/<slug>.md`.
Manquants → STOP, renvoyer vers `lance le parcours CTP`
(plugin absent → `https://github.com/ZakiTariqaPRO/ctp-plugin.git`). Détail : doctrine §0.

## Ce que l'export LIT (tout ce qui existe dans le projet — lecture = gratuit)
- `youtube/plan-macro.md` — positionnement de chaîne, piliers, formats, funnel, cadence.
- `youtube/mots-cles-opportunite.md` — clusters de mots-clés (découverte / moat / marque).
- `youtube/plan-editorial.md` — les titres validés (mappés format × funnel).
- `youtube/analyse-formats-gagnants.md`, `youtube/scans/*` — ce qui marche + le paysage.
- `youtube/videos/*/02-packaging.md` — titres + **miniatures** (imageUrl + score) par vidéo.
- `youtube/videos/*/04-structure.md` — structures/scripts produits.
- `youtube/contexte.md`, `youtube/apprentissages.md` — écosystème + ligne éditoriale perso.
- Fondations : `personas/`, `positionnement/`, `voix/` — descriptif ancré sur l'avatar réel.
Annoncer en une ligne ce qui a été lu et ce qui manque.

## Ce que l'export ÉCRIT — un livrable unique
`youtube/PLAYBOOK-YOUTUBE.md` (le membre le garde, le partage, le rouvre chaque semaine). Sections
(gabarit détaillé : `references/gabarit-livrable.md`) :
1. **Descriptif** — la stratégie en clair (positionnement de chaîne, avatar, le POV constant).
2. **Piliers & formats** — les rôles (entrée / loyauté / dérivé) + la **structure type** d'une vidéo.
3. **Mots-clés d'opportunité** — les clusters à ranker (découverte / moat / marque).
4. **Titres** — le plan éditorial (les titres validés, par format × funnel).
5. **Miniatures** — les concepts/rendus + la signature visuelle (charte, styles retenus).
6. **Cadence & funnel** — le rythme tenable + l'étage de chaque contenu + la capture email.
7. **Prochaines actions** — quoi filmer, quoi tester (tiré du plan éditorial + backlog).

## Scorecard de complétion (toujours en tête du livrable)
Afficher un tableau **fait / à faire** par bloc (stratégie, mots-clés, plan éditorial, packaging,
structure, miniatures, cadence) — pour que le membre voie **où il en est** et ce qui reste à produire.
C'est ce qui en fait un **outil vivant** : à chaque re-génération, la scorecard avance.

## Renvoi vers le cours + témoignage + feedback (à intégrer à la fin de l'export)
> Ces liens sont la propriété du Collectif Tariqa PRO (Circle) — les membres y ont accès.

- **Cours YouTube sur Circle** — pointer le membre vers la formation qui approfondit :
  `https://collectif-tariqa-pro.circle.so/c/creation-de-contenu/sections/912936/lessons/3458492`
  (« Pour aller plus loin sur la partie création de contenu / YouTube, ce cours du Collectif l'approfondit. »)
- **Témoignage (si le membre est satisfait)** — au moment où il tient son livrable (pic de
  satisfaction), l'inviter **sans forcer** : « Si ce parcours t'a aidé, un petit témoignage / une
  story aide le Collectif à toucher d'autres frères et sœurs. » Section témoignages :
  `https://collectif-tariqa-pro.circle.so/c/sirat-le-fameux-parcours`
- **Feedback vers le Collectif** — proposer de remonter un retour (ce qui a aidé, ce qui a manqué) :
  écrire un court `youtube/feedback-parcours.md` que le membre peut copier dans Circle / envoyer.

## Routage
- Pas de `youtube/PLAYBOOK-YOUTUBE.md` → mode **CREATE** (compiler tout ce qui existe).
- Présent → mode **REFRESH** : régénérer, montrer ce qui a changé (nouveaux titres, miniatures,
  scorecard qui avance), dater. Ne jamais écraser en silence un ajout manuel du membre.

## Garde-fous
- **Ne rien inventer** : l'export **compile ce qui existe**. Un bloc vide → le marquer « à faire »
  dans la scorecard + renvoyer vers le skill qui le produit (ex. pas de titres → `ctp-yt-packaging` /
  plan éditorial). Ne pas fabriquer de faux livrable.
- **Voix + ligne du membre** respectées (lues dans `voix/`) — Z-A / Z-B / argent = thème pas perf,
  tension sans chiffre, pas de chiffres d'argent, mots interdits bannis. « Collectif Tariqa PRO » en entier.
- **Le membre garde la main** : le playbook est SON outil, à amender.
- Doute de fond → `ctp-compliant`.
