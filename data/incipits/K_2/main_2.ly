\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \twofourtime \key a \minor \time 2/4 \tempoMarkup "Allegro"
  \partial 8 a''8^\partVi a,16 c h a h8 e
  c a r e'
  f( e) e( dis)
  \grace dis e4 r8 e,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
