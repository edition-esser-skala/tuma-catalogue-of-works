\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key f \major \time 3/4 \tempoMarkup "[no tempo]"
  \tuplet 3/2 4 { f'8^\partVi g a } g4 f
  \tuplet 3/2 4 { e8 f g } c,2
  \tuplet 3/2 4 { a8 b c } b a g f
  \tuplet 3/2 4 { e f g } c,2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
