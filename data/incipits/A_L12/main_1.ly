\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key c \major \time 4/4 \tempoMarkup "Andante"
  r8^\partVi g''-! a([ g)] c,( h) a'([ g)]
  b,( a) g'([ f)] a,( g) f'([ e)]
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
