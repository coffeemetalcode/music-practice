\version "2.18.2"

\include "english.ly"

%preB = { \acciaccatura }

hwSoloI = \relative c {
  \mark \markup { "Guitar Solo I, x:xx" }
  g16( b ) d g( b ) d g b
}

hwSoloII = \relative c' {
  \mark \markup { "Guitar Solo II, x:xx" }
  \partial 8
  %0.5
  \acciaccatura c8 d8( ~ |
  %1
  d4 c8~  c16 bf ) g bf g( f ) d( c ) bf8~ |
  %2
  bf4.
}


\score {
  \header {
    piece = "Holy Wars...The Punishment Due"
  }
  \new Staff = "elec. guitar" {
    \clef "treble_8"
    \key g \major
    \numericTimeSignature
    \time 4/4
    
    \hwSoloI
    
  }
}

\score {
  \header {
  }
  \new Staff = "elec. guitar" {
    \clef "treble_8"
    \key g \major
    \numericTimeSignature
    \time 4/4
    
    \hwSoloII
    
  }
}