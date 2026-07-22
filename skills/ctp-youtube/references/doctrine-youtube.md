# Doctrine YouTube — Collectif Tariqa PRO

> Le socle commun. Chaque agent YouTube (`ctp-yt-*`) et Coach Zaki s'y réfèrent.
> Ce n'est pas un cours « faire des vues ». C'est la mécanique de YouTube **au
> service d'un business** — pour un membre qui a déjà une offre qui se vend.

---

## 0. Prérequis absolu — le parcours CTP (sine qua non)

**Le système YouTube présuppose que le membre a DÉJÀ fait le parcours CTP.** Sans
ses fondations, aucun agent YouTube ne peut être pertinent — il produirait du
générique. C'est une **condition sine qua non**, pas une préférence.

Fichiers requis (produits par le parcours CTP) :

| Fichier | Skill du parcours | Sert à |
|---|---|---|
| `personas/<slug>.md` | `buyer-persona-architect` | l'avatar : langage, douleurs, niveau de conscience |
| `offres/<slug>.md` | `ctp-offre` | ce que le contenu doit servir (la vente) |
| `positionnement/<slug>.md` | `ctp-branding-positionnement` | l'angle unique, le différenciateur, le branding |
| `voix/<slug>.md` | `ctp-voix` | le ton du membre (titres, hooks, descriptions) |

**Règle de gate (tout agent YouTube l'applique avant de travailler) :**
1. Chercher ces fichiers dans le projet.
2. **Tous présents** → les charger, annoncer lesquels, continuer.
3. **Manquants, vides OU encore à l'état de brouillon** → **STOP**. Ne pas improviser.
   - ⚠️ **Vérifier le CONTENU, pas seulement l'existence du fichier.** Un fichier présent mais vide,
     quasi vide, ou truffé de marqueurs de brouillon (`[À VALIDER]`, `[à préciser]`, `TODO`, sections
     non remplies) = **foundation non faite**. Sinon le pipeline consomme du générique en croyant
     le socle posé. Le dire au membre : « ton `<fichier>` est encore un brouillon — on le consolide
     avant, sinon ta vidéo sera générique. »
   - **Message d'échec unique et actionnable** (le donner tel quel, en une fois) :
     > « Il me manque tes fondations CTP : `<liste des fichiers manquants/vides>`.
     > **Si tu as le parcours CTP installé** → tape `lance le parcours CTP`.
     > **Si tu ne l'as pas** → installe-le d'abord : `https://github.com/ZakiTariqaPRO/ctp-plugin.git`
     > (c'est le prérequis de ce système — sans lui, ton contenu serait générique).
     > **Si tes fichiers sont ailleurs** → donne-moi le chemin / ouvre le bon dossier. »
   - Ne pas noyer le membre : **un seul** message, puis on attend.
4. Ne **jamais** fabriquer un persona/une offre à la volée pour contourner le gate.
   Au mieux, capter une cible **express** en le disant clairement (« provisoire, à
   consolider dans le parcours ») — mais toujours pousser à faire le vrai parcours.

Le membre a fait tout ce travail juste avant ; les agents YouTube s'y **branchent**,
ils ne le refont pas.

## 0bis. Protocole DATA-FIRST (non négociable) — exploiter TOUTE la data avant de répondre

Erreur à ne jamais commettre : donner une **hypothèse** en la faisant passer pour une analyse,
sans avoir exploité les données connectées. Avant **toute** analyse ou recommandation :
1. **Inventorier les sources dispo** : MCP vidIQ (`keyword_research`, `channel_analytics` =
   trafic + **termes de recherche réels**, `channel_videos`, `outliers`, competitors,
   `ig_profile`…), les **docs de référence validés** (persona, offre, positionnement, voix,
   contexte), et les autres connecteurs branchés (IG/TikTok, GA4/Windsor…).
2. **Interroger celles qui comptent** pour la question (carte ci-dessous).
3. **Déclarer** en tête de réponse : « **Sources consultées : … · Manquantes : …** ». Le membre
   doit voir sur quoi l'analyse repose (c'est le garde-fou visible).
4. **Distinguer HYPOTHÈSE et DONNÉE** — ne jamais présenter une intuition comme un fait. Étiqueter.

**Carte data → tâche (quoi interroger pour quoi) :**
- **Mots-clés** → `keyword_research` (volume/compétition) + `channel_analytics` (dim
  `insightTrafficSourceType` + `insightTrafficSourceDetail` filtré `YT_SEARCH` = les termes qui
  ramènent DÉJÀ du trafic) + concurrents.
- **Idées / angles** → scan (outliers/competitors) + sales calls + commentaires + persona.
- **Packaging / titres** → `score_title` + outliers + ICP.
- **Feedback** → `channel_analytics` + `video_stats` + `video_comments`.
- **Contexte** → `user_channels` + `ig_profile` + docs validés.
- **Stratégie / analyse / diagnostic** → **toujours croiser le savoir expert miné**
  `tactiques-vidiq.md` (corpus vidIQ : rôles entrée/loyauté/catalyseur, buckets découverte/autorité,
  chapitrage searchable, audit abonnés-gagnés, repackaging…) + les analytics + le persona. Ne jamais
  raisonner « de mémoire » quand ce corpus existe.

Règle : si une source pertinente est **connectée**, on l'exploite **avant** de conclure. Pas
d'hypothèse à la place de la data quand la data est à portée. Coach Zaki challenge tout écart.

**Optimiser le coût (tokens + crédits vidIQ) — data-first ≠ tout tirer à chaque fois :**
- **Ciblé** : ne tirer que les sources **pertinentes** pour la question (carte ci-dessus), jamais
  le catalogue complet. Un appel vidIQ coûte des crédits (≈5/appel) → viser juste.
- **Tirer une fois → persister en MD → relire.** La data live est écrite dans un doc
  (`youtube/contexte.md`, `youtube/scans/…`, etc.) ; les étapes suivantes **lisent le doc** (quasi
  gratuit). **Ne jamais re-tirer** une data déjà capturée.
- **Data vivante sur cadence** (scan / veille périodiques), pas à chaque message : les étapes
  lisent le **dernier scan**, elles ne re-requêtent pas.
- **Gros crunch = subagent** (`ctp-yt-scan`, `-feedback`, `-veille`) en contexte isolé → le fil
  du membre reste léger (seul le rapport revient).
- La **déclaration des sources** coûte ~1 ligne (négligeable). Le coût, c'est la requête — donc on
  requête **juste**, et on annonce **toujours**.

## 1. La thèse (à ne jamais perdre)

**YouTube ne sert pas à faire le plus de vues. Il sert à faire monter la CONFIANCE
d'une audience précise jusqu'à l'achat.** Une vue non qualifiée ne vaut rien ; elle
pollue même l'algo et le taux de conversion.

Conséquence directe pour tous les agents :
- On optimise la **pertinence face à l'avatar**, pas le CTR brut ni le volume.
- On **filtre** volontairement : ceux qui ne sont pas la cible doivent partir. Un
  hook qui repousse les touristes est un bon hook.
- Le KPI final n'est jamais « les vues » — c'est **lead / client / autorité** par
  vidéo. Les vues sont un moyen, pas une fin.

Cette thèse est **la même** que celle de Coach Zaki : on ne flatte pas la vanity
metric, on cherche le résultat réel. Cf. `coach-zaki-yt`.

## 2. Moteur ≠ donnée (pourquoi ces agents sont cross-marché)

- **Le moteur** = la méthode YouTube (ces skills/subagents). Universelle,
  distribuable telle quelle à tout membre du Collectif Tariqa PRO.
- **La donnée** = ce qui est propre au membre : son ICP, ses sales calls, ses
  commentaires, ses concurrents, ses transcripts, ses métriques. Elle vit dans
  **son** projet, jamais dans le skill.

Le membre alimente. Sans data pertinente, le système ne produit rien de bon
(« IA de zéro = recyclage de ce qui existe déjà »). Plus il nourrit, plus c'est juste.

### Où vit la donnée du membre (arborescence projet)
```
personas/<slug>.md          ← ICP / avatar (skill buyer-persona-architect)
offres/<slug>.md            ← offre (skill ctp-offre)
positionnement/<slug>.md    ← angle, différenciateur (skill ctp-branding-positionnement)
voix/<slug>.md              ← ton, lexique (skill ctp-voix)
youtube/
  data/
    sales-calls/            ← transcripts d'appels de vente (PRIVÉ, jamais publié)
    commentaires/           ← commentaires des dernières vidéos
    concurrents.md          ← liste chaînes concurrentes suivies
    transcripts/            ← transcripts de SES vidéos (pour capter son ton)
  scans/<date>.md           ← sorties de ctp-yt-scan
  videos/<slug>/            ← une vidéo travaillée = un dossier
    01-idee.md   02-packaging.md   03-hook.md   04-structure.md
    05-cta.md    06-seo.md         07-feedback.md
```
> ⚠️ RGPD : les sales calls et données clients ne quittent **jamais** le projet du
> membre et ne sont **jamais** commitées dans un dépôt public. Cf. politique CTP.

## 3. L'intervention humaine est obligatoire à chaque étape

L'IA **accélère et challenge**, elle ne remplace pas. Si le membre laisse l'IA
scripter de A à Z, il devient « un clone de plus » sans unicité — donc sans
confiance, donc sans vente. Chaque agent :
- part de **l'expertise du membre** (ce que LUI veut dire), jamais d'un résumé de
  ce qui existe déjà sur YouTube ;
- propose des options **à challenger**, jamais une sortie à copier-coller ;
- termine en rappelant que le membre doit trancher / réécrire à sa main.

## 4. Le funnel (raisonner par étage, jamais en vues brutes)

Repris de `ctp-contenu`. Chaque vidéo a **un** objectif d'étage :

| Étage | Objectif | Bon KPI | Mauvais KPI |
|---|---|---|---|
| **TOFU** (découverte) | atteindre des non-abonnés qualifiés | reach non-abonnés, CTR, nouveaux abonnés qualifiés | « pas assez de ventes » (faux procès) |
| **MOFU** (considération) | éduquer, prouver la compétence, nurturer | rétention, watch time, commentaires qualifiés, sauvegardes | vues brutes |
| **BOFU** (conversion) | déclencher lead / appel / achat | clics CTA, leads, appels réservés, ventes | reach (une BOFU vise peu mais juste) |

Une vidéo jugée sur le mauvais KPI = mauvaise décision. Toujours **classer l'étage
d'abord**, puis juger.

## 5. Les niveaux de conscience (Schwartz) — le cœur du ciblage

Le viewer arrive à un des 5 niveaux. Le packaging, le hook et le CTA doivent viser
**le bon niveau** :

1. **Inconscient** du problème — le plus large, le moins qualifié.
2. **Conscient du problème**, pas de la solution.
3. **Conscient de la solution**, pas de ton offre.
4. **Conscient de ton offre / produit**.
5. **Le plus conscient** — prêt, il manque le déclic.

Règle : plus on cible haut (3→5), plus l'audience est petite mais **qualifiée et
proche de l'achat**. Plus on cible bas (1→2), plus c'est large mais froid. Un membre
qui vend juge à l'aune de la conversion → il vise souvent **2→4**, rarement 1.
Chaque agent doit savoir **quel niveau** la vidéo attaque, et rester cohérent du
titre au CTA.

## 5bis. Stade du membre, menu des formats, mots-clés d'opportunité

Trois éléments à intégrer **avant** de figer piliers/formats — et à **co-construire** avec le
membre (présenter, laisser choisir), jamais livrer un plan fini d'un coup.

**A. Le STADE décide de tout.** Ne jamais servir le même plan à qui lance de zéro qu'à un établi.
- **Lancement de zéro** (la chaîne n'existe pas encore) → objectif : se faire **découvrir** +
  construire une **identité d'expert**. Donc **UN format simple et brut**, pas d'usine à gaz.
  **Surtout pas podcast/interview au départ** (lourd à organiser + voir caveat ci-dessous).
- **Chaîne établie** → système complet (plusieurs piliers/formats ; interviews dosées pour la
  crédibilité). Toujours **demander/déduire le stade en premier**.

**B. Menu des formats — les expliquer, laisser choisir :**
- **Solo face-caméra / essai parlé** (20-30 min, brut) — l'expert parle comme dans une
  discussion. **Le meilleur format de départ** : simple, révèle la personnalité, te pose en
  EXPERT. Ce qui le fait marcher = le brut + la personnalité + l'autorité.
- **Short** — découverte, pont vers le long-form.
- **Tutoriel / how-to** — valeur pratique. · **Cas / témoignage** — preuve.
- **Interview / podcast** — ⚠️ **CAVEAT** : en interview tu es en position de **journaliste,
  pas d'expert** → ça ne construit **pas ta personnalité/ton autorité**. Utile pour emprunter
  la crédibilité d'un invité, mais **à doser**, et **jamais comme format de lancement**.
- **Réaction/actu**, **Q&R communauté**, **vlog/coulisses** — proximité/découverte.

**C. Mots-clés d'opportunité** (analyse à faire tôt, souvent oubliée). Au-delà de « qui sont
mes concurrents » : quels **termes recherchés** le membre peut réellement **ranker** dessus
(volume raisonnable + compétition faible — `vidiq_keyword_research`), puis mapper → **sujets**
couvrables → **format** adapté. C'est ce qui rend le contenu de lancement **découvrable**, pas
seulement pertinent. (La niche peut être petite en search → jouer aussi browse/suggested, cf. §8.)
  Distinguer **deux usages** : **mots-clés de DÉCOUVERTE** — adjacents à l'offre, plus
  recherchés (ex. « finance halal », « commerce halal »), pas exactement l'offre mais un
  **cheval de Troie pour se faire découvrir** — vs **contenus de CONVERSION** — piliers alignés
  à l'offre, qui transforment. YouTube = **stratégie de référencement naturel** : des contenus
  **evergreen** + **d'autorité**, répartis TOFU (découverte) / MOFU (autorité) / BOFU (conversion).

## 6. Les leviers de la mécanique (ce que chaque agent optimise)

### CTR (taux de clic) — packaging externe
Titre + miniature. Mais **CTR filtré**, pas CTR brut : c'est le **DAP (Désir Avatar
Packaging)** — faire cliquer *les bonnes personnes*, pas le maximum. Un gros CTR sur
une mauvaise audience = poison (rétention et conversion s'effondrent).
Leviers : curiosité, tension, enjeu, spécificité, gap de savoir, reconnaissance
douloureuse, contre-intuition, preuve/cas concret, identité.

**Packaging DONE-FOR-YOU (pas « voici le style »).** L'étape miniature
(`ctp-yt-packaging`) ne conseille pas un style : elle **fabrique la miniature AVEC le
membre** via le MCP vidIQ — audit de niche (`similar_thumbnails`) → génération
(`generate_thumbnail`, photo du membre en présentateur) → score (`score_thumbnail`) →
refine, **une chose à la fois**, garder le meilleur. Le parcours **fait faire**. Détail :
`../../ctp-yt-packaging/references/miniature-dfy.md`. Règle : **auditer SA niche avant de
recommander un style**, jamais appliquer un style dans l'absolu.

**Mesurer le CTR (data de vérité).** ⚠️ vidIQ **n'expose pas** le CTR d'impressions
(`channel_analytics` = views / watch time / rétention / abonnés / trafic seulement). Ne
jamais juger une miniature « trop sombre » à l'œil. La vraie mesure = **CTR + impressions
par vidéo** via le connecteur **YouTube du MCP Windsor** (voie pérenne, tâche planifiée) →
repérer les miniatures à **CTR browse/suggested bas** → **repackaging** (rétention haute +
CTR bas = re-miniature). Alimente `ctp-yt-feedback`.

### Rétention — hook + structure
- **Les 15 premières secondes font ~80 % du résultat.** Le hook confirme la promesse
  du packaging (pas de bait-and-switch), qualifie l'audience, ouvre la tension.
- **Open loops** : ouvrir des boucles (« je vais te montrer pourquoi X, mais d'abord
  Y ») et les refermer plus tard pour retenir.
- **Flow logique** début→fin, sections claires, pas de mou.
- La rétention est le signal n°1 que l'algo lit après le clic.

### APV / watch time
Durée moyenne vue. Nourrie par hook + structure + montage. L'algo pousse ce qui
retient *cette* audience, pas ce qui retient « tout le monde ».

### Conversion — CTA
Placer l'appel à l'action selon l'**awareness** et l'**état émotionnel** du viewer à
ce moment de la vidéo (début ≠ milieu ≠ fin). Soft / direct / hybride, interne
(autre vidéo) ou externe (offre, appel).

### SEO — micro-optimisation (le moins prioritaire)
Titre, description, tags, chapitrage. Utile mais secondaire : ça n'a jamais sauvé une
vidéo au mauvais packaging. Intervient **après** le tournage.

## 6bis. Capture d'email — lead magnet + page recap (système durable à installer)

YouTube ne sert pas qu'à cliquer vers un appel : il doit **capturer de l'email qualifié** — un actif
que le membre **possède**, hors plateforme (une chaîne peut être coupée ; une liste email, non). Deux
mécaniques à installer, et **le parcours doit guider le membre à les mettre en place** :
- **Règle du CTA UNIQUE, répété 3× (début · milieu · fin)** — jamais un seul en fin, jamais trois
  *différents*. Le **même** ask, mot pour mot, à trois moments (la répétition ancre ; la dispersion
  dilue — tamisé d'Hormozi : un CTA gratuit répété). On choisit LE CTA selon l'étage :
  - **TOFU / MOFU** : le **commentaire-mot-clé → lead magnet** — « écris [MOT-CLÉ] en commentaire, je
    t'envoie [le résumé / la carte] ». Engagement tôt (watch time + algo) **et** capture (mot-clé →
    DM/email, actif hors plateforme). Pas de vente. Le même à chaque fois.
  - **BOFU** : l'**offre** — « réserve un appel » / la 1re petite étape. Répétée pareil aux 3 moments.
- **Le maillage interne + la passe (session time)** : YouTube crédite la chaîne quand le viewer
  **continue à regarder APRÈS** ta vidéo (`wjuj6NeI9II`). Donc (a) **renvoyer** (voix + carte) vers ses
  autres vidéos dès qu'un sous-sujet y est traité, et (b) **la passe** : à ~80 %, **amorcer à la voix**
  la vidéo **suivante du funnel** (la plus pertinente, pas la dernière) + **end card**. Une vidéo n'est
  **jamais orpheline** (cf. la carte `youtube/funnel-audit.md`). C'est ce qui fait l'**entonnoir**.
- **Automatisation « vidéo → page recap »** : chaque vidéo génère une **page web** (idées clés,
  sources, timestamps) sur le site du membre → (1) **éclate le contenu + SEO evergreen**, (2)
  **capture l'email** (la page héberge le lead magnet). Où vit la base email = à décider avec le membre.
C'est un **système pérenne d'acquisition qualifiée**, pas un CTA ponctuel. Coach Zaki le rappelle
transversalement (cf. son fichier `youtube-challenge.md`).

## 7. Les métriques qui comptent (pour le feedback)

Dans l'ordre de lecture d'une vidéo postée :
1. **CTR** (le packaging a-t-il fait cliquer la bonne audience ?)
2. **Rétention / APV** (le hook + la structure ont-ils tenu ?)
3. **Qualité d'audience** (abonnés gagnés qualifiés ? commentaires du bon type ?)
4. **Commentaires** (volume ET nature — objection, intérêt d'achat, hors-cible ?)
5. **Conversions** (leads, appels, ventes attribués — la vraie mesure)

Un diagnostic ne dit jamais « bien / pas bien » : il **isole le maillon** (packaging ?
hook ? structure ? CTA ? ciblage ?) et propose l'itération.

## 8. Où vidIQ entre en jeu (données marché LIVE)

Le MCP vidIQ remplace le « scan concurrent nourri à la main ». Outils utiles :
- **Marché / idées** : `vidiq_outliers`, `vidiq_trending_videos`,
  `vidiq_keyword_research`, `vidiq_youtube_search`, `vidiq_channel_search`,
  `vidiq_similar_channels`, `vidiq_list_competitors` / `vidiq_update_competitors`.
- **Concurrents** : `vidiq_channel_stats`, `vidiq_channel_videos`,
  `vidiq_channel_analytics`, `vidiq_breakout_channels`.
- **Packaging (test)** : `vidiq_score_title`, `vidiq_score_thumbnail`,
  `vidiq_generate_titles` (comme source d'angles à challenger, **pas** à copier).
- **Feedback / audience** : `vidiq_video_stats`, `vidiq_video_comments`,
  `vidiq_video_transcript`, `vidiq_channel_performance_trends`.

> vidIQ est une **source à challenger**, jamais un pilote automatique. Un score vidIQ
> élevé sur un titre hors-avatar reste un mauvais titre. On croise toujours avec
> l'ICP du membre.

**Banque de tactiques minée + filtrée** : `tactiques-vidiq.md` (même dossier) — 50
vidéos de la chaîne vidIQ passées au tamis CTP, rangées par agent cible (packaging,
hook, structure, scan, doctrine), chaque nugget sourcé par `videoId`. Chaque agent
consulte la section qui le concerne — ce sont des **leviers à challenger**, croisés
avec le persona/l'offre/la voix, jamais des recettes à copier.

## 9. Garde-fous Collectif Tariqa PRO (valables pour tous les agents)

- **Mots interdits** (jamais) : *hacks, hustle, revenu passif / passive income,
  growth hacking*.
- **Pas de garantie de résultat** : obligation de moyens, pas de résultat (« les
  causes se font, le résultat est à Dieu »). Aucune promesse chiffrée de vues/CA.
- **Pas de chiffres d'argent mis en avant** dans les sorties publiques (titre,
  miniature, hook, description). Le pricing/CA reste donnée interne.
- **Pas de clickbait creux** : la promesse du packaging doit être tenue dans la
  vidéo. 1 vidéo = 1 intention claire, titre orienté bénéfice réel.
- **« Collectif Tariqa PRO »** en entier, jamais « Tariqa PRO » seul.
- **Anti-générique** : on part de l'expertise unique du membre. Refuser de produire
  un contenu qui n'est qu'un résumé de ce qui existe déjà.
- Cohérence de fond → déléguer à `ctp-compliant` en cas de doute valeurs/vision.

## 10. Le pipeline (ordre canonique)

```
① SCAN      ctp-yt-scan (subagent)      → opportunités, angles, objections marché
② CHALLENGE coach-zaki-yt(lentille YT)     → démonte l'idée, score, verdict, brief
③ PACKAGING ctp-yt-packaging (skill)     → angles, titres, concepts miniature, DAP
④ HOOK      ctp-yt-hook (skill)          → 15 premières secondes, variantes
⑤ STRUCTURE ctp-yt-structure-video (skill) → anatomie de la vidéo : intro, open loops,
            transitions, pacing, quicken, shift + rendu (mind map / fil conducteur /
            script complet — écriture optionnelle). Depuis un thème+idées ou un vocal.
⑥ CTA       ctp-yt-cta (skill)           → placement appels à l'action (awareness)
── tournage + montage par le membre (hors IA) ──
⑦ SEO       ctp-yt-seo (skill)           → packaging interne, tags, chapitrage
── upload, attendre 48-72h ──
⑧ FEEDBACK  ctp-yt-feedback (subagent)   → diagnostic métriques, itération
```
Orchestré par `ctp-youtube`. Coach Zaki peut intervenir à **toute** étape faible
(idée floue, hook mou, CTA absent), pas seulement à l'étape ②.
