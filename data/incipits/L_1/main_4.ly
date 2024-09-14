\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 3/4 \tempoMarkup "Largo"
  h''4^\partVi \grace e,8 dis4 fis
  e h r
  c h a
  g8 fis e4 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
