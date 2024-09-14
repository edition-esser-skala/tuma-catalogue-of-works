\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 4/4 \tempoMarkup "Allegro"
  c'2^\partVi as'8 f, as f
  b2 g'8 es,  g es
  as2 f'8 d, f d
  g2 es'16 d c h c8 as'
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
