\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef bass
  \key b \major \time 4/4 \autoBeamOff
  r8^\partBc b, d f d16[ b c d] es[ f g a]
  b8 b, r d16[ es] f4. es8 \gotoBar "4"
  \clef soprano r2^\partSc r8 f' a b
  a16[ f g a] b[ c d e] f8 f, r4
}

text = \lyricmode {
  Iam sol re -- ce -- _
  _ dit, re -- ce -- \hy
  Iam sol re --
  ce -- _ _ dit,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
