\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key es \lydian \time 3/4 \tempoMarkup "[no tempo]"
  es'4^\partVii d8 c b as
  \set Staff.forceClef = ##t b'4^\partVi as8 g f es
  d4. b8 es4
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
