\version "2.18.2"

\include "english.ly"

#(set-global-staff-size 17.82)

\include "cadence.ily"
\include "grv_spanners.ly"
\include "custom-settings.ly"

\header {
  title = "Demonʼs Gate"
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
  max-systems-per-page = 5
}

endFig = { \bar "||" \break }

tabChordSlur = {
  \set TabStaff.doubleSlurs = ##t
}

tabNoteSlur = {
  %\revert TabStaff.doubleSlurs
  \set TabStaff.doubleSlurs = ##f
}

muteNotes = {
  \override NoteHead.style = #'cross
}

normNotes = {
  \revert NoteHead.style
}

xTabChordA = \markup {
  %\override #'(font-name . "Helvetica LT Std Condensed Bold")
  "X"
}

demonsGateNotes = \relative c {
  %Intro/Chorus
  <b fs' b ds>2~^\markup { \large \bold "Intro/Chorus" } q4. q8 |
  <c g' c e>2~ q4. q8 |
  <ef bf' ef g>2~ q4. q8 |
  <gf df' gf bf>2~ q4 q8 q |
  <f c' f a>2~ q4. q8 |
  <e b' e gs>2~ q4. q8 |
  <ef bf' ef g!>2~ <ef bf' ef g>4. q8 |
  <d a' d fs>4 fs \glissando f, c' | \endFig  
  % Interlude
 
  e,8^\markup { \large \bold "Interlude" } b'16 b b8 fs f c' b g |
  e8 e'16 e e8 f e a \tuplet 3/2 { gs16( a gs ) } f8 |
  e,8 b'16 b b8 fs f c' b g |
  e8 e'16 e e8 f e a \tuplet 3/2 { gs16( a gs ) } f8 |
  
  e,4 <e' b' e>2. ~ |
  q2 q4. q8 | \endFig 
  %Verse
  <e b' e>2.^\markup { \large \bold "Verse" } q8 <f c' f> |
  <e b' e>2. q8 <f c' f> \glissando |
  <d a' d>2 q4. q8 |
  e,8 f' e d e d e f |
  e,8 f' e d e d e f | \endFig
  %Interlude
  <e, b' e>2^\markup { \large \bold "Interlude (before Guitar Solo)" } <f c' f> |
  <a e' a>2 <e b' e> | \break
  <e b' e>8 \repeat unfold 12 { e32 }  
  <f c' f>8 \repeat unfold 12 { f32 } | \break
  <a e' a>8 \repeat unfold 12 { a32 } 
  <e b' e>8 \repeat unfold 12 { e32 } | \bar "||" \break
  <e b' e>8 \repeat unfold 12 { e32 }  
  <f c' f>8 \repeat unfold 12 { f32 } | \break \time 2/4
  <a e' a>8 \repeat unfold 12 { a32 } | \time 4/4
  b4 b16( c ) b8~ b b16( c ) ds( e ) \glissando fs( g ) |
  fs4 fs16( g ) fs8~ fs \glissando e ds c |
  b4 b16( c ) b8~ b b16( c ) ds( e ) \glissando fs( g ) |
  fs4 fs16( g ) fs8~ fs \glissando e ds c | \break %\endFig 
  %Guitar Solo
  \repeat volta 2 {
    <b fs' b>4^\markup { \large \bold "Guitar Solo (section 1)" } q16 <c g' c>8. <b fs' b>4 q16 <f c' f>8. |
    <b fs'! b>4 q16 <c g' c>8. <e b' e>8 <ds as' ds> r8 <c g' c> | 
    <b fs' b>4 q16 <c g' c>8. <b fs' b>4 q16 <f c' f>8. | \break
  } 
  \alternative {
    {  <b fs'! b>4 q16 <c g' c>8. <e b' e>8 <ds as' ds> r8 <c g' c> |  }
    { <b fs'! b>4 q16 <c g' c>8. <e b' e>8 <ds as' ds>~ q16 <c g' c>8. | }
  }
  
  \repeat volta 2 {
    fs,4^\markup { \large \bold "Guitar Solo (section 2)" } fs16 g8. b8 as~ as16 g8. | \break
  fs4 fs16 g8. b8 as r g |
  fs4 fs16 g8. b8 as~ as16 g8. |
  }
  \alternative {
    { fs4 fs16 g8. b8 as r g | }
    { fs4 fs16 gs r8 r2 | }
  } \endFig
}

demonsGateLines = {
  %Intro/Chorus
  s1*4 \break s1*4
  %Interlude
  s1*3 \break \once \override Score.TextScript.stencil = ##f s1*3
  %Verse
  s1*5
  %Interlude
  s1*2
  \repeat unfold 7 { \pm s8 s32\startTextSpan s32*10 s32\stopTextSpan }
}
demonsGateTab = \relative c {
  %Intro/Chorus
  \voiceOne
  <b fs' b ds>2~ \override TabStaff.Clef.stencil = ##f q4. q8 |
  <c\5 g'\4 c\3 e\2>2~ q4. q8 |
  <ef\5 bf'\4 ef\3 g\2>2~ q4. q8 |
  <gf\5 df'\4 gf\3 bf\2>2~ q4 q8 q |
  <f\5 c'\4 f\3 a\2>2~ q4. q8 |
  <e\5 b'\4 e\3 gs\2>2~ q4. q8 |
  <ef\5 bf'\4 ef\3 g\2>2~ q4. q8 |
  <d\5 a'\4 d\3 fs\2>4 fs\6 \glissando f,4 c' |
  
  % Interlude
  \repeat unfold 2 {
    e,8 b'16 b b8 fs f c' b g |
    e8 e'16\5 e\5 e8\5 f\5 e\5 a\4 \tuplet 3/2 { gs16\4( a\4 gs\4 ) } f8\5 |
  }
  e,4 <e'\5 b'\4 e\3>2. ~ |
  q2 q4. q8 |
  <e\5 b'\4 e\3>2. q8 <f\5 c'\4 f\3> |
  <e\5 b'\4 e\3>2. q8 <f\5 c'\4 f\3> \glissando |
  <d\5 a'\4 d\3>2 q4. q8 |
  e,8 f'\5 e\5 d\5 e\5 d\5 e\5 f\5 |
  e,8 f'\5 e\5 d\5 e\5 d\5 e\5 f\5 |
  %Interlude
  <e, b' e>2 <f c' f> |
  <a e' a>2 <e b' e> | \break
  <e b' e>8 \repeat unfold 12 { e32 }  
  <f c' f>8 \repeat unfold 12 { f32 } | \break
  <a e' a>8 \repeat unfold 12 { a32 } 
  <e b' e>8 \repeat unfold 12 { e32 } | \bar "||" \break
  <e b' e>8 \repeat unfold 12 { e32 }  
  <f c' f>8 \repeat unfold 12 { f32 } | \time 2/4
  <a e' a>8 \repeat unfold 12 { a32 } | \time 4/4
  b4 b16( c ) b8~ b b16( c ) ds( e ) \glissando fs( g\4 ) |
  fs4 fs16( g\4 ) fs8~ fs \glissando e ds c |
  b4 b16( c ) b8~ b b16( c ) ds( e ) \glissando fs( g\4 ) |
  fs4 fs16( g\4 ) fs8~ fs \glissando e ds c |
  %GuitarSolo
  <b fs' b\3>4 q16 <c\5 g'\4 c\3>8. <b fs' b\3>4 q16 <f c' f>8. |
  <b fs' b\3>4 q16 <c g'\4 c\3>8. <e\5 b'\4 e\3>8 <ds as' ds\3> r8 <c g'\4 c\3> |
  <b fs' b\3>4 q16 <c\5 g'\4 c\3>8. <b fs' b\3>4 q16 <f c' f>8. |
  <b fs' b\3>4 q16 <c g'\4 c\3>8. <e\5 b'\4 e\3>8 <ds as' ds\3> r8 <c g'\4 c\3> |
  <b fs' b\3>4 q16 <c g'\4 c\3>8. <e\5 b'\4 e\3>8 <ds as' ds\3>~ q16 <c g'\4 c\3>8. |
  
  fs,4 fs16 g8. b8 as~ as16 g8. |
  fs4 fs16 g8. b8 as r g |
  fs4 fs16 g8. b8 as~ as16 g8. |
  fs4 fs16 g8. b8 as r g |
  fs4 fs16 g r8 r2 |
}


\score {
  \new StaffGroup <<
    \new Staff \with {
      \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 14))
    } {
      \notesetterStems
      \notesetterBeams
      \notesetterTies
      \clef "treble_8"
      \key e \minor
      \numericTimeSignature
      \time 4/4
      \override Score.VoltaBracket.extra-offset = #'(0 . 2.25)
      \override Glissando.breakable = ##t
      \override Glissando.after-line-breaking = ##t
      \override Staff.BarLine.allow-span-bar = ##f

      \demonsGateNotes
    }
    \new Dynamics {
      \demonsGateLines
    }
    \new TabStaff {
      %\tabFullNotation
      \clef moderntab
      \override Score.TabNoteHead #'(font-name) = "Helvetica LT Std Condensed Bold"
      \override Score.TabNoteHead #'whiteout = ##f
      \override Score.Glissando.breakable = ##t
      \override Score.Glissando.after-line-breaking = ##t
      \chordRepeats #'(string-number-event fingering-event)
      \new TabVoice { \demonsGateTab }
    }
  >>
  \layout {
    \context {
      \Score \remove Bar_number_engraver
    }
    \context {
      \TabStaff
      \consists "Text_engraver"
      \consists "Staff_collecting_engraver"
    }
  }
}