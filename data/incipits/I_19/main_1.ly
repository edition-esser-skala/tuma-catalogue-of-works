\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef tenor
  \key a \major \time 4/4 \tempoMarkup "Andante"
  a8^\part "vlc" a~ a16. d32 cis16. h32 a8 a~ a16. d32 cis16. h32
  a16. e'32 fis16. a,32 \grace e'8 d4\trill cis16. e,32 fis16. a,32 \grace e'8 d4\trill
  cis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
