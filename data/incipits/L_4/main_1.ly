\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/4 \tempoMarkup "Largo"
  h''4^\partVi e,8 dis fis4
  e h r
  c h a
  g8 fis e4 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
