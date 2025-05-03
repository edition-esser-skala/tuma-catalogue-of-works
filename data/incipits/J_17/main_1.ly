\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 4/4 \tempoMarkup "Allegro"
  d8^\partVi d' d,16 e32 fis g a h cis d8 d, d16 e32 fis g a h cis
  d16. a,32 e'16. a,32 fis'16. a,32 g'16. a,32 a'8 a' a,16 h32 cis d e fis gis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
