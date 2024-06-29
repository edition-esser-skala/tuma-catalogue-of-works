\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 4/4 \tempoMarkup "Allegro"
  a'4^\partVi h8. a32 h cis8 a16 cis e8 fis16 gis
  a8 e16 cis d8 h16 gis a4 cis8 d
  e cis16 a gis8 a h gis16 e cis'8 d
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
