\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef alto
  \key g \minor \time 4/4 \autoBeamOff
  d4^\partAs g, es'8[ d] es[ c]
  d g, g'4. fis16[ e] fis4
  g r r2
}

text = \lyricmode {
  Al -- ma
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
