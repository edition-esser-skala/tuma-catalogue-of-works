\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \minor \time 4/4 \tempoMarkup "Vivace"
  a'4~^\partVi a16. h32 c16 d e8 e h e
  c a \tuplet 3/2 8 { f'16 g a } dis,8 e e, \tuplet 3/2 8 { e'16 f! g! } cis,8
  d d, \tuplet 3/2 8 { d'16 e f! } h,8 c c, b'( a)
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
