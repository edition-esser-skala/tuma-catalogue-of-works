\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \minor \time 3/4 \tempoMarkup "Adagio"
  r4^\partVi a'(\p f)
  r d( b')
  r a, <cis' e>
  r d, f'
  r g b,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
