\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 2/4 \tempoMarkup "[no tempo]"
  c'8^\partVi c \tuplet 3/2 8 { c16[ d e] d e f }
  e8 e \tuplet 3/2 8 { e16[ f g] f g a }
  g c h a \grace g8 f4\trill
  e8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
