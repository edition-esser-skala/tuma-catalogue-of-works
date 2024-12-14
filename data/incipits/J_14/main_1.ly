\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Allegro"
  \once \override TextScript.X-offset = #-2 r8^\partVi c''-! g-! e-! c-! g'-! e-! c-!
  g-! e'-! c-! g-! e-! g-! e-! c-!
  b4 r r8 c'(\p b a)
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
