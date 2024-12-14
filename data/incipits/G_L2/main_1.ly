\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key g \dorian \time 4/4 \tempoMarkup "[no tempo]"
  g'8^\partOrg a b c d c b a
  g g c, f b,[ c]
}

figs = \figuremode {
  r4. <6>8 <_+>2
  r4 <_-> <9>
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new FiguredBass { \figs }
  >>
}
