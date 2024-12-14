\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 4/4 \tempoMarkup "Allegretto"
  h''2^\partVi c
  dis, e8 h e fis
  g e, r4 r8 h'' h h
  cis cis cis h16 cis d8 cis h4~
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
