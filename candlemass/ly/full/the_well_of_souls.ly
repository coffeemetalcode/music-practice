\version "2.18.2"

\include "english.ly"
\include "grv_spanners.ly"
\include "cadence.ily"

\header {
  title = "Well of Souls"
  subtitle = " "
  tagline = ##f
}

mBreak = \break

tabChordSlur = {
  \set TabStaff.doubleSlurs = ##t
}

tabNoteSlur = {
  \set TabStaff.doubleSlurs = ##f
}

#(set-global-staff-size 17.82)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.6\in
  indent = 0\in
  ragged-last-bottom = ##f
  ragged-last = ##f
  ragged-right = ##f
  ragged-bottom = ##f

}

%% Vocals

introA = \relative c'' { 
  
  %% Intro
  
  r4 e d e |
  d4 e \acciaccatura e8 f4( e~ |
  e4 ) e d e | \mBreak
  d4 e f e |
  a4 f e8( f e4~ | \time 2/4 % 2/4
  e2~ | \time 4/4 \bar "||" \mBreak % 4/4
  e1~ |
  e1~ |
  e2.~ e4 \glissando |
  d4 r4 r2 |
  R1*4 \bar "||" | % ||
  
  %% Verse
  
  b'8. as16~ as8 g fs4 r8 fs |
  \acciaccatura as8 b8. as16~ as8 g \acciaccatura fs8 e4 r |
  b8. c16~ c8 b \acciaccatura ds8 e8. ds16~ ds8 fs | \mBreak
  \acciaccatura fs8 g8. fs16~ fs8 g fs( e4 ) r8 |
  b'8. as16~ as8 g fs4 r8 fs |
  b8. as16~ as8 g \acciaccatura fs8 e4 r8 b | \mBreak
  b8. c16~ c8 b \acciaccatura ds8 e8. ds16~ ds8 fs |
  g8. fs16~ fs8 g fs'4~ fs8 r |
  R1 | \mBreak \bar "||"
  e,8( d4. ~ d8 ) r r4 |
  R1*7 |
  b'8. as16~ as8 g fs4 r8 fs | \mBreak
  b8. as16~ as8 g fs8. g16~ g8 fs | 
  b,8. c16~ ( c8 b ) e8.( ds16~ ds8 ) fs |
  g8. fs16~ fs8 g fs8. ( \glissando e16~ e8 ) r | \mBreak
  \acciaccatura as8 b8. as16~ as8 g fs8. g16~ g8 fs |
  b8. as16~ as8 g fs( e4 ) r8 | \mBreak
  b8. c16~ c8 b e8. ds16~ ds8 fs |
  g8. fs16~ fs8 g fs'4~ fs8 r |
  R1 | \mBreak \bar "||" %||
  
  %%Chorus
  
  e,2 fs |
  g4 fs e b' |
  as2 fs | \mBreak
  as2 r4 e |
  e2 f |
  \acciaccatura g8 a4( g ) f \acciaccatura f8 g4 | \mBreak
  e4 r fs! fs |
  g4 fs e b' |
  as2 fs | \mBreak
  \acciaccatura gs8 as8.( \acciaccatura gs8 as16~ as8 \acciaccatura gs as \acciaccatura gs as4 ) e |
  e2 f |
  \acciaccatura g8 a4( g ) f \acciaccatura f8 g4~( | \mBreak \bar "||" %||
  
  %Interlude
  
  g4 e ) e2~ ( |
  e1~ |
  e2 \glissando ds4 ) r |
  R1*5 | \bar "||" % ||
  
  %Bridge
  
  r4 e f d |
  e4 f \acciaccatura gs8 a4 gs |
  r4 e f d |
  c4 b f8 g f4 |
  r4 e' f d |
  e8 f4 \acciaccatura gs8 a~ a gs4. |
  r4 e f d |
  c8 b4 \acciaccatura d8 e~ e2 | \mBreak \key a \minor
  r4 a bf g |
  a4 bf d cs |
  r4 a \acciaccatura a8 bf4( g8 ) g |
  f8 e4 \acciaccatura g8 a~ a2 | \mBreak
  r4 a \acciaccatura a8 bf4 g |
  a4 bf d cs |
  r4 a \acciaccatura a8 bf4( g8 ) g | \mBreak
  f8. e16~ e8 \acciaccatura g a~( a8. \acciaccatura g8 a16~ a8 \acciaccatura g a | \bar "||"
  
  %Guitar Solo 
  
  \acciaccatura g8 a2~ a4 \glissando g ) | 
  R1*7 | \key e \minor
  R1*7 |
  %\time 3/4
  R4*3 | \time 4/4 \key a \minor
  
  %Interlude
  
  \repeat volta 4 { R1*4 | }
  \repeat volta 2 { R1*4 | }
  \repeat volta 2 { R1*4 | }
  
  %Bridge
  
  r4 f f f8 \acciaccatura f fs~ |
  fs2 r4 r8 fs |
  g8 g( e4 ) r8 e g fs~ |
  fs2. r4 |
  r4 f! f f8 fs~ ( |
  fs8 \acciaccatura f fs4. ) r4 r8 e |
  g8 fs4 r8 r e g fs~ ( |
  fs2 \glissando ds4 ) r |
  r4 b b8 b4 c8~ |
  c2 r4 r8 b |
  cs8. c16~ ( c8 \glissando b ) r c cs c~ |
  c8 \acciaccatura d e~ e2 r4 |
  r4 b8 \acciaccatura c e~ ( e b ) b c~ |
  c2 r2 |
  < \xNote b cs>4. cs8 as cs( as ) r |
  c2( cs |
  cs1 ) |
  r2 r4. e8 |
  e8 e4. g2 |
  r2 a8 g4 r8 | \bar "||"
  
  %Interlude
  e1( ~ |
  e1 ~ |
  e2 \glissando d4. ) r8 |
  R1*5 \bar "||"
  
}

introB = \relative c'' {
  r4 b a b |
  a b \acciaccatura b8 c4( b~ |
  b4 ) b a b |
  a4 b c b |
  e4 c b8( c b4~ | % 2/4
  b2~ | % 4/4
  b1~ |
  b1~ |
  b2.~ b4 \glissando |
  a4 ) r4 r2 | \mBreak
}


voxNotes = {
  \new Voice = "tenor" { 
    %Intro
    << \introA \cueSize \introB >> }
}

%% Lyrics

voxLyricsI = \lyricmode { 
  
  %% Intro
  
  I bind un -- to my self __
  to -- day the strong name of the 
  trin -- i -- ty. __
  
  %% Verse 1
  \set stanza = "1."
  Crypt of __ de -- spair, the
  old man __ is there, __
  form -- ing __ a cir -- cle __ of
  mag -- ic __ and prayers. __
  Guard -- ing __ the well, the 
  black hole __ to hell. __ Its
  e -- vil __ must nev -- er __ a --
  rise I __ can tell. __
  Yeah. __
  
  %% Verse 2
  
  \set stanza = "2."
  Ho -- ly __ mis -- sion, for --
  ev -- er __ heʼs sworn __ to pro --
  tect our __ world __ from
  hat -- red __ and scorn. __
  He will __ not fear though __ the
  sab -- bath __ is near. __
  Twelve strokes __ for Can -- dle -- mass,
  dark -- ness __ de -- scends. __
  
  %Chorus
  
  Break the cir -- cle and all
  hell comes loose. The
  Well of Souls __ must stay
  sealed. An -- cient force of Light a --
  gainst the Dark, __ The
  Well of Souls __ must stay __
  sealed. __
  
  %Bridge
  
  Black wind turns out the can -- dles,
  the air grows dark and threat -- en -- ing.
  Dark shad -- ows, wick -- ed laugh -- ter
  brings dark -- ness to your heart. __
  Be -- hold, the goat of Men -- des,
  red burn -- ing e -- vil eyes. __
  Lord's pray -- er, ho -- ly wa -- ter,
  just faith __ can save you __ now. __
  
  %Bridge
  
  Dis -- har -- mon -- y, __ Sa --
  tan -- ic __ ser -- e -- nade. __
  Black sym -- pho -- ny, __ a
  trib -- ute to the plague. __
  The twist -- ed souls __ a --
  wak -- ened __ by the chant -- ing. __
  Un -- chained __ at last, __
  rise, they will now __ rise. __
  A new day's dawn,
  ho -- ly light. __
  
}

%% Rhythm Guitar

introRhyNotes = {
  <e b' e>1~ \repeatTie | \override TabStaff.Clef.stencil = ##f
  q1~ |
  q1~ |
  q1~ |
  q1~ |
  q2 |
}

interludeRhyNotes = {
  e4 b'8 bf~ bf g4 f8 |
  e4 b'!8 c~ c b( ~ b16 a ) f8 |
  e4 b'8 bf~ bf g4 bf8 |
  b!4 bf \acciaccatura bf8 \glissando c4 b16( a ) f8 |
}

interludeRhyTab = {
  \voiceOne
  e4 b'8 bf~ bf g4 f8 |
  e4 b'!8 c~ c b \parenthesize b16( a ) f8 |
  e4 b'8 bf~ bf g4 bf8 |
  b!4 bf \acciaccatura bf8 \glissando c4 b16( a ) f8 |
}

verseRhyNotes = {
  \repeat unfold 2 {
    b8. bf16~ bf8 g fs8. g16~ g8 fs |
    b!8. bf16~ bf8 g fs8. g16~ g8 fs |
    b!8. c16~ c8 b e8. ds16~ ds8 fs |
    g8. fs16~ fs8 g fs2 |
  }
  b,8. bf16~ bf8 g b8. bf16~ bf8 g |
}

verseRhyTab = {
  \repeat unfold 2 {
    b8. bf16~ bf8 g fs8. g16~ g8 fs |
    b!8. bf16~ bf8 g fs8. g16~ g8 fs |
    b!8. c16~ c8 b e8. ds16~ ds8 fs |
    g8.\4 fs16~ fs8 g\4 fs2 |
  }
  b,8. bf16~ bf8 g b8. bf16~ bf8 g |
}

chorusRhyNotes = {
  <e b'>2 fs |
  g4 fs e b' |
  as2 fs |
  as2 as4 b |
  <a! e'>2 f |
  <a e'>2 q4 f |
}

chorusRhyTab = {
  <e b'>2 fs |
  g4 fs e b' |
  as2 fs |
  as2 as4 b |
  <a! e'>2 f |
  <a e'>2 q4 f |
}

interludeIIRhyNotes = {
  e4 e' f d |
  e4 f a \pitchedTrill gs\startTrillSpan a |
  e,4\stopTrillSpan e' f d |
  \acciaccatura a8 \glissando c4 b <f c'>8 <g d'> <f c'>4 | \mBreak
}

interludeIIRhyTab = {
  e4 e'\5 f\5 d\5 |
  e4\5 f\5 a\4 \pitchedTrill gs\4 \startTrillSpan a\4 |
  e,4\stopTrillSpan e'\5 f\5 d\5 |
  \acciaccatura a8\6 \glissando c4\6 b\6 <f c'>8 <g d'\5> <f c'>4 |
}

bridgeRhyNotes = {
  a4 a' bf g |
  a4 bf d \pitchedTrill cs\startTrillSpan d |
  a,4\stopTrillSpan a' bf g |
  \acciaccatura d8 \glissando f4 e <bf f'>8 <c g'> <bf f'>4 |
}

bridgeRhyTab = {
  a4 a'\4 bf\4 g\4 |
  a4\4 bf\4 d\3 \pitchedTrill cs\3 \startTrillSpan d\3 |
  a,4\stopTrillSpan a'\4 bf\4 g\4 |
  \acciaccatura d8\5 \glissando f4\5 e <bf f'>8 <c g'\4> <bf f'>4 |
}

interludeIIIRhyNotes = {
  e,4 e' f d |
  %\time 3/4
  \time 3/4 \acciaccatura a8 \glissando c4 b e,8 g \key a \minor
}

interludeIIIRhyTab = {
  e,4 e'\5 f\5 d\5 |
  %\time 3/4
  \acciaccatura a8\6 \glissando c4\6 b\6 e,8 g
}

interludeIVRhyNotes = {
  <a e'>8 q q q q q q q \glissando | %\break
  <bf f'> q \glissando <g d'> q \glissando <a e'> q \glissando <f c'> q \glissando |
  <a e'> q \glissando <d a'> q \glissando <c g'> q \glissando <bf f'> q \glissando |
  <c g'> q \glissando <bf f'> q \glissando <a e'> q q( \glissando <bf f'> ) | \mBreak
}

interludeIVRhyTab = {
  \repeat unfold 7 { <a\6 e'\5>8 } <a\6 e'\5> \glissando | %\break
  <bf\6 f'\5> <bf\6 f'\5>  \glissando <g\6 d'\5> <g\6 d'\5> \glissando
  <a\6 e'\5> <a\6 e'\5> \glissando <f\6 c'\5> <f\6 c'\5> \glissando |
  <a\6 e'\5> <a\6 e'\5> \glissando <d\6 a'\5> <d\6 a'\5> \glissando
  <c\6 g'\5> <c\6 g'\5> \glissando <bf\6 f'\5> <bf\6 f'\5> \glissando |
  <c\6 g'\5> <c\6 g'\5> \glissando <bf\6 f'\5> <bf\6 f'\5> \glissando
  %\set TabVoice.doubleSlurs = ##t
  \tabChordSlur
  <a\6 e'\5> <a\6 e'\5> <a\6 e'\5>( \glissando <bf\6 f'\5> ) |
}

interludeVRhyNotes = {
  <a e'>4 q8 q q( \glissando <g d'> ) q \glissando <a e'> |
  <bf f'>4 q8 q q( \glissando <g d'> ) q \glissando <bf f'> |
  <a e'>4 q8 q q( \glissando <g d'> ) q \glissando <a e'> |
  <bf f'>4 q8 q q( \glissando <g d'> ) q \glissando <bf f'> |
}

interludeVRhyTab = {
  <a\6 e'\5>4 <a\6 e'\5>8 <a\6 e'\5> 
  <a\6 e'\5>( \glissando <g\6 d'\5> ) <g\6 d'\5> \glissando <a\6 e'\5> |
  <bf\6 f'\5>4 <bf\6 f'\5>8 <bf\6 f'\5> 
  <bf\6 f'\5>( \glissando <g\6 d'\5> ) <g\6 d'\5> \glissando <bf\6 f'\5> |
  <a\6 e'\5>4 <a\6 e'\5>8 <a\6 e'\5> 
  <a\6 e'\5>( \glissando <g\6 d'\5> ) <g\6 d'\5> \glissando <a\6 e'\5> |
  <bf\6 f'\5>4 <bf\6 f'\5>8 <bf\6 f'\5> 
  <bf\6 f'\5>( \glissando <g\6 d'\5> ) <g\6 d'\5> \glissando <bf\6 f'\5> |
}

interludeVIRhyNotes = {
  \key e \minor
  e,8 c' b a c b a b |
  c b a b g a fs g |
  e c' b a c b a b |
  c b a b g a fs g |
}

interludeVIRhyTab = {
  e,8 c' b a\6 c b a\6 b |
  c b a\6 b g a\6 fs g |
  e c' b a\6 c b a\6 b |
  c b a\6 b g a\6 fs g |
}

bridgeIIRhyNotes = {
  f4 c' f c |
  fs,! cs' fs! cs |
  g d' g d |
  fs, cs' fs cs |
}

bridgeIIRhyTab = {
  f4 c' f c |
  fs,! cs' fs! cs |
  g d'\5 g\4 d\5 |
  fs, cs' fs cs |
}

bridgeIIIRhyNotes = {
  b fs' b fs |
  c g' c g  |
  cs, gs' cs gs  |
  c,! g'! c! g |
  b, fs' b fs |
  c g' c g |
  cs, gs' cs gs |
  <c,! g'! c!>1~
  <c g' c>1~ |
  q1~ |
  q1~ |
  q1 |
}

bridgeIIIRhyTab = {
  b4 fs' b\3 fs  |
  c g'\4 c\3 g\4  |
  cs, gs'\4 cs\3 gs\4  |
  c,! g'!\4 c!\3 g\4 | 
  b, fs' b\3 fs |
  c g'\4 c\3 g\4 |
  cs, gs'\4 cs\3 gs\4 |
  <c, g'\4 c\3>1~ |
  <c g'\4 c\3>1~ |
  <c g'\4 c\3>1~ |
  <c g'\4 c\3>1~ |
  <c g'\4 c\3>1 |
}

%% Condense Rhythm Guitar into a part

rhyGuitarNotes = \relative c, {
  \introRhyNotes 
  \interludeRhyNotes
  R1*4
  \verseRhyNotes
  R1*8
  R1*9
  \chorusRhyNotes
  R1*6
  \interludeIIRhyNotes
  R1*4
  R1*8 \key a \minor
  \bridgeRhyNotes
  R1*4
  R1*8 \key e \minor
  R1*6 \mBreak
  \interludeIIIRhyNotes
  \interludeIVRhyNotes
  \interludeVRhyNotes
  \interludeVIRhyNotes
  \bridgeIIRhyNotes
  R1*4
  \bridgeIIIRhyNotes
  R1*8
  
}

rhyGuitarLines = {
  %Intro
  s1*5 s2
  s1*8
  %Verse
  s1*9
  %Interlude
  s1*8
  %Verse
  s1*9
  %Chorus
  s1*12
  %Interlude
  s1*8
  %Bridge
  s1*8
  s1*8
  %Guitar Solo
  s1*8
  s1*7 s4*3
  %Interlude
  \pmBreak
  s8\startTextSpan s8*6 s8\stopTextSpan \break
  \pm
  s8\startTextSpan s8*20 s8\stopTextSpan s4
  \repeat unfold 4 { s4 s8\startTextSpan s\stopTextSpan s2 }
  s1*4
  %Bridge
  \repeat unfold 4 { \letRing s4\startTextSpan s s s\stopTextSpan }
  s1*4
  \repeat unfold 7 { s4\startTextSpan s s s\stopTextSpan }
}

rhyGuitarTab = \relative c, {
  \introRhyNotes
  \interludeRhyTab
  R1*4
  \verseRhyTab
  R1*8
  R1*9
  \chorusRhyTab
  R1*6
  \interludeIIRhyTab
  R1*4
  R1*8
  \bridgeRhyTab
  R1*4
  R1*8
  R1*6
  \interludeIIIRhyTab
  \interludeIVRhyTab
  \interludeVRhyTab
  \interludeVIRhyTab
  \bridgeIIRhyTab
  R1*4
  \bridgeIIIRhyTab
  R1*8
}


timeKey = {
  \key e \minor
  \numericTimeSignature
  \time 4/4
}

\score {
  <<
    \new Staff \with {
      \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 14))
    } <<
      \timeKey
      \override Score.MultiMeasureRest.expand-limit = #2
      \override Staff.VerticalAxisGroup.remove-first = ##f
      \compressFullBarRests
      \override Score.LyricText.font-name = #"Tribun ADF Med Std"
      \override Score.StanzaNumber.font-name = #"Tribun ADF Med Std"
      \voxNotes
      \new Lyrics \lyricsto "tenor" { %% Intro and Verse 1
        \voxLyricsI
      }
    >>
    \new StaffGroup <<
      \new Staff \with {
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 14))
      } {
        \clef "treble_8"
        \timeKey
        \override Glissando.breakable = ##t
        \override Glissando.after-line-breaking = ##t
        \override Staff.BarLine.allow-span-bar = ##f
      
        \rhyGuitarNotes
      
      }
      \new Dynamics {
        \rhyGuitarLines
      }
      \new TabStaff {
        \clef moderntab
        \override Score.TabNoteHead #'(font-name) = "Helvetica LT Std Condensed Bold"
        \override Score.TabNoteHead #'whiteout = ##f
        \override Score.Glissando.breakable = ##t
        \override Score.Glissando.after-line-breaking = ##t
        \new TabVoice { \rhyGuitarTab }
      }
    >>
  >>
  \layout {
    \context {
      \Staff \RemoveEmptyStaves
    }
    \context {
      \TabStaff \RemoveEmptyStaves
    }
  }
}




