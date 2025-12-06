\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key f \dorian \time 4/4 \tempoMarkup "Allegro"
  f4^\partOrg f, r8 f' as c
  des4 e, r8 es g b
  c4 d,! r8 des f as
  b4 c,8 as' g f4 e8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
