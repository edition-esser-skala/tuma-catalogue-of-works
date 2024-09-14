\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef treble
  \key a \major \time 4/4 \tempoMarkup "Andante"
  e'16 fis e fis d e d e cis d cis d h cis h cis \gotoBar "5"
  \clef tenor \autoBeamOff e,16[^\partTs fis] e[ fis] d[ e] d[ e] cis[ d] cis[ d] h[ cis] h[ cis]
  a8 h16[ cis] d8 cis16[ h] \clef soprano e'16[^\partSs fis] e[ fis] d[ e] d[ e]
}

text = \lyricmode {
  \skips 16
  Con -- fi -- te -- bor, con -- fi -- te -- bor
  ti -- bi, ti -- bi, con -- fi -- te -- bor
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
