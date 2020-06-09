\version "2.18.2"

\include "english.ly"

#(set-global-staff-size 17.82)

\include "cadence.ily"
\include "grv_spanners.ly"

\header {
  title = "Candlemass Song Sheet"
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

candlemassNotes = \relative c, {
 
}

candlemassLines = {
  
}
candlemassTab = \relative c, {
  
}


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
  \layout {
    \context {
      \Score \remove Bar_number_engraver
    }
  }
}