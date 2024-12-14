\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \lydian \time 6/8 \tempoMarkup "Siziliano · Largo"
  b'8.^\partVi c16 b8 es4 es,8
  es4 d8 f'8. g16 as8
  as,8. b16 as8 f'4 as,8
  as4 g8 g'8. as16 b8
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
