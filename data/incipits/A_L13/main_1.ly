\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "[no tempo]"
  e'16(^\partVi c) g'8 h,16(\p c) h( c) f(\f c) a'8 h,16(\p c) h( c)
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
