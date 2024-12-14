\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \minor \time 4/4 \autoBeamOff
  d4.^\partBc d8 f d f[ g]
  \clef soprano a'4.^\partSc a8 cis a h[ cis]
  d4 r8 cis d[ cis16 d] e8[ d]
  cis[ h16 cis] d8 c h[ a16 h] c8[ h]
}

text = \lyricmode {
  Ky -- ri -- e e -- "lei -"
  Ky -- ri -- e e -- lei --
  son, e -- lei -- _
  _ _ _ \hy
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
