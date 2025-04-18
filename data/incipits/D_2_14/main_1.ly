\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 4/4 \tempoMarkup "Andante"
  e'16^\partVi fis e fis d e d e cis d cis d h cis h cis \gotoBar "5"
  \clef tenor \autoBeamOff e,16[^\partTs fis e fis] d[ e d e] cis[ d cis d] h[ cis h cis]
  a8 h16 cis d8 cis16 h cis cis cis8 a a
}

text = \lyricmode {
  \skips 16
  Lau -- _ _ _
  _ da Ie -- ru -- sa -- lem, Do -- mi -- num lau -- da
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
