\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \major \time 4/4 \tempoMarkup ""
  d8^\partVi d' d,16 e32 fis g a h cis d8 d, d16 e32 fis g a h cis
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
