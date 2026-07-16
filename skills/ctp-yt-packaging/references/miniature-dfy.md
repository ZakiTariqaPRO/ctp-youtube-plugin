# Miniature DONE-FOR-YOU — la boucle assistée (MCP vidIQ)

> Le parcours ne **conseille pas** un style de miniature : il la **fabrique AVEC le membre**.
> Ce fichier est le **moteur** — générique, distribuable à tout membre du Collectif Tariqa PRO.
> Aucune donnée d'un membre en dur : le membre apporte sa **photo**, son **winner de niche**, sa
> **charte** (issue de `positionnement/` + `voix/`). Le skill lit ces docs, il ne les invente pas.

Déclenchée **après le titre validé** (fin de `02-packaging.md`). Dépend du MCP **vidIQ connecté**
(signaler la dépendance externe si absent, ne pas bricoler).

---

## Ce qu'il faut avant de lancer (entrées)

| Entrée | Source | Sans elle |
|---|---|---|
| **Titre + angle validés** | `youtube/videos/<slug>/02-packaging.md` | STOP — pas de packaging sans idée/titre |
| **Photo du membre** (`subjectImage`) | fournie par le membre (URL hébergée ou upload) | générer sans visage = likeness inventée → **demander la photo d'abord** |
| **Charte visuelle** | `positionnement/<slug>.md` + `voix/<slug>.md` | reprendre la palette/registre du membre, jamais un défaut générique |
| **Un winner de SA niche** | scan / `channel_videos` d'un concurrent / videoId connu | audit de niche impossible → au pire décrire le style en texte |

> ⚠️ **Garde-fou likeness** : sans `subjectImage`, ne pas générer « pour voir ». La miniature DFY
> met le **membre** dans l'image (présentateur). Pas de photo = on s'arrête et on la demande.

## Budget crédits — TOUJOURS annoncer avant chaque appel payant

| Appel | Coût | Rôle |
|---|---|---|
| `vidiq_similar_thumbnails` | **5 cr** | audit du style gagnant de la niche |
| `vidiq_generate_thumbnail` | **22 cr** | fabrique la maquette |
| `vidiq_score_thumbnail` | **5 cr** | note CTR + strengths/improvements |
| `vidiq_refine_thumbnail` | **22 cr** | itération ciblée (1 changement) |

Annoncer le coût **avant** de lancer un appel ≥ 22 cr et **attendre le GO du membre**. Vérifier le
solde avec `vidiq_balance` (0 cr) si doute. Une boucle complète type = **audit 5 + gen 22 + score 5
+ 1 refine 22 ≈ 54 cr**. Ne pas régénérer juste pour gratter du score.

---

## La boucle (co-construction, une décision à la fois)

### Étape 1 — Audit (5 cr) : cadrer le style qui GAGNE, jamais l'absolu
⚠️ **Ne pas auditer la niche brute.** Une niche peu mature en marketing (peu de chaînes packagent
bien) n'est **pas un benchmark de craft** — ses winners gagnent par sujet, pas par miniature.
- **Demander au membre sa whitelist** : les 3-5 chaînes de SA niche qui font de **bonnes**
  miniatures (il les connaît souvent). Auditer **celles-là** (`similar_thumbnails` sur un de leurs
  winners, ou `channel_videos`), **pas** la niche entière. Whitelist = SA data → la persister dans
  `youtube/data/references-miniatures.md` (jamais dans le skill).
- **Voie GRATUITE de moodboard** (recommandée, 0 crédit — merci Yesir, membre du Collectif) : les
  miniatures YouTube sont téléchargeables par URL prévisible → `https://img.youtube.com/vi/{ID}/maxresdefault.jpg`
  (repli `hqdefault.jpg`). Récupérer 5 vidéos/chaîne de la whitelist → **dossier moodboard** +
  **`ANALYSE.md`** (codes de la niche, signature par chaîne, espaces de différenciation). **Base
  durable réutilisable** — pas à refaire à chaque vidéo. Usage **référence uniquement**, jamais
  republier/copier. C'est **moins cher que `similar_thumbnails`** (payant) et persistant.
- **Compléter par niche-bending** : emprunter à une niche **adjacente plus mature** (le style, pas
  le sujet) — moodboard-download ci-dessus, ou `similar_thumbnails` en `description` du style visé.
- **Mapper sur le menu des 11 styles** (`references/styles-miniature-2026.md`) — dire « les bonnes
  réfs = style #X (+#Y) » (ex. #6 texte cinématographique + #4/#9/#3 framework illustré). Vocabulaire
  concret, pas un « note le pattern » flou.
- Noter : visage · **élément illustratif central** (framework/méthodo/outil ?) · nb de mots ·
  placement/couleur texte · contraste · symboles. Rappeler les méta-règles (durée de vie · maturité
  · niche-bending · test feed).
- Restituer réfs + style(s) en 2-3 lignes → **valider la direction** avant de dépenser 22 cr.

### Étape 2 — Génération : choisir le backend (dépendance à annoncer)
**Générateur-agnostique** — deux backends, à annoncer + laisser choisir selon ce que le membre a :

| Backend | Dépendance | Coût indicatif | Note |
|---|---|---|---|
| **vidiq_generate_thumbnail** | MCP vidIQ (déjà requis pour l'audit) | ~22 cr/gen | `subjectImage`=photo, `userQuery`=direction, `orientation` |
| **Higgsfield / `nano_banana_pro`** | MCP Higgsfield (**abonnement payant**) | ~2 cr/gen en 1K | fort en **typo + likeness** ; **upload photo local propre** (`media_upload`→`media_confirm`, pas de host tiers) ; itérer en **1K**, passer **2K/4K au rendu final seulement** |

> ⚠️ **Disclaimer dépendances** (à dire au membre) : ces générateurs sont des **dépendances de
> préférence payantes**. Le moteur n'en impose aucune. **Voie gratuite** disponible → étape 2bis.

Puis, quel que soit le backend :
- **Photo du membre** en référence (`subjectImage` vidiq / `medias` Higgsfield via upload local).
- **Titre** validé en grounding.
- **Direction créative ancrée** = style retenu (étape 1) + **charte du membre** + **checklist DA**
  (`styles-miniature-2026.md`) + garde-fous. C'est le signal le plus fort → y mettre tout le cadrage.
- **16:9** (long-form) ; la variante Shorts en **9:16** (étape 5).
- Restituer l'**imageUrl** dans la réponse (l'aperçu inline n'est pas téléchargeable).

### Étape 2bis — Voie 100 % GRATUITE (aucune dépendance payante)
Si le membre ne veut aucun abonnement : **le skill produit le PROMPT complet** (gabarit ci-dessous,
appliquant style + charte + checklist DA + garde-fous) que le membre **colle lui-même** dans l'outil
image gratuit de son choix. On perd la génération en un clic, pas la méthode. Toujours **proposer
cette voie** avant d'assumer que le membre paiera un abonnement.

**Gabarit de `userQuery` (à remplir avec les docs du membre, ne rien coder en dur) :**
> « [style retenu du menu, ex. texte cinématographique #6] ; visage expressif [membre] ;
> **élément illustratif central** qui dépeint le contenu — [framework en N étapes → schéma N blocs /
> méthodo → schéma / outil → rendu / concept → objet symbolique], centré, lisible en petit ;
> palette [charte du membre] ; texte « [2-4 mots issus du titre] » qui vit dans la scène ;
> **image ultra-nette, haute résolution** ; **pas de** [figuration interdite selon la ligne du
> membre] ; **aucun chiffre**, aucune tension par le montant ; cohérent avec l'identité de chaîne. »

> ⭐ **Élément illustratif central obligatoire** dès que la vidéo repose sur un framework / une
> méthodo / un outil : pas qu'un visage + texte — un vrai visuel qui **habille** la miniature (cf.
> `styles-miniature-2026.md` § élément illustratif central). 1 sujet + 1 illustration porteuse +
> texte court, sans surcharge.

### Étape 3 — Score (5 cr) : `vidiq_score_thumbnail`
Passer `videoId` + `title` + `image=<imageUrl généré>`. Lire la note (0-100) + strengths +
improvements. **Rubrique : la netteté/clarté du visage pèse lourd (~48 pts)** → une image floue
plafonne quoi qu'il arrive. Traiter le score comme une **estimation**, pas un verdict (le croiser
avec le DAP : est-ce que MON avatar clique ? cf. `methode.md` §3). Ne pas mener la restitution par
le chiffre.

### Étape 4 — Itérer : UN changement à la fois, garder le meilleur
Prendre **le plus gros levier** des `improvements` et le corriger **seul** :
- `vidiq_refine_thumbnail` (22 cr) — `sourceThumbnail=<imageUrl>`, `instructions=` le changement en
  clair (« grossis le texte », « visage plus net », « fond plus contrasté »), `subjectImage=` la
  photo si le visage doit rester fidèle. Annoncer les 22 cr, GO, puis lancer.
- **ou** re-générer en passant le `feedback` du score (`score`/`strengths`/`improvements`) +
  `referenceImages=[imageUrl]` → flux d'itération guidée par le feedback.
- Re-scorer (5 cr) si besoin de trancher. **Garder la meilleure version**, pas la dernière.
- S'arrêter dès que c'est validé par le membre — pas de course au score.

### Étape 5 — Sortie : finale + 1 variante A/B, cohérence shorts ↔ long
- Livrer l'**imageUrl finale** + le **score**.
- Produire **1 variante A/B** qui teste **un** levier différent (autre texte, autre expression,
  autre symbole) — à départager plus tard sur la vraie data CTR (cf. voie CTR ci-dessous).
- **Cohésion shorts ↔ long** : même palette / expression / décor ; générer la version `portrait`
  (Shorts) alignée. La reconnaissance visuelle va plus vite que la lecture.
- Écrire les imageUrl + la décision dans `youtube/videos/<slug>/02-packaging.md` (daté, sourcé).

---

## Garde-fous (sur TOUTE la boucle)

- **Netteté d'abord.** Image ultra-nette et lisible en petit (mobile) — la rubrique de score y
  pèse ~48 pts, et une miniature molle ne convertit pas.
- **DAP > CTR brut.** On cherche le clic des **bonnes** personnes (l'avatar), pas le max. Un visuel
  qui ramène des touristes tue rétention + conversion.
- **Ligne du membre respectée** (elle vit dans SES docs `voix/`, `positionnement/`) — ex. pour
  certains membres : **pas de figuration** de figures religieuses ; **tension sans chiffre**.
  Le skill lit la ligne, il ne la fixe pas.
- **Pas de chiffres d'argent** en miniature ; **pas de promesse de résultat** (obligation de
  moyens). **Mots interdits** bannis (hacks, hustle, revenu passif, growth hacking).
- **Pas de clickbait creux** : la miniature dit la MÊME promesse que le titre — tenue par le hook +
  la vidéo.
- **Anti-générique** : la direction part du différenciateur du membre + du pattern de SA niche,
  jamais d'un style « dans l'absolu ».
- **Le membre tranche.** L'IA fabrique et propose ; il valide chaque décision et garde la main.

---

## Voie CTR (data de vérité) — brancher la mesure, pas deviner à l'œil

⚠️ **vidIQ N'EXPOSE PAS le CTR d'impressions** (vérifié : `channel_analytics` n'a que views / watch
time / rétention / abonnés / trafic). Juger une miniature « trop sombre » **à l'œil** = hypothèse,
pas donnée. La vraie mesure = **CTR + impressions par vidéo** (YouTube Studio → Reach).

**Voie GRATUITE (aucun abo)** : le CTR + les impressions sont dans **YouTube Studio → onglet Couverture
(Reach)**. Demander au membre de **relever son CTR** là (par vidéo) et de le fournir — zéro dépendance.
C'est déjà la source qu'utilise `ctp-yt-feedback`. Le connecteur Windsor ci-dessous **automatise** cette
lecture (option payante), il ne la remplace pas.

**Voie pérenne (automatisée) = connecteur YouTube du MCP Windsor** (même patron que taap.it → GA4 → Windsor) :
1. **Dépendance externe** : le membre doit avoir **autorisé le connecteur YouTube dans Windsor**.
   Vérifier via `get_connectors`. Absent → le **signaler** et s'arrêter là (ne pas bricoler).
2. Tirer **impressions + CTR par vidéo** (`get_fields` puis `get_data`, connector `youtube`).
3. **Tâche planifiée pérenne** (scheduler) : suivre le CTR dans le temps, repérer les miniatures à
   **CTR browse/suggested bas** (là où la miniature décide le clic).
4. **Boucle de repackaging** : **rétention haute + CTR bas = contenu bon, porte défaillante** →
   re-miniaturiser (revenir à l'étape 1). Ce signal alimente **`ctp-yt-feedback`**.

C'est la fermeture de boucle : la miniature DFY **fabrique**, la mesure CTR **valide et corrige**.
