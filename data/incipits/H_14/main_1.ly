\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  e'4.^\partSs d8 cis h16[ a] h4
  a8 h cis4 h8 cis d4
  cis8 dis e2 dis4
}

text = \lyricmode {
  Ky -- ri -- e e -- lei --
  son
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
