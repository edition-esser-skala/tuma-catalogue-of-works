\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key d \dorian \time 2/4 \tempoMarkup "Andante"
  \tuplet 3/2 8 { a''16^\partVi g f } \grace e8 d4 cis8
  d16 f \grace f8 e4 b'8
  \tuplet 3/2 8 { a16 g f } \grace e8 d4 cis8
  d16 f \grace f8 e4 b'8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
