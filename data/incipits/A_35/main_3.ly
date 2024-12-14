\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key g \major \time 4/4 \autoBeamOff \tempoMarkup "Andante"
  d'8^\partSc d16 d d4 h8 h a4
  h8 d d h a d16 d d8 cis
  d4 d8 d h h cis[ d]
}

text = \lyricmode {
  Cre -- do in u -- num de De --
  o, lu -- men de lu -- mi -- ne, De -- um
  ve -- rum de De -- o "ve -"
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
