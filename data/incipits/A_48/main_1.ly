\version "2.24.2"
\include "header.ly"

notes = \relative c {
  \clef bass
  \key d \major \time 4/4 \autoBeamOff
  d4^\partBc d8 d e fis g4
  fis8 fis e d cis d4 cis8
  \clef soprano a''4.^\partSc a8 h cis d8. d16
  cis8 cis4 h16[ cis] d8 a d cis16 d
}

text = \lyricmode {
  Pa -- trem o -- mni -- po -- ten --
  tem, fa -- cto -- rem coe -- _ _
  Et in u -- num Do -- mi --
  num Je -- sum Chri -- stum, Fi -- li -- um
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
