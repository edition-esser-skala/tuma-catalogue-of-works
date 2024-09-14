\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Intrada · Vivace"
  g''4~^\partFl g16 c a f g8 c,~ c16 c' a f
  g f e g f e d f e8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
