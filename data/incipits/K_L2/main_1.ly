\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \major \time 3/8 \tempoMarkup "[no tempo]"
  h'4 r8
  r d fis
  g16 a h8 h,
  c16 d e8 a,
  h h16 c h c
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
