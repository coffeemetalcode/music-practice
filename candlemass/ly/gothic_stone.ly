\version "2.18.2"

\include "english.ly"

#(set-global-staff-size 17.82)

\include "cadence.ily"
\include "grv_spanners.ly"
\include "custom-settings.ly"

\header {
  title = "The Gothic Stone"
  subtitle = "The Whole Enchilada"
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  top-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.6\in
  indent = 0.25\in
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

%% Music Sections %%%

keysRH = \relative c' {
  \repeat unfold 2 {
    r4 <b e> <c f> <a d>
    <b e> <c f> <e a> <ds gs>~
    q <b e> <c f> <a d>
    <g c> <fs b>2.
  }
  <b e>1 \laissezVibrer
}

keysLH = \relative c, {
  e1~
  e~
  e~
  e2 f8 g f4
  e1~
  e~
  e~
  e2 f8 r \tuplet 3/2 { f8 f f }
  e1 \laissezVibrer
}

figOneNotes = {
  <e b' e>1~
  q~
  q~ \override TabStaff.Clef.stencil = ##f
  q2 f8 g <f c' f>4
  <e b' e>1~
  q~
  q~
  q2 <f c' f>8 r \tuplet 3/2 { f8 f f }
}

endingNotes = {
  <e b' e>1 \laissezVibrer \bar "|."
}

candlemassNotes = \relative c, {
  \repeat volta 2 { \figOneNotes }
  \endingNotes
}

candlemassLines = {
  s1*3
  s2 \pm s8 \startTextSpan s \stopTextSpan s4
  s1*3
  s2. \tuplet 3/2 { s8 \startTextSpan s s \stopTextSpan }  
}

candlemassTab = \relative c, {
  \figOneNotes
  \endingNotes
}


\score {
  <<
    \new PianoStaff \with {
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 16))
      } <<
        \set PianoStaff.instrumentName = "Keys"
      \new Staff \with {
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 14))
      } {
        \key ef \minor
        \numericTimeSignature
        \time 4/4
        \transpose e ef { \keysRH }
      }
      \new Staff {
        \clef bass
        \key ef \minor
        \numericTimeSignature
        \time 4/4
        \transpose e ef { \keysLH }
      }
    >>
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
        \notesetterTies

        \candlemassNotes
      }
      \new Dynamics {
        \candlemassLines
      }
      \new TabStaff {
        \clef moderntab
        \override Score.TabNoteHead #'(font-name) = "Helvetica LT Std Condensed Bold"
        \override Score.TabNoteHead #'whiteout = ##f
        \override Score.Glissando.breakable = ##t
        \override Score.Glissando.after-line-breaking = ##t
        \new TabVoice { \candlemassTab }
      }
    >>
  >>
  \layout {
    \context {
      \Score \remove Bar_number_engraver
    }
  }
}