\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 3/4 \tempoMarkup "Ballo"
    \once \override Staff.TimeSignature.style = #'single-digit
  g'4^\partVi g g
  as8 f g2
  f8 as g f es d
  es d c2
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
