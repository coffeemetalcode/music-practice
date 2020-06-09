\version "2.18.2"

\include "english.ly"

#(set-global-staff-size 17.82)

\include "cadence.ily"
\include "grv_spanners.ly"

\header {
  title = "Well of Souls"
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

%{ terminus = \markup {
  %\tiny \upright "P.M."
  \draw-line #'(-0.5 . 0)
  \hspace #-0.6
  \draw-line #'(0 . 0.625)
  \hspace #-0.71
  \draw-line #'(0 . -0.625)
}

  pm = {
  \textSpannerDown
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #0.25
  \override TextSpanner.bound-details.left.text = \markup { \tiny \upright "P.M. " }
  \override TextSpanner.bound-details.right.padding = #-1.5
  \override TextSpanner.bound-details.right.text = \terminus
}

letRing = {
  \textSpannerDown
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #0.25
  \override TextSpanner.bound-details.left.text = \markup { \tiny "let ring " }
  \override TextSpanner.bound-details.right.padding = #-1.5
  \override TextSpanner.bound-details.right.text = \terminus
}
%}

tabChordSlur = {
  \set TabStaff.doubleSlurs = ##t
}

tabNoteSlur = {
  %\revert TabStaff.doubleSlurs
  \set TabStaff.doubleSlurs = ##f
}

wellOfSoulsNotes = \relative c, {
  %Intro
  e4^\markup { \large \bold "Intro" } b'8 bf~ bf g4 f8 |
  e4 b'!8 c~ c b( ~ b16 a ) f8 |
  e4 b'8 bf~ bf g4 bf8 |
  b!4 bf \acciaccatura bf8 \glissando c4 b16( a ) f8 | \endFig

  %Verse
  \repeat volta 2 {
    b8.^\markup { \large \bold "Verse" } bf16~ bf8 g fs8. g16~ g8 fs |
    b!8. bf16~ bf8 g fs8. g16~ g8 fs |
    b!8. c16~ c8 b e8. ds16~ ds8 fs |
    g8. fs16~ fs8 g fs2 |
    %\glissando \cadenzaOn \hideNotes c \unHideNotes \cadenzaOff
  }
  b,8. bf16~ bf8 g b8. bf16~ bf8 g | \endFig

  %Chorus
  <e b'>2^\markup { \large \bold "Chorus" } fs |
  g4 fs e b' |
  as2 fs |
  as2 as4 b |
  <a! e'>2 f |
  <a e'>2 q4 f | \endFig

  %Interlude/Bridge
  e4^\markup { \large \bold "Interlude/Bridge" } e' f d |
  e4 f a \pitchedTrill gs\startTrillSpan a |
  e,4\stopTrillSpan e' f d |
  \acciaccatura a8 \glissando c4 b <f c'>8 <g d'> <f c'>4 | \endFig

  \key a \minor
  a4 a' bf g |
  a4 bf d \pitchedTrill cs\startTrillSpan d |
  a,4\stopTrillSpan a' bf g |
  \acciaccatura d8 \glissando f4 e <bf f'>8 <c g'> <bf f'>4 | \endFig

  %Interlude
  \key e \minor
  e,4^\markup { \large \bold "Interlude (after guitar solo)" } e' f d |
  \time 3/4
  \acciaccatura a8 \glissando c4 b e,8 g %\bar "||"
  \key a \minor \time 4/4
  \repeat volta 2 {
    <a e'>8 q q q q q q q \glissando | \break
    <bf f'> q \glissando <g d'> q \glissando <a e'> q \glissando <f c'> q \glissando |
    <a e'> q \glissando <d a'> q \glissando <c g'> q \glissando <bf f'> q \glissando |
    <c g'> q \glissando <bf f'> q \glissando <a e'> q q( \glissando <bf f'> ) |
  } \break %\endFig

  %Interlude

  <a e'>4^\markup { \large \bold "Interlude" } q8 q q( \glissando <g d'> ) q \glissando <a e'> |
  <bf f'>4 q8 q q( \glissando <g d'> ) q \glissando <bf f'> |
  <a e'>4 q8 q q( \glissando <g d'> ) q \glissando <a e'> |
  <bf f'>4 q8 q q( \glissando <g d'> ) q \glissando <bf f'> | \endFig

  \key e \minor
  e,8 c' b a c b a b |
  c b a b g a fs g |
  e c' b a c b a b |
  c b a b g a fs g | \break

  %Bridge
  \repeat volta 2 {
    f4^\markup { \large \bold "Bridge" } c' f c |
    fs,! cs' fs! cs |
    g d' g d |
    fs, cs' fs cs | \break
  }
  \repeat volta 2 {
    b fs' b fs |
    c g' c g  |
    cs, gs' cs gs  |
    c,! g'! c! g |
  }
}

wellOfSoulsLines = {
  %Intro
  s1*4
  %Verse
  s1*5
  %Chorus
  s1*6
  %Interlude/Bridge
  s1*8
  %Interlude (after guitar solo)
  s1 s4*3
  \pmBreak
  s8\startTextSpan s8*6 s8\stopTextSpan \break
  \pm
  s8\startTextSpan s8*20 s8\stopTextSpan s4
  %Interlude
  \repeat unfold 4 { s4 s8\startTextSpan s\stopTextSpan s2 }
  s1*4
  %Bridge
  \repeat unfold 8 { \letRing s4\startTextSpan s s s\stopTextSpan }
}
wellOfSoulsTab = \relative c, {
  %Intro
  \voiceOne
  e4 \override TabStaff.Clef.stencil = ##f b'8 bf~ bf g4 f8 |
  e4 b'!8 c~ c b \parenthesize b16( a ) f8 |
  e4 b'8 bf~ bf g4 bf8 |
  b!4 bf \acciaccatura bf8 \glissando c4 b16( a ) f8 |

  %Verse
  \repeat volta 2 {
    b8. bf16~ bf8 g fs8. g16~ g8 fs |
    b!8. bf16~ bf8 g fs8. g16~ g8 fs |
    b!8. c16~ c8 b e8. ds16~ ds8 fs |
    g8.\4 fs16~ fs8 g\4 fs2 |
    %\glissando \cadenzaOn \hideNotes c \unHideNotes \cadenzaOff
  }
  b,8. bf16~ bf8 g b8. bf16~ bf8 g |

  %Chorus
  <e b'>2 fs |
  g4 fs e b' |
  as2 fs |
  as2 as4 b |
  <a! e'>2 f |
  <a e'>2 q4 f |

  %Interlude/Bridge
  e4 e'\5 f\5 d\5 |
  e4\5 f\5 a\4 \pitchedTrill gs\4 \startTrillSpan a\4 |
  e,4\stopTrillSpan e'\5 f\5 d\5 |
  \acciaccatura a8\6 \glissando c4\6 b\6 <f c'>8 <g d'\5> <f c'>4 |

  a4 a'\4 bf\4 g\4 |
  a4\4 bf\4 d\3 \pitchedTrill cs\3 \startTrillSpan d\3 |
  a,4\stopTrillSpan a'\4 bf\4 g\4 |
  \acciaccatura d8\5 \glissando f4\5 e <bf f'>8 <c g'\4> <bf f'>4 |

  %Interlude
  %\key e \minor
  e,4 e'\5 f\5 d\5 |
  %\time 3/4
  \acciaccatura a8\6 \glissando c4\6 b\6 e,8 g %\bar "||"
  \key a \minor \time 4/4
  \repeat volta 2 {
    \repeat unfold 7 { <a\6 e'\5>8 } <a\6 e'\5> \glissando | \break
    <bf\6 f'\5> <bf\6 f'\5>  \glissando <g\6 d'\5> <g\6 d'\5> \glissando
    <a\6 e'\5> <a\6 e'\5> \glissando <f\6 c'\5> <f\6 c'\5> \glissando |
    <a\6 e'\5> <a\6 e'\5> \glissando <d\6 a'\5> <d\6 a'\5> \glissando
    <c\6 g'\5> <c\6 g'\5> \glissando <bf\6 f'\5> <bf\6 f'\5> \glissando |
    <c\6 g'\5> <c\6 g'\5> \glissando <bf\6 f'\5> <bf\6 f'\5> \glissando
    %\set TabVoice.doubleSlurs = ##t
    \tabChordSlur
    <a\6 e'\5> <a\6 e'\5> <a\6 e'\5>( \glissando <bf\6 f'\5> ) |
  } \break %\endFig

  %Interlude

  <a\6 e'\5>4 <a\6 e'\5>8\startTextSpan <a\6 e'\5> \stopTextSpan
  <a\6 e'\5>( \glissando <g\6 d'\5> ) <g\6 d'\5> \glissando <a\6 e'\5> |
  <bf\6 f'\5>4 <bf\6 f'\5>8\startTextSpan <bf\6 f'\5> \stopTextSpan
  <bf\6 f'\5>( \glissando <g\6 d'\5> ) <g\6 d'\5> \glissando <bf\6 f'\5> |
  <a\6 e'\5>4 <a\6 e'\5>8\startTextSpan <a\6 e'\5> \stopTextSpan
  <a\6 e'\5>( \glissando <g\6 d'\5> ) <g\6 d'\5> \glissando <a\6 e'\5> |
  <bf\6 f'\5>4 <bf\6 f'\5>8\startTextSpan <bf\6 f'\5> \stopTextSpan
  <bf\6 f'\5>( \glissando <g\6 d'\5> ) <g\6 d'\5> \glissando <bf\6 f'\5> |

  e,8 c' b a\6 c b a\6 b |
  c b a\6 b g a\6 fs g |
  e c' b a\6 c b a\6 b |
  c b a\6 b g a\6 fs g |

  \repeat volta 2 {
    \letRing
    f4\startTextSpan c' f c\stopTextSpan |
    fs,!\startTextSpan cs' fs! cs\stopTextSpan |
    g\startTextSpan d'\5 g\4 d\5\stopTextSpan |
    fs,\startTextSpan cs' fs cs\stopTextSpan | \break
  }
  b\startTextSpan fs' b\3 fs \stopTextSpan |
  c\startTextSpan g'\4 c\3 g\4 \stopTextSpan |
  cs,\startTextSpan gs'\4 cs\3 gs\4 \stopTextSpan |
  c,!\startTextSpan g'!\4 c!\3 g\4\stopTextSpan |
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

      \wellOfSoulsNotes
    }
    \new Dynamics {
      \wellOfSoulsLines
    }
    \new TabStaff {
      \clef moderntab
      \override Score.TabNoteHead #'(font-name) = "Helvetica LT Std Condensed Bold"
      \override Score.TabNoteHead #'whiteout = ##f
      \override Score.Glissando.breakable = ##t
      \override Score.Glissando.after-line-breaking = ##t
      \new TabVoice { \wellOfSoulsTab }
    }
  >>
  \layout {
    \context {
      \Score \remove Bar_number_engraver
    }
  }
}