\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key e \minor \time 4/4 \tempoMarkup "Adagio"
  h'2^\partVi g8 e c'4~
  c8 h16 a h8 cis d d, cis' dis
  e e, dis' e16 fis h,4 r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
