\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \dorian \time 4/4 \tempoMarkup "Adagio"
  g'8.^\partVi as16 g16. h32 c16. d32 es8 c, c4
  es'8. f16 es16. d32 es16. f32 g8 es, es4
  g'16(-. g-. g-. g-.) g(-. g-. g-. g-.) as f c as f4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
  \layout { \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16) }
}
