\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \lydian \time 3/4 \tempoMarkup "Lento"
  es'8^\partVi b es,4 c'
  c b r
  b' as8 g f es
  \grace f es4 d r
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
