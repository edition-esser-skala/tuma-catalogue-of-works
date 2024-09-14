\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key g \minor \time 3/4 \tempoMarkup "Sarabande"
    \once \override Staff.TimeSignature.style = #'single-digit
  g''4^\partVi d8 c b a
  b4 g r
  b' a8 b c g
  \grace g fis4. d8 g f
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
