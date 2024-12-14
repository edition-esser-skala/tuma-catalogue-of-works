\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \lydian \time 2/4 \tempoMarkup "Allegro"
  es'4^\partVi es,8. es'16
  es4 es,8. es'16
  es8 es, r4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
