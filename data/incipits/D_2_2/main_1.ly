\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key a \minor \time 4/4 \autoBeamOff
  e'4.^\partSs f8 gis, a d c16[ h]
  c8. h16 a8 c16 c h8. h16 e8 d
  c16[ h] c4 h16[ c] d8[ c] h4
  a r r2
}

text = \lyricmode {
  Con -- fi -- te -- bor
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
