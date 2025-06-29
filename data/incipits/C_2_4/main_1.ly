\version "2.24.2"
\include "header.ly"

notes = \relative c' {
  \clef bass
  \key b \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
  r8^\partBc b, d f d16[ b c d] es[ f g a]
  b8 b, r d16[ es] f4.*1/3 \gotoBar "4" \clef soprano f'8^\partSc a b
  a16[ f g a] b[ c d e] f8 f, r4
}

text = \lyricmode {
  Iam sol re -- ce -- _
  _ dit, re -- ce -- Iam sol re --
  ce -- _ _ dit,
}

\score {
  <<
    \new Voice = "incipit" { \notes }
    \new Lyrics \lyricsto "incipit" { \text }
  >>
}
