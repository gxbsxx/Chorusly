---
name: Chorusly
description: Unified chat, alerts, goals and ranking for OBS; everything real that happens on stream lands as a die-cut sticker on a calm ink sheet.
colors:
  ink: "#15132a"
  ink-sheet: "#1c1938"
  ink-raise: "#29254d"
  ink-raise-hover: "#342f5c"
  keyline: "#2f2a4d"
  keyline-hover: "#463f72"
  lilac-mute: "#a49cc8"
  lilac-white: "#eeeaff"
  sticker-paper: "#f2efe9"
  gift-pink: "#fe2c55"
  gift-pink-hover: "#ff4a6e"
  room-cyan: "#25f4ee"
  sub-yellow: "#ffd23f"
  bits-violet: "#a78bfa"
  share-green: "#4ade80"
  raid-orange: "#ff8a3d"
  redeem-blue: "#60a5fa"
  warning-red: "#ff3b5c"
  live-green: "#12b76a"
  platform-twitch: "#9146ff"
  platform-youtube: "#ff0033"
  platform-tiktok: "#25f4ee"
  platform-kick: "#53fc18"
typography:
  display:
    fontFamily: "Bricolage Grotesque, system-ui, sans-serif"
    fontSize: "30px"
    fontWeight: 800
    lineHeight: 1.1
    letterSpacing: "-0.02em"
  headline:
    fontFamily: "Bricolage Grotesque, system-ui, sans-serif"
    fontSize: "20px"
    fontWeight: 800
    lineHeight: 1.15
    letterSpacing: "-0.01em"
  title:
    fontFamily: "Bricolage Grotesque, system-ui, sans-serif"
    fontSize: "18px"
    fontWeight: 800
    lineHeight: 1.2
    letterSpacing: "-0.01em"
  sticker:
    fontFamily: "Bricolage Grotesque, system-ui, sans-serif"
    fontSize: "1em"
    fontWeight: 800
    lineHeight: 1.2
  button:
    fontFamily: "Bricolage Grotesque, system-ui, sans-serif"
    fontSize: "13px"
    fontWeight: 700
    lineHeight: 1
    letterSpacing: "0.01em"
  section-label:
    fontFamily: "Bricolage Grotesque, system-ui, sans-serif"
    fontSize: "11px"
    fontWeight: 800
    lineHeight: 1.2
    letterSpacing: "0.08em"
  tag:
    fontFamily: "Bricolage Grotesque, system-ui, sans-serif"
    fontSize: "10.5px"
    fontWeight: 800
    lineHeight: 1.55
    letterSpacing: "0.05em"
  chat:
    fontFamily: "Segoe UI, system-ui, sans-serif"
    fontSize: "14px"
    fontWeight: 400
    lineHeight: 1.45
  label:
    fontFamily: "Segoe UI, system-ui, sans-serif"
    fontSize: "12px"
    fontWeight: 400
    lineHeight: 1.4
  mono:
    fontFamily: "ui-monospace, Consolas, monospace"
    fontSize: "12.5px"
    fontWeight: 600
rounded:
  tag: "5px"
  chip: "8px"
  control: "10px"
  sticker: "11px"
  panel: "12px"
  card: "16px"
  alert: "18px"
  welcome: "22px"
  pill: "99px"
  round: "50%"
spacing:
  hair: "2px"
  xs: "4px"
  sm: "6px"
  md: "8px"
  lg: "10px"
  xl: "14px"
  card: "18px"
  page: "24px"
components:
  button-primary:
    backgroundColor: "{colors.gift-pink}"
    textColor: "{colors.ink}"
    typography: "{typography.button}"
    rounded: "{rounded.control}"
    padding: "0 14px"
    height: "38px"
  button-primary-hover:
    backgroundColor: "{colors.gift-pink-hover}"
  button-secondary:
    backgroundColor: "{colors.ink-raise}"
    textColor: "{colors.lilac-white}"
    typography: "{typography.button}"
    rounded: "{rounded.control}"
    padding: "0 14px"
    height: "38px"
  button-secondary-hover:
    backgroundColor: "{colors.ink-raise-hover}"
  dock-tool:
    textColor: "{colors.lilac-white}"
    typography: "{typography.button}"
    rounded: "{rounded.control}"
    height: "34px"
    padding: "0 6px"
  input:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.lilac-white}"
    rounded: "{rounded.control}"
    padding: "0 11px"
    height: "38px"
  card:
    backgroundColor: "{colors.ink-sheet}"
    textColor: "{colors.lilac-white}"
    rounded: "{rounded.card}"
    padding: "18px"
  event-sticker:
    textColor: "{colors.ink}"
    typography: "{typography.sticker}"
    rounded: "{rounded.sticker}"
    padding: "7px 10px 7px 8px"
  event-tag:
    textColor: "{colors.ink}"
    typography: "{typography.tag}"
    rounded: "{rounded.tag}"
    padding: "0 6px"
  platform-chip-on:
    backgroundColor: "{colors.sticker-paper}"
    textColor: "{colors.ink}"
    rounded: "{rounded.tag}"
    padding: "3px 8px 3px 7px"
  switch-on:
    backgroundColor: "{colors.gift-pink}"
    rounded: "{rounded.pill}"
    width: "40px"
    height: "22px"
  switch-off:
    backgroundColor: "{colors.keyline-hover}"
    rounded: "{rounded.pill}"
    width: "40px"
    height: "22px"
---

# Design System: Chorusly

## Overview

**Creative North Star: "The Sticker Sheet"**

Chorusly is a calm ink sheet that real events get slapped onto. The ground is a deep blue-violet ink with a slightly lighter sheet for headers, cards and dialogs; on top of it, anything that genuinely happened on a platform (a gift, a follow, a sub, a raid, a TikTok moderation warning) arrives as a die-cut sticker: a flat block of event ink, dark ink lettering, a cream paper keyline, a soft drop shadow and a tilt of a degree or two. Plain chat stays plain text in the system face. The contrast between the two is the product promise made visible: a message typed in chat can never look like a sticker.

The system is dense and quiet where the streamer works and loud only where something matters. The OBS dock (320 to 450 px, glanced at while live) is chat-first: a slim sheet header with the logo, platform chips and a settings gear, three flat tool pills, a horizontal strip of small event stickers, a row of round face stickers for the room, then full-height chat. The widgets page (desktop browser) reuses the same header grammar, tabs and settings cards on the left, and a sticky preview canvas on the right where the same stickers land. The on-stream overlays (theme «Pegatina Chorusly») are the stickers at broadcast scale.

It explicitly refuses the category default of a dark panel with glowing neon cards: there is no glow, no gradient chrome, no glass. Depth comes from paper keylines and soft fallen shadows, not light emission. Motion has one signature, the slap: a sticker lands oversized and over-rotated, overshoots, and settles at its resting tilt as its shadow tightens.

**Key Characteristics:**
- Ink ground, lighter ink sheet, chrome edged by a 1.5 px inset keyline instead of borders.
- Stickers: event-coloured block, dark ink text, 2 px cream paper keyline, soft offset shadow, 1 to 3 degree tilt.
- Colour encodes event type, never platform; platform appears as a small badge or a face ring.
- Two voices: Bricolage Grotesque 700 to 800 for everything the app says; Segoe UI / system for everything people say.
- One springy easing, the slap, for every arrival.

## Colors

A near-black blue-violet ink system carrying a small, saturated set of sticker inks, each one bound to a kind of event.

### Primary
- **Gift Pink** (gift-pink): the brand red-pink and the single primary action colour. Fills gift and Super Chat stickers, the primary button («Editar directo», «Guardar en Twitch», «Elegir archivos», «Empezar»), checked switches, range accents, the sliding tab underline, the «↓ N nuevos» pill and the pink dot of «Chorusly.». Hover lifts to **Gift Pink Hover** (gift-pink-hover).

### Secondary
- **Room Cyan** (room-cyan): follow stickers, the room counter, the «guardado» confirmation state, copy-done buttons, links, URL text, and every focus ring. Also TikTok's own platform colour.
- **Sub Yellow** (sub-yellow): sub and gifted-sub stickers, the event counter, highlighted chat rows (at about 14% alpha), amounts in chat, the double keyline of a big gift, the Ko-fi support sticker and the default goal sticker.

### Tertiary
- **Bits Violet** (bits-violet): Twitch bits and power-up stickers; the overlay alert fallback.
- **Share Green** (share-green): TikTok share stickers and the «Compartir» test sticker.
- **Raid Orange** (raid-orange): raid and hype-train stickers.
- **Redeem Blue** (redeem-blue): channel-point redeems and shoutouts.
- **Warning Red** (warning-red): the TikTok moderation alert, the largest sticker in the system, and the «AVISO TIKTOK» tag.
- **Live Green** (live-green): only the small connected dot inside a platform chip.

### Neutral
- **Ink** (ink): page and dock ground, input wells, segmented-control tracks, and the lettering colour on every sticker.
- **Ink Sheet** (ink-sheet): the header, cards, dialogs and the collapsible event and room sections.
- **Ink Raise** (ink-raise): resting secondary buttons on the widgets page; hover deepens to **Ink Raise Hover** (ink-raise-hover).
- **Keyline** (keyline): the 1.5 px inset edge of all chrome, and the header's bottom rule.
- **Keyline Hover** (keyline-hover): hovered keylines and the off state of switches.
- **Lilac Mute** (lilac-mute): secondary text, hints, timestamps, section labels, idle icons.
- **Lilac White** (lilac-white): primary text on the sheet. The dock's chat text is user-adjustable and defaults to a near-white of its own.
- **Sticker Paper** (sticker-paper): the cream keyline around every sticker, the face of active platform chips, the selected segment, file chips, the icon disc inside an event sticker, the name label on overlay alerts and the goal-bar fill.

Platform colours (Twitch, YouTube, TikTok, Kick) are borrowed identity, used only on the tiny platform badge in chat and the outer ring of a face sticker.

### Named Rules
**The Colour-Is-Event Rule.** A sticker's fill says what happened (gift, follow, sub, share, raid, redeem, warning), never which platform it came from. The same map drives the dock, the test buttons and the overlay.

**The Ink-on-Ink Rule.** Text on a sticker is always Ink, never white. Every sticker ink was chosen to pass contrast with dark lettering; a new event colour must too.

**The One Pink Rule.** Each group of actions has at most one Gift Pink button. Everything else is a keyline pill.

## Typography

**Display Font:** Bricolage Grotesque (self-hosted woff2, variable 200 to 800, with system-ui fallback)
**Body Font:** Segoe UI (with system-ui, sans-serif)
**Label/Mono Font:** ui-monospace / Consolas, only for OBS URLs

**Character:** A chunky, slightly quirky grotesque at 800 gives the stickers and headings their printed, die-cut weight; the plain Windows system face keeps chat and form text neutral and fast to read at arm's length.

### Hierarchy
- **Display** (800, 30px, 1.1, -0.02em): the welcome dialog headline only.
- **Headline** (800, 20 to 24px, 1 to 1.15): the wordmark «Chorusly.» in the page header and dialog titles («Ajustes», «Editar el directo»).
- **Title** (800, 16 to 18px, 1.2): card titles, tabs, the «Vista previa» bar.
- **Sticker** (800, 1em of its context): names on event stickers, overlay alerts, goals, the alert dialog title, amounts.
- **Button** (700, 12 to 13px): tool pills, buttons, header links, platform chips (11.5px).
- **Section label** (800, 11px, 0.08em, uppercase): the dock's collapsible section bars «Eventos», «En la sala», «Chat», always paired with a disclosure chevron or a count.
- **Tag** (800, 10.5px, 0.05em): the tilted event tag inside a chat row; the strings themselves are uppercase in the event map («REGALO», «SEGUIDOR»).
- **Chat** (400, 14px, 1.45): chat messages; the streamer can change face, size, weight and line height in «Apariencia».
- **Label** (400, 12px): form labels, hints, empty states, in Lilac Mute.

### Named Rules
**The Two Voices Rule.** Bricolage speaks for the app (stickers, headings, buttons, chips, labels); the system face speaks for people (chat, inputs, hints). Never set a chat message in Bricolage, never set a button in the system face.

## Layout

The dock is a single flex column at full viewport height: header, event section, room section, chat label, then chat filling the rest, with messages anchored to the bottom and growing upward. Horizontal padding stays tight (8 to 14px); rhythm runs on 4, 6, 8, 10 and 14px. The three tool pills share a three-column grid with a 6px gap and collapse to icons only below a 250px container width. Collapsed, events and room are single horizontal strips that fade out at the right edge (mask from 85%) to say there is more; expanded, they become resizable lists.

The widgets page is a two-column grid (settings at minmax(0, 1fr), preview at minmax(360px, 44%)), 24px gap and gutters, capped at 1500px. The preview aside is sticky. Below 980px it becomes one column with the preview first. Settings cards sit in an auto-fill grid of minimum 300px columns with a 14px gap; form fields pair in two columns. Container queries fold the preview bar (600px) and the test stickers (560px, four to two columns).

## Elevation & Depth

Hybrid and physical: chrome is flat and drawn with inset keylines; stickers are the only things that lift. A sticker's depth is a 2px paper keyline plus a soft, fallen shadow, as if it sits a millimetre above the sheet. Larger or more urgent stickers fall further (bigger offset and blur). Dialogs are flat sheets floated over a dark ink scrim. Nothing glows.

### Shadow Vocabulary
- **Keyline** (`box-shadow: inset 0 0 0 1.5px #2f2a4d`): the edge of every button, input, card, chip and detail panel at rest.
- **Sticker** (`box-shadow: 0 0 0 2px #f2efe9, 0 4px 10px #000a`): the standard die-cut sticker; event stickers, the boot notice, the join notice, the «more» pill, test buttons, the Ko-fi link.
- **Sticker, big** (`box-shadow: 0 0 0 2px #f2efe9, 0 0 0 5px #ffd23f, 0 6px 14px #000a`): a large gift; a yellow second keyline outside the paper.
- **Tag** (`box-shadow: 0 0 0 1.5px #f2efe9, 0 2px 4px #0008`): the small tag inside a chat row.
- **Face ring** (`box-shadow: 0 0 0 2px #f2efe9, 0 0 0 4.5px <platform>, 0 3px 6px 4px #0007`): avatars in the room.
- **Pressed-on** (`box-shadow: 0 2px 6px #0007`): solid pink buttons and connect buttons, which replace the keyline.
- **Alert sticker** (`box-shadow: 0 0 0 3px #f2efe9, 0 18px 40px #000c`): the TikTok moderation warning.
- **Floating sheet** (`box-shadow: 0 0 0 1.5px #2f2a4d, 0 24px 60px #000c`): dialogs; the welcome dialog falls to 30px 80px.

### Named Rules
**The Paper Keyline Rule.** A cream keyline means "this really happened" (or "this is the brand"). Chrome never gets one; chrome gets the inset Keyline.

**The No-Glow Rule.** Depth is cast shadow, never emitted light. No coloured blur halos, no neon edges.

## Shapes

Rounded rectangles throughout, with radius growing with size: 5px tags and chips, 8px dock inputs, 10px buttons and tool pills, 11px event stickers, 12px detail panels, 14 to 16px cards and preview scene, 18px alert sticker, 22px welcome dialog. Faces, the connection dot and sticker icon discs are full circles; switches are full pills. Edges are drawn with inset box-shadow rather than borders, so they never shift layout. The only dashed lines are drop zones and the preview's safe-area guide.

Tilt is part of the shape language for stickers only: event stickers rest at -1, 0.8 and -0.4 degrees in rotation, chat tags at -2, overlay alerts at -3, goals at -1, step badges and the logo at -4, notices at -1.5. Chrome stays square to the grid.

## Components

### Buttons
Flat keyline pills that press in; the primary is a solid pink sticker-ink block.
- **Shape:** gently rounded (10px), 38px tall on the widgets page, 34px for dock tools.
- **Primary:** Gift Pink fill, Ink text, Bricolage 700 to 800, Pressed-on shadow instead of keyline.
- **Secondary:** Ink Raise (widgets) or 4% white (dock) fill, Lilac White text, Keyline edge.
- **Hover / Focus:** fill steps up (Ink Raise Hover, Gift Pink Hover), keyline turns Keyline Hover; active scales to 0.96; focus is a 2px Room Cyan outline at 2px offset.
- **Done state:** a 2px cyan inset keyline with cyan text and a slap pop (e.g. after «Copiar»).
- **Test buttons:** the four «Probar» buttons on the widgets page are real stickers in their event ink, alternately tilted, straightening on hover.

### Chips
- **Platform chip:** 5 to 6px radius, Bricolage 700 11.5px. Connected: Sticker Paper face, Ink text, Live Green dot. Idle: transparent with Keyline. Off: 45% opacity and struck through.
- **File chip:** Sticker Paper face, Ink text, small fallen shadow.
- **Counter:** a 5px-radius block (yellow for events, cyan for room) with Ink digits.

### Cards / Containers
- **Corner Style:** 16px (cards, preview scene), 12px (settings sections in the dock dialog).
- **Background:** Ink Sheet; the «Aspecto» look card is tinted 7% pink with a pink-mixed keyline.
- **Shadow Strategy:** Keyline only; see Elevation.
- **Internal Padding:** 18px (widgets), 10 to 12px (dock).
- **Disabled card:** body fades to 45% opacity, head stays readable.

### Inputs / Fields
- **Style:** Ink well, Keyline edge, 10px radius (8px in the dock), 38px tall, system face.
- **Hover:** keyline turns Keyline Hover.
- **Focus:** 2px Room Cyan outline.
- **Switches:** native checkbox restyled as a 40 by 22px pill (34 by 19 in the dock), Keyline Hover when off, Gift Pink when on, white knob.
- **Segmented control:** Ink track with keyline; a Sticker Paper thumb slides under the chosen option and its label turns Ink.

### Navigation
- **Tabs:** Bricolage 800 16px in Lilac Mute, Lilac White when hovered or selected; a 4px Gift Pink rounded bar slides under the active tab with the standard ease.
- **Header links:** keyline pills in Bricolage 700 13px; the support link is a yellow sticker.
- **Dock section bars:** uppercase section labels that are themselves disclosure buttons, with a CSS chevron that rotates on the slap curve.

### Event Sticker (signature)
The heart of the system. A grid of icon disc, body and side column on the event's ink, 11px radius, Sticker shadow, resting tilt. The icon sits on a Sticker Paper disc; the name is Bricolage 800 in Ink; the second line is Ink mixed 18% toward the event colour; the amount is an Ink block with Paper digits. In the collapsed strip only the disc and the truncated name show. New stickers slap in (0.55s, from 1.35 scale and 9 degrees extra rotation, shadow tightening from 22px to 4px). Inside chat, a real event is a 13% tint of its ink with a small tilted tag; it never becomes a full sticker there.

### Face Sticker
Room members are round avatars (or initials in Bricolage 800) with a paper ring and an outer platform ring; they arrive with a 0.5s spin-and-grow on the slap curve.

### Overlay Alert and Goal («Pegatina Chorusly»)
On stream, the alert is a large event-ink sticker (em-based paper keyline, -3 degree tilt) with Ink lettering; the user's name sits on a cream label. It renders above the confetti so it always reads. Goals and the top-gifters ranking are yellow (or goal-colour) stickers at -1 degree with an Ink track and a Paper fill.

### TikTok Moderation Alert
A Warning Red sticker up to 520px wide, 18px radius, 3px paper keyline, -1 degree, over a 78% ink scrim; title in Bricolage 800, a full-width Ink button «Entendido, cerrar».

## Do's and Don'ts

### Do:
- **Do** reserve the sticker treatment (event ink, Ink text, 2px Sticker Paper keyline, soft shadow, tilt) for things that really happened or are announced by the app itself.
- **Do** pick a sticker's fill from the event map: gift pink, follow cyan, sub yellow, bits violet, share green, raid orange, redeem blue, warning red.
- **Do** edge chrome with `inset 0 0 0 1.5px` Keyline, not borders.
- **Do** bring every arrival in on the slap curve (`cubic-bezier(.2, 1.5, .4, 1)`) and every layout transition on the standard ease (`cubic-bezier(.2, .8, .2, 1)`).
- **Do** keep sticker tilts between -4 and 1 degrees and keep chrome square.
- **Do** use Room Cyan 2px outlines for focus everywhere.
- **Do** draw UI icons as inline 16px stroke SVGs (2px stroke, round caps and joins, currentColor), as in the dock tools and gear.
- **Do** honour prefers-reduced-motion by removing animation and transitions, as the widgets page does.

### Don't:
- **Don't** render chat text as a sticker, or let any user-typed content take the paper keyline: a sticker must be impossible to fake by typing.
- **Don't** put white text on a sticker.
- **Don't** add glow, neon edges, glassmorphism or gradient chrome; this world refuses the dark-panel-with-neon-cards default.
- **Don't** use a 3D cyan and red split effect on lettering (rejected by the owner).
- **Don't** colour a sticker by platform; platforms get the small badge and the face ring only.
- **Don't** use more than one Gift Pink button per action group.
