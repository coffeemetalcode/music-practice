\version "2.18.2"

\include "english.ly"

#(set-global-staff-size 17.82)

\include "cadence.ily"
\include "grv_spanners.ly"

\header {
  title = "A Cry From The Crypt"
  subtitle = "Riffs and Figures"
  tagline = ##f
}

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
  systems-per-page = #5
}

endFig = { \bar "||" \break }

tabChordSlur = {
  \set TabStaff.doubleSlurs = ##t
}

tabNoteSlur = {
  %\revert TabStaff.doubleSlurs
  \set TabStaff.doubleSlurs = ##f
}

%%% Section Variables %%%

cryptIntroNotes = {
  \repeat volta 4 {
    %1
    <e b'>4^\markup { \bold "Intro a" } as8 b c b as b
    %2
    \override TabStaff.Clef.stencil = ##f
    c8 b as b16( as ) fs4 es8 fs
    %3
    g8 fs es fs g fs es fs
  }
  %4
  <e! b'>1
}

cryptVerseNotes = {
  \repeat volta 2 {
    %1
    <e b'>16^\markup { \bold "Verse/Chorus b" } e \tuplet 3/2 { e e e } <e b'>16 e \tuplet 3/2 { e e e }
    \tuplet 3/2 { e8 f g } \tuplet 3/2 { af g f }
    %2
    <e b'>16 e \tuplet 3/2 { e e e } <e b'>16 e \tuplet 3/2 { e e e }
    \tuplet 3/2 { e8 f g } \tuplet 3/2 { af g f }
  }
}

cryptInterludeINotes = {
  \repeat unfold 1 {
    %1
    <e' b' e>4^\markup { \bold "Interlude c" } q8( ~ q16 <a, d g> ) <b fs' b>16 <c g' c> <b fs' b>4 q8
    %2
    <c f c' f>4 q8 <e, a d>16 q <f c' f>8 <e b' e> <f c' f> <e b' e>
  }
}

cryptInterludeITab = {
  \repeat unfold 1 {
    %1
    <e'\5 b'\4 e\3>4 \tabChordSlur q8( ~ q16 <a, d g> ) <b\6 fs'\5 b\4>16 <c\6 g'\5 c\4> <b\6 fs'\5 b\4>4 q8
    %2
    <c\6 f\5 c'\4 f\3>4 q8 <e, a d>16 q <f c' f>8 <e b' e> <f c' f> <e b' e>
  }
}

cryptVerseIINotes = {
  %1
  <b' fs' b>8^\markup { \bold "Verse d" } \tuplet 3/2 { b16 b b } <b fs' b>8 \tuplet 3/2 { b16 b b }
  \tuplet 6/4 { bf16 bf bf g g g } \tuplet 6/4 { fs16 fs fs g g g }
  %2
  \tuplet 6/4 { e16 e e g g g } \tuplet 6/4 { fs16 fs fs e e e }
  \acciaccatura <cs' cs'>8 \glissando <ds ds'>8 <c c'> <b b'> <c c'>16( a )
  %3
  <b fs' b>8 \tuplet 3/2 { b16 b b } <b fs' b>8 \tuplet 3/2 { b16 b b }
  \tuplet 6/4 { bf16 bf bf g g g } \tuplet 6/4 { fs16 fs fs g g g }
  %4
  \tuplet 6/4 { e16 e e g g g } \tuplet 6/4 { fs16 fs fs e e e }
  \acciaccatura <cs' cs'>8 \glissando <ds ds'>8 <c c'> <b b'> <c c'>8
  %5
  \time 2/4
  \acciaccatura <cs cs'>8 \glissando <ds ds'>8 <c c'> <b b'> <c c'>16( a )
}

cryptVerseIITab = {
  %1
  <b' fs' b\3>8 \tuplet 3/2 { b16 b b } <b fs' b\3>8 \tuplet 3/2 { b16 b b }
  \tuplet 6/4 { bf16 bf bf g g g } \tuplet 6/4 { fs16 fs fs g g g }
  %2
  \tuplet 6/4 { e16 e e g g g } \tuplet 6/4 { fs16 fs fs e e e }
  \acciaccatura <cs' cs'\3>8 \glissando <ds\5 ds'\3>8 <c c'\3> <b b'\3> \tabNoteSlur <c c'\3>16( a )
  %3
  <b fs' b\3>8 \tuplet 3/2 { b16 b b } <b fs' b\3>8 \tuplet 3/2 { b16 b b }
  \tuplet 6/4 { bf16 bf bf g g g } \tuplet 6/4 { fs16 fs fs g g g }
  %4
  \tuplet 6/4 { e16 e e g g g } \tuplet 6/4 { fs16 fs fs e e e }
  \tabChordSlur \acciaccatura <cs' cs'\3>8 \glissando <ds\5 ds'\3>8 <c c'\3> <b b'\3> <c c'\3>8
  %5
  \time 2/4
  \acciaccatura <cs cs'\3>8 \glissando <d\5 ds'\3>8 <c c'\3> <b b'\3> \tabNoteSlur <c c'\3>16( a )
}

cryptPreSoloNotes = {
  \time 4/4 
  \repeat unfold 1 {
    %1
    \tuplet 3/2 { e16^\markup { \bold "Break e" } e e } bf'8 \tuplet 3/2 { e,16 e e } a8
    \tuplet 3/2 { e16 e e } bf'16( e, ) \tuplet 3/2 { <a e'>8 <af ef'> <g d'> }
    %1
    \tuplet 3/2 { e16 e e } bf'8 \tuplet 3/2 { e,16 e e } a8
    \tuplet 3/2 { e16 e e } bf'16( e, ) \tuplet 3/2 { <a e'>8 <af ef'> <g d'> }
  }
  %2
  \tuplet 3/2 { e'8^\markup { \bold "Interlude f" } b e } \tuplet 3/2 { f8 c f } \tuplet 3/2 { e8 b e } \tuplet 3/2 { ef8 bf ef }
  \tuplet 3/2 { e!8 b! e } \tuplet 3/2 { f8 c f } \tuplet 3/2 { \acciaccatura f \glissando g8 d g } \tuplet 3/2 { fs8 cs fs }
  \tuplet 3/2 { e8 b e } \tuplet 3/2 { f8 c f } \tuplet 3/2 { e8 b e } \tuplet 3/2 { ef8 bf ef }
  \tuplet 3/2 { e!8 b! e } \tuplet 3/2 { f8 c f } \tuplet 3/2 { \acciaccatura f \glissando g8 d g } fs4\fermata
}

cryptPreSoloTab = {
  \repeat unfold 2 {
    %1
    \tuplet 3/2 { e16 e e } bf'8\6 \tuplet 3/2 { e,16 e e } a8\6
    \tuplet 3/2 { e16 e e } bf'16\6( e, ) \tuplet 3/2 { <a\6 e'\5>8 <af ef'\5> <g d'\5> }
  }
  %2
  \tuplet 3/2 { e'8 b e } \tuplet 3/2 { f8 c f } \tuplet 3/2 { e8 b e } \tuplet 3/2 { ef8 bf ef }
  \tuplet 3/2 { e!8 b! e } \tuplet 3/2 { f8 c f } \tuplet 3/2 { \acciaccatura f \glissando g8\4 d\5 g\4 } \tuplet 3/2 { fs8 cs fs }
  \tuplet 3/2 { e8 b e } \tuplet 3/2 { f8 c f } \tuplet 3/2 { e8 b e } \tuplet 3/2 { ef8 bf ef }
  \tuplet 3/2 { e!8 b! e } \tuplet 3/2 { f8 c f } \tuplet 3/2 { \acciaccatura f \glissando g8\4 d\5 g\4 } fs4\fermata
}

cryptSoloINotes = {
  %1
  \tuplet 6/4 { a,16^\markup { \bold "Guitar Solo g" } b b b b b } \tuplet 6/4 { c16 b b b b b }
  \tuplet 6/4 { a16 b b b b b } \tuplet 3/2 { c16 b b } f'8
  %2
  \tuplet 6/4 { a,16 b b b b b } \tuplet 6/4 { c b b b b b }
  \tuplet 6/4 { f'16 b, b b b b } \tuplet 3/2 { g'16 c, c } c8
}

cryptSoloITab = {
  %1
  \tuplet 6/4 { a,16 b b b b b } \tuplet 6/4 { c16 b b b b b }
  \tuplet 6/4 { a16 b b b b b } \tuplet 3/2 { c16 b b } f'8
  %2
  \tuplet 6/4 { a,16 b b b b b } \tuplet 6/4 { c b b b b b }
  \tuplet 6/4 { f'16 b, b b b b } \tuplet 3/2 { g'16\4 c, c } c8
}

cryptSoloIINotes = {
  %1
  \tuplet 6/4 { e,16^\markup { \bold "Guitar Solo h" } fs fs fs fs fs } \tuplet 6/4 { g fs fs fs fs fs }
  \tuplet 6/4 { e16 fs fs fs fs fs } \tuplet 3/2 { g fs fs } c'8
  %2
  \tuplet 6/4 { e,16 fs fs fs fs fs } \tuplet 6/4 { g fs fs fs fs fs }
  \tuplet 6/4 { c'16 fs, fs fs fs fs } \tuplet 3/2 { d' g, g } g8
}

cryptSoloIITab = {
  %1
  \tuplet 6/4 { e,16 fs fs fs fs fs } \tuplet 6/4 { g fs fs fs fs fs }
  \tuplet 6/4 { e16 fs fs fs fs fs } \tuplet 3/2 { g fs fs } c'8
  %2
  \tuplet 6/4 { e,16 fs fs fs fs fs } \tuplet 6/4 { g fs fs fs fs fs }
  \tuplet 6/4 { c'16 fs, fs fs fs fs } \tuplet 3/2 { d'\5 g, g } g8
}

cryptBridgeNotes = {
  %1
  b8^\markup { \bold "Interlude/Bridge i" } fs b d c g c d
  %2
  b8 fs b d <f, bf f'>2
  %3
  b8 fs b d c g c d
  %4
  \acciaccatura c8 \glissando d a d e <gs, c gs'>2
}

cryptBridgeTab = {
  %1
  b8 fs b d\5 c g c d\5
  %2
  b8 fs b d\5 <f, bf f'>2
  %3
  b8 fs b d\5 c g c d\5
  %4
  \acciaccatura c8 \glissando d\5 a\6 d\5 e\5 <gs, cs gs'\4>2
}

cryptPreOutroNotes = {
  \repeat unfold 1 {
    %1
    \tuplet 3/2 { e16^\markup { \bold "Break j" } e e } bf'8 \tuplet 3/2 { e,16 e e } a8
    \tuplet 3/2 { e16 e e } bf'16( e, ) \tuplet 3/2 { <a e'>8 <af ef'> <g d'> }
    %1
    \tuplet 3/2 { e16 e e } bf'8 \tuplet 3/2 { e,16 e e } a8
    \tuplet 3/2 { e16 e e } bf'16( e, ) \tuplet 3/2 { <a e'>8 <af ef'> <g d'> }
  }
  \tuplet 3/2 { c8 b c } \tuplet 3/2 { e8 ds e } g,16 fs~ fs4.
}

cryptPreOutroTab = {
  \repeat unfold 2 {
    %1
    \tuplet 3/2 { e16 e e } bf'8\6 \tuplet 3/2 { e,16 e e } a8\6
    \tuplet 3/2 { e16 e e } bf'16\6( e, ) \tuplet 3/2 { <a\6 e'\5>8 <af ef'\5> <g d'\5> }
  }
  \tuplet 3/2 { c8 b c } \tuplet 3/2 { e8 ds e } g,16 fs~ fs4.
}

cryptOutroNotes = {
  \repeat volta 2 {
    %1
    e4^\markup { \bold "Outro k" } c' b16 c b4 a16 b
    %2
    c4 g fs16 g fs4.
  }
}

cryptVerseTab = { \cryptVerseNotes }

cryptIntroTab = { \voiceOne \cryptIntroNotes }

cryptOutroTab = { \cryptOutroNotes }

%%% Put it all together %%%

cryFromTheCryptNotes = \relative c, {
  %%Intro
  \cryptIntroNotes \endFig
  
  %%Verse
  \cryptVerseNotes \endFig
  
  %%Interlude I
  \cryptInterludeINotes \endFig
  
  %%Verse section II
  \cryptVerseIINotes \endFig
  
  %%Pre Solo
  \cryptPreSoloNotes \endFig
  
  %%Guitar Solo
  \cryptSoloINotes \break
  \cryptSoloIINotes \endFig
  
  %Bridge
  \cryptBridgeNotes \endFig
  
  %%Pre Outro
  \cryptPreOutroNotes
  
  %%Outro
  \cryptOutroNotes %\endFig
}

cryFromTheCryptLines = {
  %Intro (4 bars)
  s1*4
  %Verse section I (2 bars)
  \repeat unfold 2 {
    \pm s4 \startTextSpan s8 \tuplet 3/2 { s16 s s \stopTextSpan } s2 
  }
  %Interlude I (2 bars)
  s1*2
  %Verse section 2 (4*4 + 1*2)
  s8 \tuplet 3/2 { s16\startTextSpan s s \stopTextSpan } s8 \tuplet 3/2 { s16 \startTextSpan s s } s2
  s4 s8 \tuplet 3/2 { s16 s s \stopTextSpan } s2 \break
  s8 \tuplet 3/2 { s16\startTextSpan s s \stopTextSpan } s8 \pmBreak \tuplet 3/2 { s16 \startTextSpan s s } s4 s8 \tuplet 3/2 { s16 s s \stopTextSpan } \break
  \pm s4 \startTextSpan s8 \tuplet 3/2 { s16 s s \stopTextSpan } s2
  s2
  %Pre Solo (6 bars)
  \repeat unfold 2 {
    \repeat unfold 3 { \tuplet 3/2 { s16 \startTextSpan s s \stopTextSpan } s8 } s4
  }
  \letRing
  \repeat unfold 15 { \tuplet 3/2 { s8 \startTextSpan s s \stopTextSpan } }
  s4
  %Guitar Solo
  \repeat unfold 4 {
    \pm s2. \startTextSpan \tuplet 3/2 { s16 s s \stopTextSpan } s8
  }
  %Bridge
  \repeat unfold 2 {
    \repeat unfold 3 {
      \letRing s8\startTextSpan s4 s8 \stopTextSpan
    }
    s2
  }
  %Pre-Outro
  \repeat unfold 2 {
    \repeat unfold 3 { \pm \tuplet 3/2 { s16\startTextSpan s s \stopTextSpan } s8
    }
    s4
  }
}
cryFromTheCryptTab = \relative c, {
  %%Intro
  \cryptIntroTab
  
  %%Verse
  \cryptVerseTab
  
  %%Interlude I
  \cryptInterludeITab
  
  %%Verse section II
  \cryptVerseIITab
  
  %%Pre Solo
  \cryptPreSoloTab
  
  %%Guitar Solo
  \cryptSoloITab
  \cryptSoloIITab
  
  %%Bridge
  \cryptBridgeTab
  
  %%Pre-Outro
  \cryptPreOutroTab
  
  %%Outro
  \cryptOutroTab
}

\pointAndClickOff

\score {
  \new StaffGroup <<
    \new Staff \with {
      \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 14))
    } {
      \clef "treble_8"
      \key e \minor
      \numericTimeSignature
      \time 4/4
      \override Glissando.breakable = ##t
      \override Glissando.after-line-breaking = ##t
      \override Staff.BarLine.allow-span-bar = ##f

      \cryFromTheCryptNotes
    }
    \new Dynamics {
      \cryFromTheCryptLines
    }
    \new TabStaff {
      \clef moderntab
      \override Score.TabNoteHead #'(font-name) = "Helvetica LT Std Condensed Bold"
      \override Score.TabNoteHead #'whiteout = ##f
      \override Score.Glissando.breakable = ##t
      \override Score.Glissando.after-line-breaking = ##t
      \new TabVoice { \tabChordRepeats \cryFromTheCryptTab }
    }
  >>
  \layout {
    \context {
      \Score \remove Bar_number_engraver
    }
  }
}