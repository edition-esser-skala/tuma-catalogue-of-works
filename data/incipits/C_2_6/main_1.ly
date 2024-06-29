\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef bass
    \key b \major \time 4/4 \autoBeamOff \tempoMarkup "[no tempo]"
    r8^\partBs f, b f g f es8. es16
    d8 \clef soprano f'^\partSs b d c16[ a] f8 r c'
    f,16[ g] a8 b8. b16 a4 c8 c
}

text = \lyricmode {
  Te lu -- cis an -- te ter -- mi --
  num Re -- rum cre -- a -- tor, cre --
  a -- tor po -- sci -- mus ut pro
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
