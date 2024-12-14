\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \minor \time 3/4 \tempoMarkup "Menuet 2do"
    \once \override Staff.TimeSignature.style = #'single-digit
  d4^\partVi b'2
  b4 g e
  c a'2~
  a4 f d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
