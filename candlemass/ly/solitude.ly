\version "2.18.2"

\include "english.ly"

#(set-global-staff-size 17.82)

\include "cadence.ily"
\include "grv_spanners.ly"
%\include "guitar_bend.ly"
\include "new_bend.ly"

\header {
  title = "Solitude"
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

}

endFig = { \bar "||" \break }

tabChordSlur = {
  \set TabStaff.doubleSlurs = ##t
}

tabNoteSlur = {
  %\revert TabStaff.doubleSlurs
  \set TabStaff.doubleSlurs = ##f
}

solitudeNotes = \relative c, {
  %Intro/Verse  
  e8^\markup { \large \bold "Intro/Verse" } b' e b g d' fs, d' |
  e,8 b' e b g d' fs, a |
  e8 b' e b g d' fs, g' | \break
  e,8 b' e b g d' fs, d' | \bar "||"
  e,8^\markup { \large \bold "End of Verse/Outro" } b' e b g g' fs, d' |
  <e, b' e g b e>1\arpeggio \endFig
  
  %Interlude/Verse
  e4^\markup { \large \bold "Interlude/Verse" } b'8 e, c'4 c |
  e,4 b'8 fs8 f( fs )( f4 ) |
  e4 b'8 e, c'4 c |
  e,4 b'8 fs8 f( fs )( f4 ) | \endFig
  
  %Chorus
  e2^\markup { \large \bold "Chorus" } f | c' b | bf g4 f | %\break
  e2 f | c' b | bf g4 f | \endFig
  
  %Guitar Solo
  e4^\markup { \large \bold "Interlude/Guitar Solo" } e8 e bf'4 bf |
  e,4 e8 e b'! fs bf f |
  e4 e8 e bf'4 bf |
  e,4 e8 e b'! fs bf f | \endFig
}

solitudeLines = {
  %Intro
  \letRing
  \repeat unfold 9 { s8\startTextSpan s4 s8\stopTextSpan }
  s8^\markup { \tiny "rit." } \startTextSpan s4 s8\stopTextSpan
  s1
  
  s1*10
  
  \pm
  \repeat unfold 4 { s4 s8\startTextSpan s\stopTextSpan s2 }
}
solitudeTab = \relative c, {
  e8 b' e b g d' fs, d' | \override TabStaff.Clef.stencil = ##f
  e,8 b' e b g d' fs, a |
  e8 b' e b g d' fs, g' |
  e,8 b' e b g d' fs, d' |
  e,8 b' e b g g' fs, d' |
  <e, b' e g b e>1\arpeggio
  
  %Interlude/Verse
  e4 b'8 e, c'4 c |
  e,4 b'8 fs8 f( fs )( f4 ) |
  e4 b'8 e, c'4 c |
  e,4 b'8 fs8 f( fs )( f4 ) |
  
  %Chorus
  e2 f | c' b | bf g4 f |
  e2 f | c' b | bf g4 f |
  
  %Guitar Solo
  e4 e8 e bf'4 bf |
  e,4 e8 e b'! fs bf f |
  e4 e8 e bf'4 bf |
  e,4 e8 e b'! fs bf f |
}


\score {
  \new StaffGroup <<
    \new Staff \with {
      \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 15.5))
    } {
      \clef "treble_8"
      \key e \minor
      \numericTimeSignature
      \time 4/4
      %\bendOn
      \override Glissando.breakable = ##t
      \override Glissando.after-line-breaking = ##t
      \override Staff.BarLine.allow-span-bar = ##f

      \new Voice { \bendOn \solitudeNotes }
    }
    \new Dynamics {
      \solitudeLines
    }
    \new TabVoice {
      \clef moderntab
      \bendOn
      \override Score.TabNoteHead #'(font-name) = "Helvetica LT Std Condensed Bold"
      \override Score.TabNoteHead #'whiteout = ##f
      \override Score.Glissando.breakable = ##t
      \override Score.Glissando.after-line-breaking = ##t
      \solitudeTab
    }
  >>
  \layout {
    \context {
      \Score \remove Bar_number_engraver
    }
  }
}