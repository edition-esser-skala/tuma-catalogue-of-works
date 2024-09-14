\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key b \major \time 4/4 \tempoMarkup "Andante"
  \partial 8 f'8^\partVi \tuplet 3/2 8 { d16 c b } b'8 b b \tuplet 3/2 8 { d,16 c b } b'8 b b
  \tuplet 3/2 8 { a16[ g f] g f es f[ es d] es d c } d8 b, r f''
  \tuplet 3/2 8 { d16 c b } b'8 g f e4 r8 e
}

\score {
  <<
    \new Voice = "incipit" { \notes }
  >>
}
