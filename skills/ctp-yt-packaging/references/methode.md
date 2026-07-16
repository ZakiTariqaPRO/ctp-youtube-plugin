# Méthode — Packaging externe YouTube

Craft détaillée du packaging. Le SKILL orchestre ; ce fichier donne la matière.

## 1. La séquence de décision (dans l'ordre)

1. **Niveau de conscience** (Schwartz 1→5, cf. doctrine §5) — qui on vise.
2. **TAM / angle le plus large possible** qui reste pertinent pour l'avatar. On
   cherche le plus grand cercle de gens concernés *sans* diluer la cible.
3. **Levier psychologique dominant** — un seul, dominant, pas cinq mous.
4. **Titre** — traduit l'angle + le levier en une phrase.
5. **Miniature** — illustre l'angle (visuel + texte court), jamais l'inverse.
6. **Cohérence** — le titre et la miniature disent la MÊME promesse, tenue ensuite
   par le hook et la vidéo.

## 2. Les leviers psychologiques (choisir UN dominant)

| Levier | Ce qu'il déclenche | Exemple d'angle |
|---|---|---|
| **Contre-intuition** | casse une croyance admise | « Pourquoi optimiser tes pubs empire ton coût » |
| **Reconnaissance douloureuse** | « c'est exactement moi » | « Tu te formes partout et toujours zéro résultat » |
| **Cas concret / preuve** | crédibilité par le réel | « Ce qu'on a changé en 90 jours sur cette chaîne » |
| **Gap de savoir** | curiosité, boucle ouverte | « Ce que YouTube fait *sous* tes ads » |
| **Enjeu / coût de l'inaction** | urgence légitime | « Pendant que ton CPM monte chaque mois » |
| **Identité** | protéger/affirmer qui on est | « Les coachs qui vendent sans faire le clown » |

Le levier doit viser l'avatar. Un levier fort sur la mauvaise audience = poison.

## 3. DAP — le filtre avatar (règle centrale)

Pour chaque titre/angle, se demander :
- **Mon avatar clique-t-il ?** (langage, douleur, niveau de conscience alignés)
- **Les non-cibles passent-ils leur chemin ?** (un bon packaging *repousse* les
  touristes — c'est voulu)
- **Qualité d'audience attendue** : haute (proche achat) / moyenne / basse (curieux).
- **Risque anti-personal** : ce titre attire-t-il des gens qui vont plomber la
  rétention et les commentaires ? Si oui → resserrer.

Un qualifieur dans le titre filtre (« si tu fais déjà des pubs », « quand ton offre
tourne déjà ») — il réduit le reach brut mais monte la qualité. Souvent souhaitable
pour un membre qui vend.

## 4. Écrire des titres qui filtrent

- **Spécificité** > vague. Un mécanisme précis > une promesse molle.
- **Qualifieur** pour cibler (« pour les coachs qui… », « si tu… déjà… »).
- **Tension / boucle** sans mentir (le hook devra tenir).
- **Bénéfice réel**, jamais chiffre d'argent, jamais garantie.
- Produire **plusieurs variantes** par angle. Le membre en écrit 10-20 de plus à la
  main — c'est là que sort le meilleur.
- Éviter : superlatifs creux, clickbait non tenu, angle déjà saturé (repéré au scan).

## 5. Concepts de miniature

- **Une** idée visuelle claire, lisible en 0,5 s, même en petit (mobile).
- Texte : 2-4 mots max, complémentaire du titre (pas une répétition).
- Tension visuelle (avant/après, contraste, regard, objet symbolique).
- Cohérence avec l'angle et le titre : même promesse.
- Prévoir des **A/B tests** (2 concepts qui testent 2 leviers).
- Garder une **signature visuelle** récurrente (identité de chaîne) — cf. `ctp-contenu`.

## 6. Croiser avec vidIQ (source, pas pilote)

- `vidiq_generate_titles` → banque d'angles bruts **à challenger**, jamais à copier.
- `vidiq_score_title` / `vidiq_score_thumbnail` → signal marché, à pondérer par l'ICP.
- `vidiq_outliers` / `vidiq_trending_videos` → ce qui marche (et ce qui est saturé).
Toujours retomber sur : est-ce juste pour MON avatar ? Le score ne tranche pas.

## 7. Tactiques minées (vidIQ, filtrées CTP)

Piocher dans `../../ctp-youtube/references/tactiques-vidiq.md`, section **PACKAGING** :
frames de titres à fort lift (+ stacking), « valider une croyance > informer », nombre
hyper-spécifique, call-out d'identité, miniatures 2026 (néo-minimalisme, texte
cinématographique, whiteboard, UI empruntée), cohésion shorts↔long, repackaging
(rétention haute + CTR bas). **Leviers à challenger**, croisés avec l'ICP — jamais à copier.

## 8. Garde-fous CTP (rappel)

Pas de chiffres d'argent, pas de garantie de résultat, pas de clickbait creux, mots
interdits bannis, angle ancré sur le différenciateur du membre. Doute de fond →
`ctp-compliant`.
