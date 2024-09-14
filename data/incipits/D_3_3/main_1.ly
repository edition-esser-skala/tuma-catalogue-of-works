\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key f \major \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
  c'2^\partSc b4. b8
  a2 c4 c8 c
  c4 h8[ c] d4 c~
  c h8. h16 c2
}

text = \lyricmode {
  Ma -- gni -- fi --
  cat a -- ni -- ma
  me -- a Do -- _
  _ mi -- num
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
