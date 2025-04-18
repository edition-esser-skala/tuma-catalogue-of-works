\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \minor \time 4/4 \autoBeamOff \tempoMarkup "Allegretto"
  d4.^\partBc d8 f d f[ g]
  \clef soprano a'4.^\partSc a8 cis a h[ \hA cis]
  d4 r8 cis d[ \hA cis16 d] e8[ d]
}

text = \lyricmode {
  Ky -- ri -- e e -- "lei -"
  Ky -- ri -- e e -- lei --
  son, e -- lei -- \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
