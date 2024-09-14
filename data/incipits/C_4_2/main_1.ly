\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef soprano
  \key d \major \time 4/4 \autoBeamOff
  d'4.^\partSs cis16[ h] a8[ g16 fis] g8 a
  fis d r4 r r8 h'
  cis16[ a e' d] cis[ d h cis] d[ cis] d8 r c
  h cis16[ dis] e8[ d] cis[ d16 e] cis8. cis16
}

text = \lyricmode {
  Be -- _ _ _ ne --
  di -- ctus
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
