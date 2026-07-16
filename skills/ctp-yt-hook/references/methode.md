# Méthode — Hook YouTube (les 15 premières secondes)

Craft détaillée du hook. Le SKILL orchestre ; ce fichier donne la matière.

## 1. Pourquoi le hook fait ~80 % du résultat

Le clic est acquis (c'est le packaging). Le hook décide si le viewer **reste**. La
rétention est le signal n°1 que l'algo lit *après* le clic (cf. doctrine §6). Un
packaging parfait suivi d'un hook mou = vidéo morte. Règle d'or : le hook
**n'introduit pas, il augmente la tension**. On monte l'enjeu juste après le clic ; on
ne redescend jamais dans les 15 premières secondes.

## 2. L'anatomie d'un hook (dans l'ordre)

1. **Accroche** (0-3 s) — la première phrase confirme la promesse du titre/miniature.
   Le viewer doit penser « oui, c'est bien ça » avant même de respirer. Pas
   d'échauffement, pas de « salut à tous ».
2. **Qualification** (3-7 s) — on nomme l'avatar pour qu'il se reconnaisse (« si tu
   fais déjà X », « toi qui… »). Effet double : la cible se cale, les touristes
   partent. C'est **voulu**.
3. **Boucle ouverte** (7-12 s) — on ouvre une tension qui ne se referme que plus loin
   (« mais ce que personne ne te dit, c'est… », « et le problème, c'est pas celui que
   tu crois »). On promet une résolution sans la donner.
4. **Transition** (12-15 s) — on tend la main vers le corps de la vidéo sans casser la
   tension (« on va voir exactement pourquoi, mais commençons par… »).

Le hook **ne referme jamais** sa propre boucle : c'est la structure (étape ⑤) qui la
refermera.

## 3. Les formules de hook (choisir UN levier dominant)

| Formule / levier | Ce qu'il déclenche | Exemple (à réécrire dans le ton du membre) |
|---|---|---|
| **Contre-intuition** | casse une croyance admise | « Tu crois que le problème c'est ta visibilité. C'est faux. Et je vais te montrer ce qui bloque vraiment. » |
| **Preuve directe / cas client concret** | crédibilité par le réel | « Un membre du Collectif a arrêté de faire exactement ça. En trois mois, tout a changé. Voilà ce qu'il a changé. » |
| **Tension « ça ne tient pas à long terme parce que… »** | urgence légitime, enjeu | « Ce que tu fais marche… pour l'instant. Et ça va te lâcher, pour une raison que personne ne t'a dite. » |
| **Reconnaissance douloureuse** | « c'est exactement moi » | « Tu te formes partout, tu appliques, et au fond rien ne bouge vraiment. On va parler de la vraie raison. » |

Le levier doit viser **l'avatar** à **son** niveau de conscience (cf. doctrine §5). Un
levier fort sur la mauvaise audience = poison. Un seul dominant, pas quatre mous.

## 4. Capter le ton du membre depuis ses transcripts

Le hook doit sonner comme **lui**, pas comme une IA. Où chercher (`youtube/data/transcripts/`) :
- **Tics de langage** — ses mots de liaison, ses interjections, sa façon d'attaquer
  une phrase.
- **Lexique** — les mots exacts qu'il emploie pour nommer la douleur, l'objectif,
  l'avatar.
- **Rythme** — phrases courtes ou amples ? tutoiement direct ? questions rhétoriques ?
- **Formules récurrentes** — une tournure qu'il répète et qui est *à lui*.

Injecter ces éléments dans le hook. Croiser avec `voix/<slug>.md`. Le membre ne
scripte pas toute la vidéo, mais il **scripte le hook à 200 %** : c'est le seul passage
qu'on écrit mot pour mot. Lui faire lire à voix haute pour vérifier que ça sonne vrai.

## 5. Écrire les 3 hooks mot pour mot

- **Mot pour mot**, pas un brief. Le membre doit pouvoir le lire face caméra.
- **1 principal + 2 variantes**, chacun avec un **levier dominant différent** (choisis
  dans le §3) — pour que le membre teste des angles d'attaque.
- Chaque hook respecte l'anatomie du §2 (accroche → qualification → boucle → transition).
- Chaque hook **confirme** la promesse du packaging et **filtre** l'avatar.
- Court : ~15 s à l'oral = ~35-45 mots. Pas de gras, pas de mou.
- Le membre en réécrit à sa main jusqu'à ce que ça sonne comme lui — c'est là que sort
  le meilleur.

## 6. Les erreurs à bannir

- **Le résumé générique** : « Dans cette vidéo je vais vous parler de… » — relâche la
  tension au lieu de la monter. Interdit.
- **La promesse non tenue (bait-and-switch)** : un hook qui part ailleurs que le
  titre/miniature. Tue la confiance.
- **Le hook qui parle à tout le monde** : sans qualifieur, personne ne se reconnaît,
  personne ne reste. Un hook qui repousse les touristes est un bon hook.
- **L'échauffement** : « salut à tous, bienvenue sur la chaîne » avant d'entrer dans le
  sujet — les 3 premières secondes sont perdues.
- **Le ton d'IA** : lisse, impersonnel, pas ancré sur les transcripts du membre.
- **La boucle refermée trop tôt** : donner la réponse dans le hook = plus aucune raison
  de rester.

## 7. Tactiques minées (vidIQ, filtrées CTP)

Piocher dans `../../ctp-youtube/references/tactiques-vidiq.md`, section **HOOK** :
fenêtre de décision 1,5-3 s, « STOP puis STACK » (interrompre le pattern avant
d'empiler le claim), les 3 canaux d'interrupt (œil/oreille/texte), hook à peine verbal
(pattern interrupt / story framing / foreshadowing), prémisse impossible, tenir la
promesse tout de suite, cohérence d'énergie short↔long, fix rétrospectif (trimmer une
intro déjà publiée). **Leviers à challenger**, croisés avec la voix du membre.

## 8. Garde-fous CTP (rappel)

Pas de chiffres d'argent dans le hook, pas de garantie de résultat (obligation de
moyens), pas de bait-and-switch, ton ancré sur le membre (anti-générique), mots
interdits bannis (hacks, hustle, revenu passif, growth hacking), « Collectif Tariqa
PRO » en entier. Le membre tranche et réécrit. Doute de fond → `ctp-compliant`.
