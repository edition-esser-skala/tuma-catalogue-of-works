\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 3/4 \tempoMarkup "Menuet 1mo"
    \once \override Staff.TimeSignature.style = #'single-digit
  a''8^\partVi cis, \grace cis4 d2
  d,8 e fis g a fis
  a' cis, \grace cis4 d2
  d,8 e fis g a fis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
