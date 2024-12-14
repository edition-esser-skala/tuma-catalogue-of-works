\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 2/4 \tempoMarkup "La Bachante"
  a''4^\partVi d
  a~ a16 h cis d
  a4~ a16 h cis d
  \grace e,4 d4. a'16 fis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
