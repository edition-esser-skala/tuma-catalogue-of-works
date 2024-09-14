\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 4/4 \autoBeamOff
  e'4.^\partSc e8 c c d e
  a, d d cis d c h4~
  h8 c c c h h h8. h16
  a8 a a4 a8 a b a
}

text = \lyricmode {
  Do -- mi -- ne pro -- ba -- sti
  me
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
