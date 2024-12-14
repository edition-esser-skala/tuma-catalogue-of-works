\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key h \minor \time 3/2 \tempoMarkup "Larghetto"
  h'2.^\partSc fis4 fis2
  d'2. h4 h2
  c h ais
  h r r
}

text = \lyricmode {
  Ky -- ri -- e,
  Ky -- ri -- e
  e -- lei -- _
  son,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) }
}
