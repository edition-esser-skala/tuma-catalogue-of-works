\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key b \major \time 6/8 \autoBeamOff
  b'8^\partBs a16[ g] f[ es] d8.[ es16] d[ es]
  f8 b, r r4 r8
  r b' d c16[ b a g] f8
  b16[ a] g[ f] e[ g] a8 f, r
}

text = \lyricmode {
  Iam fa -- sces li -- ctor
  fe -- rat
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
